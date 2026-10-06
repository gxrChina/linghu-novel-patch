# 灵狐小说 夜间模式修复补丁 (linghu_nightfix_v1)

> **版本号说明(2026-10-05 重划)**:自 1.0.0 起按 1.x.y 走——小更新加最后一位,
> 功能更新加中间位。历史版本对应:1.0.0=原 v8.7(首个发布),1.0.1=原 v9.1,
> 1.1.0=原 v9.2,1.2.0=原 v9.3,1.3.0=原 v9.4。旧 tag 引用已删除,资产未动。

原包:`cn.nps.app.lzshow` (Legado 换皮版, versionName 4.0.7 / versionCode 100000002)
原包 SHA-256: `bc52203fde61fb4568f8e33b6959f29e9217e6d63a0f738567962e26dc2c7685` (见 `backup/SHA256SUMS.txt`)

## 修复的 Bug

1. **夜间模式后台切换白屏**:开启黑夜模式 → 应用退到后台 → 返回后部分 UI 变白、文字看不清。
2. **开屏页不跟随夜间模式**:夜间模式下开屏页仍是白色背景。

## 根因

### Bug 1(结构性根因)
该应用的主题系统是"重建驱动"的双色源架构:
- 主题资源色(带 `values-night` 变体)随资源配置自动翻转;
- ThemeStore(SharedPreferences)命令式设置的色值只在界面**重建**时刷新。

Manifest 里**只有 MainActivity** 声明了 `configChanges` 含 `uiMode`(不重建、自己处理),
它依赖 `App.onConfigurationChanged → LiveEventBus(RECREATE)` 这条异步广播触发 `recreate()`。
后台切换深浅色时,该链路存在多个竞态点(LiveEventBus `preventNextEvent` 吞事件、
`ActivityThread.handleRelaunchActivityLocally` 对非 [ON_START..ON_STOP] 状态静默丢弃重建、
appcompat 对处理 uiMode 的 Activity 只翻转资源不重建),任一环节失败即出现
"ThemeStore 旧浅色底 + 资源已翻转为夜间色(白字)"的混合状态 = 白底白字。

### Bug 2(直接根因)
换皮版给 `WelcomeActivity` 加了 `upThemeDark()`:**无条件**读取浅色主题色源
(`cPrimary/cAccent/cBackground`)并强制写入 ThemeStore 运行时存储 —— 夜间模式也不例外,
导致开屏页永远是白的,并且污染运行时主题存储(冷启动后首个主界面会误用浅色)。

## 补丁内容(smali 级修改,均在 classes8.dex)

### 补丁 A —— `io/legado/app/base/BaseActivity`(彻底方案)
- 新增字段 `private int themeAtCreate = -1`(注释标明用途);
- 新增 `onPostCreate(Bundle)`:记录创建时的主题状态 `ThemeConfig.getTheme().ordinal()`;
- 新增 `onResume()`:若已记录且与当前主题状态不一致 → `recreate()`。
  兜底逻辑:onResume 时若尚未记录(值 == -1)则立即记录,避免首帧误判。

效果:任何界面(含 MainActivity)若在后台错过了重建,返回前台时必然被检测并重建;
正常重建的界面 onPostCreate 记录新状态,不会产生二次重建循环。

### 补丁 B —— `io/legado/app/ui/welcome/WelcomeActivity`
- `upThemeDark()` 方法体(4316 字符)替换为:
  `ThemeConfig.INSTANCE.applyTheme(this)`(508 字符)。

效果:开屏页背景跟随当前主题(夜间=深色,A屏黑主题=纯黑),且不再把浅色值
污染进 ThemeStore 运行时存储,顺带修复"夜间模式下冷启动后主界面误用浅色"的隐患。

## 构建与签名

- 工具:apktool 2.10.0 + build-tools 34 (zipalign/apksigner),Temurin JRE 17
- 密钥:`keystore/linghu-patch.jks`,alias `linghu`,密码见 `keystore/README.txt`
- 签名:v1 + v2 + v3 全方案
- 产物:`release/linghu_nightfix_v1.apk`

## 安装须知(重要)

签名与原包不同,**无法覆盖安装**,必须先卸载原应用:
1. 先在原应用内做备份(我的 → 备份与恢复 → 导出到本地/WebDav);
2. 卸载原应用;
3. 安装 `linghu_nightfix_v1.apk`;
4. 在新应用内恢复备份。

## 复现构建

见 `rebuild.sh`(解码 → 打补丁 → 构建 → 对齐 → 签名 的完整命令序列)。

---

## v2 追加修复(2026-09-29)

### 现象
v1 修复后,夜间模式下冷启动仍会先闪一下白色(系统渲染的开屏),随后才是深色的开屏页。

### 根因
Android 12+ 的**系统开屏窗**(icon + 背景色)在**应用进程启动之前**由系统渲染,
背景色取自启动主题的 `windowSplashScreenBackground`(缺省回退 `windowBackground`),
由系统按**系统**日夜模式解析资源 —— 不受 app 内夜间开关控制。v1 只修了 app 自己画的
开屏页,因此变成"白闪 → 深色开屏"。

### 修复(res 资源级修改)
启动主题 `AppTheme.FullScreen`(WelcomeActivity 的 manifest 主题):
- `values/styles.xml`:`android:windowBackground = @color/background`
- `values-v31/styles.xml`:同上,另加
  `android:windowSplashScreenBackground = @color/background`
  `android:windowSplashScreenIconBackgroundColor = @color/background`

`@color/background` 自带日夜变体(浅色 md_grey_50 / 夜间 md_grey_900),
系统开屏窗在系统深色模式下即为深色 #303030。

### 平台限制说明
系统开屏窗只能跟随**系统**的深浅色设置。若 app 内夜间开关开启而系统处于浅色模式,
系统开屏窗仍会是白色 —— 这是 Android 平台行为(开屏窗先于应用代码渲染,系统无法
得知 app 内的夜间偏好)。规避方式:把应用内深色模式设为"跟随系统"。

### 产物
`release/linghu_nightfix_v2.apk`(包含 v1 全部修复;与 v1 同签名同版本号,
可直接覆盖安装,无需卸载)。

---

## v3 追加修复:书源自动导入(2026-09-29)

### 现象
安装 v1(需卸载原包)后书架书源全部丢失。

### 根因
换皮版在 `MainActivity` 里有首次启动自动导入内置书源(`assets/bookSource.json`,
共 703 个)的逻辑,但被两道门锁死:
1. `AppConfig.importBookSourceV != "v10000000"`(一次性标记,正常);
2. `CfgSyncUtils.getLoadSource() == "1"`(远程配置开关,默认空,且拉取配置的
   `App.onCreate` 分支同样被签名校验拦截);
3. `SignatureUtil.getSHA1(ctx) == E6D817...C16`(**原换皮包签名 SHA-1**,
   重打包后必然不匹配)。
任一门不过,自动导入静默跳过 → 重打包版首启不再导入书源。

### 修复(smali 修改,MainActivity)
- `loadBookSource()V`:移除远程开关与签名校验两道门,仅保留一次性标记判断;
- `onActivityCreated`:原来的"umengKey 为空则先同步远程配置(网络失败时
  回调不触发,导入永远不执行)→ 回调里再导入"分支,改为无条件直接调用
  `loadBookSource()`(同时不再向换皮服务器回连拉取配置)。

### 效果
- 安装 v3(可覆盖 v1/v2,数据保留)后,首次进入主界面自动导入 703 个内置书源;
- 导入成功后写入一次性标记,不会重复导入。

### 自定义书源
用户自行导入过、且不在内置 703 个之中的书源,无法从 APK 恢复 —— 卸载时应用数据
已被系统清除。可尝试 recovery/README.txt 中列出的设备残留路径
(备份目录/自定义目录/WebDav/原始导入文件)。

### 产物
`release/linghu_nightfix_v3.apk`(含 v1+v2 全部修复)。

---

## v4 精简版:去广告 + 去追书库(2026-09-29)

### 广告现状调查结论
- 全 app 仅有一个广告展示点:WelcomeActivity 开屏广告(`AdManager.showOpenAD`);
  且其触发条件含原签名 SHA-1 校验,在重打包版中本来就永不触发;
- 热启动广告(`LifecycleHelp` 回前台拉起 WelcomeActivity 显示广告)同被签名门锁死;
- 阅读页无广告容器(此前清单中 activity_book_read.xml 的说法有误,已更正);
- 广告 SDK 本体的初始化(App.onCreate/AdManager.init)也被签名门拦截,处于休眠状态。

### v4 修改(3 处 smali)
1. `WelcomeActivity$handlePermissionsAndAd$1.invoke`:
   `if-eqz $shouldRequestExtraPermission` → `goto :cond_0`,
   权限回调后永远直接 `startMainActivity()`,开屏广告分支成为死代码;
2. `MainActivity$TabFragmentPageAdapter`:
   - `getItem` 的发现 Tab 由 `new RankListParentFragment()` 恢复为
     `new ExploreFragment(position)`(Legado 原版书源驱动的发现页);
   - `getItemPosition` 的类型判断同步改为 `ExploreFragment`;
   - 追书库/排行榜(追书神器 + UC/夸克小说 API)整条 UI 链下线;
3. `AdManager.needShowAdWhenForceground`:恒返回 `false`,热启动广告彻底禁用。

### 说明
- 广告 SDK 类仍保留在包内但处于休眠(不初始化、不展示),体积优化留待启动速度阶段;
- 划词菜单的 `menu_browser` 用到的 `INTENT_QUERY` 只是标准 Web 搜索 "query" extra
  常量,与追书库无关,未改动。

### 产物
`release/linghu_nightfix_v4_lite.apk`(含 v1~v3 全部修复,同签名可覆盖安装)。

---

## v5 启动速度优化(2026-09-29)

### 开销审查结论
- `SignatureUtil.getSHA1` 走 PackageManager 签名信息(廉价 IPC),非整包哈希,排除嫌疑;
- `App.onCreate` 的 Cronet 预下载/DefaultData/异步清理块均在后台协程,非主线程开销;
- 真正的用户可感知开销:
  1. 开屏页权限申请往返(含主线程 DB 查询阅读总时长 + AdManager 链) + 固定 600ms 延时;
  2. `LifecycleHelp.onActivityStarted` 每次冷/热启动回前台都在主线程跑
     阅读时长 DB 查询 + 签名校验 + AdManager 链(判定热启动广告资格,结果恒否)。

### v5 修改(2 处 smali 重写)
1. `WelcomeActivity.handlePermissionsAndAd`:
   移除权限申请/DB 查询/广告资格判定,直接 `postDelayed(300ms) → startMainActivity()`
   (600ms → 300ms,且不再有权限对话框打断);
2. `LifecycleHelp.onActivityStarted`:
   移除广告资格判定块(每次回前台的 DB 查询 + 签名校验 + AdManager 链),
   仅保留 actcount/lastopentime 生命周期记账。

### 预期收益
冷启动可感知路径缩短约 0.5~1 秒(权限往返 + 300ms 免除);
每次回前台省去一次主线程 DB 查询与签名校验。
测量方式:`adb shell am start -W cn.nps.app.lzshow/io.legado.app.ui.welcome.WelcomeActivity`
对比 TotalTime(v4 vs v5,冷启动取 3 次平均)。

### SDK 裁剪可行性审计(供后续包体瘦身参考)
- 广告 SDK 类约 18,000 个(字节 7158/快手 5345/华为 2021/Sigmob 1305/Beizi 1137/
  Octopus 648/百度 359/广点通 175),是 app 自身代码(5367)的 3.4 倍;
- io.legado 对 SDK 的引用全部集中在 `io/legado/app/ad/*` 聚合层,
  v4/v5 之后该层的运行时调用点已全部清空 → 裁剪可行;
- 注意:裁剪的主要收益是包体/安装/内存,对启动速度帮助有限(启动路径不加载 SDK 类),
  且需同步清理 Manifest 组件、assets/bdxadsdk.jar、广告 .so 与残留引用,属独立工程。

### 产物
`release/linghu_nightfix_v5.apk`(含 v1~v4 全部修复,同签名可覆盖安装)。

---

## v6 包体瘦身:广告 SDK 全量剥离(2026-09-29)

### 删除内容
- **26,464 个 SDK smali 类**:穿山甲(com/bytedance,com/ss,com/bykv,com/volcengine,
  com/byted)、快手(com/kwad,com/kuaishou,com/kwai,com/yxcorp)、华为广告
  (com/huawei,com/alliance,com/inno)、Sigmob、Beizi、Octopus、百度、广点通(com/qq)、
  京东(com/jd)、美数、有道(com/yd)、趣盟(com/qumeng)、AdScope(xyz/adscope)、
  聚合层(io/legado/app/ad);
- **Manifest**:172+ 个 SDK 组件(activity/service/receiver/provider)、
  华为自定义权限、ZEUS 插件 meta-data、抖音 queries 声明
  (因 androguard 解码格式与 aapt2 校验冲突,Manifest 从原始解码用 XML 级解析重建,
  并把数字 launchMode/configChanges/windowSoftInputMode 与 @7F 十六进制资源引用
  全部转为 aapt2 可接受形式);
- **assets/bdxadsdk.jar**;**广告 .so** 18 个(ttmplayer/tob/ugeno/panglearmor 等),
  经 loadLibrary 审计保留 adblockplus-jni(正文净化)、renderscript-toolkit(模糊)、
  archive-jni、image_processing_util_jni(扫码);
- 恢复 2 个被注入到共享库的 R8 API-outline 桥接类
  (com/bytedance/j/xt/tl/j$$…、com/kwad/sdk/o/g$$…),并外科手术式仅保留
  保留代码实际引用的方法重载(bytedance 52/100,kwad 57/100)。

### 残留引用审计
全量扫描剩余 ~33,000 个 smali,对 26 个已删前缀的引用为 **0**;
友盟统计类(com/umeng,395 类)暂保留(死代码,不初始化)。

### 成果
- APK:125MB → **102MB(-18%,-23MB)**
- dex:68MB → **39.6MB(-42%)**;10 个 dex(其中 classes10 已空置)
- 组件:208 → **74**(activity 54 / service 12 / receiver 2 / provider 6)

### ⚠️ 本版为改动最大的版本,请重点回归测试
启动、书架、阅读翻页、书源搜索/换源、缓存下载、听书、Web 服务、备份恢复、扫码导入。

### v6.1 热修(2026-09-29 晚)
v6 首次安装后应用无法启动。根因:去广告删除 `WelcomeActivity$handlePermissionsAndAd$1`
聚合类时,漏掉了仍存活的开屏页延时回调链
(`ExternalSyntheticLambda1.run() → $1.$r8$lambda$yHySey… → startMainActivity`),
300ms 定时器触发时抛 NoClassDefFoundError,应用在开屏页即崩溃。
修复:
1. `ExternalSyntheticLambda1.run()` 改为直调已存在的 R8 access 桥
   `WelcomeActivity.access$startMainActivity(...)`;
2. 删除 `App` 中指向已删方法 `onCreate$lambda$1` 的悬空 R8 桥接方法。
产物:`release/linghu_nightfix_v6.1_slim.apk`(覆盖 v6 安装即可)。

---

## v6.3 诊断版(2026-09-29)
v6.1 仍无法启动。dex 级全量引用审计(v5/v6.1 对照)证明删除未引入任何新悬空引用,
静态排查穷尽。本版为诊断增强:
1. versionCode 100000002→100000003(排除 MagicOS 拒绝同版本号覆盖安装的可能——
   v6/v6.1 同版本号,安装器可能静默拒绝导致"一直在跑旧的崩溃版");
2. CrashHandler 注册提前到 attachBaseContext(此前在 onCreate 中段,之前的崩溃若
   发生在注册前则无任何提示);
3. shouldAbsorb 恒 false(原逻辑会吞掉特定异常并 Looper.loop 卡死)。
预期:安装后启动,若仍有崩溃,屏幕会出现数秒的堆栈 Toast——截图发我即可精准定位。
产物:release/linghu_nightfix_v6.3_diag.apk

---

## v6 线终止,回滚至 v5 基线重建 v7(2026-09-29)

v6(SDK 剥离)在荣耀 Magic6 上启动即崩,历经 v6.1(修复回调链)/v6.3(诊断版)未能定位
(注:该机型上 v6 与 v6.1 versionCode 相同,存在安装器拒绝同版本号覆盖、
实际仍运行 v6 的可能)。按用户决定终止 v6/启动优化线,从原包全新解码,
应用 v1~v5 全部已归档补丁重建:

- v1 主题看门狗(BaseActivity:夜间模式后台切换白屏修复)
- v2 开屏页跟随夜间模式 + 系统开屏窗口深色
- v3 书源自动导入(703 个内置书源)
- v4 去广告 + 发现页恢复原版
- v5 启动提速(免权限往返 + 300ms 直跳 + 回前台瘦身)

versionCode 100000004(高于 v6.3 的 100000003),**可直接覆盖安装,
书源/书架数据保留**。应用状态 = v5(含 v4 去广告),包体 125MB。
产物:release/linghu_nightfix_v7_stable.apk
(损坏的 v6 系列安装包已从 release/ 清除,避免误装。)

### v6 崩溃根因终于定位(2026-09-30,通过 MuMu 模拟器实测)
借助模拟器实测 v6.3 重建包,拿到完整崩溃堆栈:
`VerifyError: App.onCreate() failed to verify: [0x74] register v3 has type
Undefined but expected Boolean`。
根因:删除签名门控块时,误删了块内的 `const/4 v3, 0x0`,而 v3 在块外仍被
`LiveEventBus.config()...autoClear(v3)` 读取 → App 类未通过 ART 校验 →
进程启动即崩(先于一切应用代码)。此为寄存器级错误,文本审计无法发现,
只有真机/模拟器运行才能暴露 —— 后续所有构建都必须先过模拟器启动测试。
v7(v5 基线)不含此错误,实测正常。模拟器上的 v6.3 已被
v7(versionCode 100000006)覆盖替换。

---

## v8:删除 AdblockPlus 引擎 + 规则去广告定位(2026-09-30)

### 需求与结论
用户要求删掉 AdblockPlus 引擎、改用规则去广告(错字替换/广告文本删除)。
经查:**规则去广告本来就是 app 原生功能("替换净化",正则遍历正文,
支持替换与删除)**,与 AdblockPlus(只服务于 RSS 网页 WebView 去广告,
内置 RSS 源为 0)互不相干。故 v8 = 删引擎 + 保留完整规则系统 + 附示例规则。

### 删除内容
- App.onCreate 的 AdblockHelper 初始化块(无条件 init + preloadSubscriptions 联网)
- onCreate$lambda$0 / R8 桥 / ExternalSyntheticLambda4(引擎监听链)
- org/adblockplus 类树(180 类)
- libadblockplus-jni.so × 4 架构(59.3MB)
- VisibleWebView 改继承 android.webkit.WebView(RSS 网页仍可看,只是不去广告)

### 过程中两次 VerifyError 的教训(模拟器实测抓出)
1. v6 线:删签名门控块误删 `const/4 v3, 0x0`,而 autoClear(v3) 在块外读取;
2. v8 首版:删 adblock 块误删 `const/4 v1, 0x1`,而 lifecycleObserverAlwaysActive(v1)
   在块外读取——R8 编译的寄存器跨块复用,删任何 smali 块前必须先审计
   "块内写入的寄存器是否被块外读取"。
两次均在模拟器实测中当场复现并修复(v8.2 通过)。

### 成果
- APK:125MB(v7)→ **62.8MB(v8,-50%)**
- 启动 TotalTime:474ms(v7)→ **273ms(v8)**(省去 adblock 引擎初始化与联网预载)
- 替换净化页实测正常打开;示例规则:recovery/替换净化示例规则.json(3 条,含
  错字修正伱→你、广告行删除正则,导入路径:替换净化 → 右上菜单 → 本地导入)
- 产物:release/linghu_nightfix_v8.apk(versionCode 100000007)

### v8.1 追加:新建替换页新手友好化(2026-09-30)
原"新建替换"表单只有裸标签,新手不知道各字段该填什么。改动(纯资源,低风险):
1. 新增 9 条本页专用的中文提示字符串(nf_* 前缀,不污染全局共享字符串);
2. 每个输入框 hint 改为带"例如"的填写指引(如:查找内容——"要修改或删除的
   文字,例如:伱";替换为——"改成什么?例如:你(留空 = 直接删除)");
3. 正则选项标注"(高级)",原有的 ? 帮助仍在;
4. 表单顶部新增"三步用法"引导文字(①查找内容 ②替换为/留空即删 ③保存生效)。
全部通过 MuMu 模拟器实测:导航到新建替换页截图确认渲染正常,ReplaceRuleActivity
与 ReplaceEditActivity 均无崩溃。
归档:patches/res/values/strings.xml、patches/res/layout/activity_replace_edit.xml
产物:release/linghu_nightfix_v8.1.apk(versionCode 100000008;v8 无 UI 版已删除)

### v8.2 追加:首轮使用引导覆盖其余空白页(2026-09-30)
1. 三个规则列表页(替换净化/TXT 目录规则/字典规则)顶部加引导横幅:
   说明"新建/导入"入口在右上角 ⋮ 菜单、长按可编辑(原页面空白无任何提示);
2. 发现页空态文案改进(原来只说"当前没有发现源!",现补充解决路径);
3. 备份页两处文案改进(选择备份路径/备份说明,讲清 SAF 目录与 WebDav 关系);
4. 中文文案同步更新 values-zh / values-zh-rCN(回退)/ values-zh-rTW。
全部为资源层修改。模拟器实测:列表页横幅渲染正常、零崩溃。
产物:release/linghu_nightfix_v8.2.apk(versionCode 100000009,最终推荐版)

---

## v8.3:换皮死代码 + 图标别名清理(2026-09-30)

### 删除内容(基于 v8.2 基线)
1. **App 签名门控块**(getSHA1→AdManager→syncCfg):删除时保留块内写出的
   `const/4 v3, 0x0`(块外 autoClear(v3) 读取——v6 的 VerifyError 教训已吸收);
2. onCreate$lambda$1(友盟初始化)+ 其 R8 桥 + ExternalSyntheticLambda5;
3. **io/legado/app/ad 聚合层**(42 类,行为已在 v4 中禁用,引用点已随 1 移除);
4. **com/umeng 统计树**(395 类;调用点已随 1/2 移除);
5. **6 个桌面图标别名**(Launcher1~6:Manifest 条目 + 类文件),
   LauncherIconHelp 改为空操作桩(保留 API,主题设置页/备份恢复调用不崩);
6. WelcomeActivity 三个死回调类、MainActivity 死方法 onActivityCreated$lambda$1。

### 保留(仍在引用,删了会崩)
CfgSyncUtils 类(ReadBookActivity/MainActivity 残留引用,无网络行为)、
XUpdate 库(更新框架,检查入口已死)、WelcomeActivity 主题相关。

### 实测(MuMu Android 15)
启动 ok、TotalTime 403ms、到达主界面、零 FATAL、友盟包清零。
产物:release/linghu_nightfix_v8.3.apk(versionCode 100000010)

### v8.5:发现/排行榜 Tab 删除(2026-09-30)
用户发现中间 Tab 的排行榜在 v4 已随追书库移除,而原版发现页因内置 703 书源
均无 exploreUrl(换皮版制作时已剥除,assets 与导入逻辑双重确认)而永远为空。
经用户决定:**直接删除该 Tab**。
实现:AppConfig.getShowDiscovery() 恒 false(复用 app 自带的发现页隐藏机制),
底部导航只剩「书架」「我的」;书架空态文案同步去掉"从发现里添加"的过时指引。
排行榜/追书库类仍保留在包内(死代码),如需恢复改回 getItem 映射即可。
产物:release/linghu_nightfix_v8.5.apk(versionCode 100000011,最终推荐版;
模拟器实测:270ms 启动、双 Tab 底部导航、零崩溃)

### v8.6:排行榜功能恢复(2026-09-30)
应用户要求恢复中间 Tab 的排行榜:AppConfig.getShowDiscovery() 恢复为
读偏好(默认开启);TabFragmentPageAdapter 的发现 Tab 映射在 v8.4 准备时
已指回 RankListParentFragment,本版未再改动。
实测(MuMu Android 15):启动 465ms、排行榜页正常渲染
(男生/女生分类 + 热搜榜/好评榜/完结榜/飙升榜/新书榜)、零崩溃。
注意:榜单内容依赖第三方接口(quark.sm.cn 夸克小说),实测当前未返回数据——
内容存亡取决于该外部接口,非 app 代码问题。
产物:release/linghu_nightfix_v8.6.apk(versionCode 100000012)

### v8.7:排行榜数据修复(2026-10-01)
用户实测:v8.6 排行榜页面恢复但内容为空。
诊断:app 用 AnalyzeRule 在接口响应里按 `$..novel_item[*]` 提取书单;
接口改版后,`cate=全部`(app 写死的参数)只返回分类框架、不返回书籍
(novelrank_new=null);**指定真实分类(如玄幻)时 novel_item 正常返回**。
进一步探测:**完全去掉 cate 参数时,接口返回完整榜单**(17 本,
如《凡人修仙传》《第一序列》《盗墓笔记》)。
修复:删除 getBooksByCats 构造 URL 中的 `&cate=%E5%85%A8%E9%83%A8` 段
(一行 const-string 修改)。
实测:热搜榜显示真实书单(封面/评分/状态/标签),零崩溃。
注意:榜单数据仍依赖夸克第三方接口的存续。
产物:release/linghu_nightfix_v8.7.apk(versionCode 100000013,最终版)

### v8.8:排行榜 Tab 改造为分类 Tab(2026-10-01,用户选方案 3)
接口已废弃按榜单区分的数据(rank 参数失效),按用户选择把 5 个重复的榜单 Tab
改造为**分类 Tab**:
1. TabFragmentPageAdapter 重写:getCategories() 按性别返回分类数组
   (男频 13 类:玄幻/武侠/仙侠/奇幻/科幻/都市/历史/军事/游戏/体育/灵异悬疑/
   轻小说/同人;女频 6 类:现言/古言/幻言/纯爱/同人/校园),
   getCount/getItem/getPageTitle 全部基于该数组;
2. RankBookListFragment.getBooksByCats:URL 改为
   `cate=` + URLEncoder.encode(分类名) + `&rank=rank_hot`
   (分类名中文,需 URL 编码;rank 参数接口已忽略,固定传 rank_hot);
3. 男生/女生顶部分别出各自的分类 Tab,每个分类返回真实书单。

实测(MuMu Android 15):男频玄幻/科幻书单正常且互不相同、女频现言分类正常、
零崩溃。产物:release/linghu_nightfix_v8.8.apk(versionCode 100000014,最终版)

### v9.0:分类 Tab 手机端挤压修复(2026-10-01)
用户真机反馈:手机尺寸下 13 个分类 Tab 挤成一条细缝、文字裁切不可读。
根因(反汇编成品包 + 读打包的 Material 库源码确认):**这套 app 打包的
Material 库里 TabLayout 的模式常量与惯例相反——MODE_SCROLLABLE=0、
MODE_FIXED=1**。换皮作者(与上游 legado)写的 setTabMode(1) 本意是滚动模式,
在这套库里实际 = FIXED → 13 个 Tab 被强塞满屏宽。
修复:setTabMode(1) → setTabMode(0)(此库的滚动模式),配合 gravity CENTER:
Tab 按内容宽度排列,超出部分左右滑动查看(实测截图:手机竖屏下 5 个分类
清晰可读,其余滑动可达)。
附带修复:Tab 条嵌在性别 ViewPager 内,横滑手势会被父级拦截——新增
TabStripTouchKeeper(OnTouchListener)在触摸时请求父级不拦截,
Tab 条自身可左右滑动。
产物:release/linghu_nightfix_v9.0.apk(versionCode 100000016,最终版)

### v9.1(资产原地替换):书架内置《灵狐使用指南》(2026-10-02)
在软件里直接放一篇功能说明,让第一次用的人不用到处问:
- 新增 GuideBookHelp:首次启动把 `assets/guide/linghu_guide.txt` 拷入
  `filesDir/localBook/`,按 `origin=loc_book`、`type=text|local` 构造 Book
  插入 books 表;挂在 `MainActivity.loadBookSource()` 开头,偏好键
  `guideBookV` 保证只导一次(删了不会复活,导入失败下次启动重试);
- 文档内容为人工写就的功能说明(书架/找书/阅读页/替换净化/书源/备份/
  改动清单),章节标题按"第X章"书写,匹配默认 TXT 分章规则出目录;
- 实测(MuMu Android 15):全新安装首启即出现在书架,9 章目录正确,
  正文与夜间模式正常,二次启动不重复导入;
- v9.1 Release 的 APK 资产原地替换(文件名不变,versionCode 仍
  100000017):老用户覆盖安装后,下次启动也会补上这本指南。

### v9.2:应用内更新弹窗 + 指南 v2(2026-10-03)
连到本仓库的 GitHub Releases,进 app 后台查一次最新版(书源加载入口处,旧
厂商 XUpdate 链路废弃:原 vendor update URL 分支改为无条件跳过):
- 有新版本(tag 与内置 CURRENT_TAG 不一致)→ 延迟 2 秒弹窗:标题"发现新版本
  vX.Y" + 右上角 ×,正文为 release 说明,底部三个按钮:更新 / 手动更新 / 跳过;
- 更新 = 自建 HTTP 线程下载 assets 里第一个 .apk(手动跟随重定向,每跳一次
  都过 host 白名单),存 external-files/Download,经 androidx FileProvider 转
  content:// 后 ACTION_VIEW 唤起系统安装器;
- 手动更新 = 跳浏览器 releases/latest;跳过 / × = 关闭弹窗;
- host 白名单:仅 api.github.com / github.com / objects.githubusercontent.com /
  release-assets.githubusercontent.com,scheme 限 http/https,其余一律拒绝
  (localhost/环回/私有/保留地址自然全挡在外面);
- 网络失败静默跳过(daemon 线程,不吵用户)。

指南同步升到 v2(内容加了"编辑内容"功能介绍——阅读菜单顶栏 ⋮ → 编辑内容,
改当前章正文;以及更新弹窗说明):GuideBookHelp 的 guideBookV 标志 v1→v2,
老用户升级后文件覆盖、章节缓存清空、目录重建,书不重复出现。

新增类:io.legado.app.help.update.AppUpdateChecker 及 7 个配套
(CheckRunnable/ShowDialog/CloseClick/OnUpdate/OnManual/DownloadRunnable/
InstallRunnable/ToastRunnable)。versionCode 100000018。

调试踩坑(都修掉了):
1) AlertDialog 按钮监听器必须 DialogInterface.OnClickListener,
   用 View.OnClickListener 软校验不报错、点击时才 ClassCastException;
2) DownloadManager.Query.setFilterById 是 long... 变长参(smali 签名 [J),
   传标量 J 每次 NoSuchMethodError 被吞;且 MuMu 上 DM 反复卡 PAUSED,
   弃用,换自建 HTTP 线程;
3) Toast.makeText 没有两参 (Context, CharSequence) 重载;
4) smali 寄存器列表不能内联字符串字面量;isAllowed 判空写反导致永远 false;
5) apktool 并行 smali 偶发把整个 classes8.dex 写成 0 类且不报错(或报
   "Error while writing instruction at 0x31")—— 构建后必须校验各 dex 的
   class_defs 数量(verify_build.py 对着 v9.1 基线数),坏就重跑。
实测(MuMu Android 15):弹窗文案/按钮/×、下载(62.6MB 秒级)、FileProvider
唤起系统安装器、跳浏览器,全链路通过;发布 v9.2 后重进 app 不再弹窗。
产物:release/linghu_nightfix_v9.2.apk(versionCode 100000018,最终版)

### v9.2 补充:更新开关(2026-10-03,资产原地替换)
其它设置页新增「检查更新」开关(key `updateCheckEnabled`,默认开,
pref_config_other.xml 的 SwitchPreference,与检查器同读
PreferenceManager.getDefaultSharedPreferences,零胶水):
- 关闭 → AppUpdateChecker.check() 入口直接 return,后台检查线程都不起,
  更新弹窗从此不再出现;随时可回设置打开;
- 指南升 v3(第八章补了开关的路径说明),guideBookV 标志 v2→v3;
- 实测:开→弹 / 关→不弹(用 CURRENT_TAG=v9.1 的测试包制造版本差验证
  门禁,再切回 v9.2 出正式包)/ 默认(从未进过设置页)→弹。
  这里修了个 bug:最初门禁用 getPrefBoolean$default(mask 掩码取默认值),
  该方法默认参是 false,用户没进过设置页时会被误判为关——改为三参显式
  传 true。
v9.2 Release 资产原地替换,release 正文补了开关说明,versionCode 仍
100000018,老 v9.2 安装直接覆盖即可。

### v9.3:黑夜模式排行榜修复 + 离线缓存 + 广告残留清理(2026-10-04)
用户报了 bug:黑夜模式排行榜书名全部消失。根因在原包:排行条目布局
item_rank_book_list.xml 把书名颜色写死 `#ff232323`(厂商没做夜间适配),
评分行写死 `#ff9e9e9e` 恰好两种模式都能看,于是只有书名隐身。改成
`@color/primaryText`(values-night 已有白色定义),一行修复,浅色无回归。

排行榜离线兜底(新类 RankCacheHelp):
- saveCache:首屏(第 1 页)响应原文存 filesDir/rankcache/<hash>.json,
  时间戳存 .ts,key = rank|gender,全程 try/catch 不抛;
- loadAndParse:读缓存后复用线上的 AnalyzeRule JSONPath 规则解析,
  失败返回 null,不碰线上流程;顺带算出数据年龄;
- lastAgeText:三档文案(无时间戳/X 分钟前/X 小时前);
- loadData$1 的 catch 分支:nPage==1 时 loadAndParse → addItems →
  toast 提示年龄;没有缓存才回落到原来的"没有更多了。"。

广告残留清理:
- assets 删 bdxadsdk.jar(1.4M)、gdt_plugin/gdtadv2.jar(2.2M)、
  qumeng(908K)、jad_*.json、ksad_*、libinno、na.czl、openmeasure、
  sig_appelements.html、supplierconfig.json、AISDK_ASSET.txt;
- manifest 删 200+ 行广告组件声明(广点通/百度/美数/倍孜/优量汇/
  穿山甲 FileProvider、aweme 包名查询、UMENG_CHANNEL meta)和三个
  只有广告 SDK 用的权限:ACCESS_FINE_LOCATION、ACCESS_COARSE_LOCATION、
  READ_PHONE_STATE。包体 62.6MB → 58.0MB。
- privacyPolicy.md 重写:原稿自称"采用 Google Firebase 收集崩溃报告"
  等不实内容,改为如实描述(无服务端、无统计/广告 SDK、不收集信息)。
  该文件是首启弹窗与"关于"页共用的文本源。

调试踩坑:
1) Mimosa 会话状态(.mimosa/hook-state)被写进 v5_tree/assets 后,
   apktool 打包原样带进 APK——发布前必须 unzip -l 查一遍,清掉重打;
2) MuMu 开飞行模式会把虚拟网卡连同 adb 桥一起杀掉(adb 卡 offline);
   用 MuMuManager 的 RPC shell(sh -v N,root)执行
   `cmd connectivity airplane-mode disable` 可恢复;
3) 无 root 的模拟器上 `pm revoke INTERNET` 不可用(安装期权限不可撤),
   断网测试只能走飞行模式 + RPC 驱动;
4) RPC shell 里 input tap 偶发被吞(首点丢失率高),双击即可;
5) 重启模拟器后 adb 端口可能变(info -v N 查 adb_port,这次 7555 →
   16416 → 16448),Git Bash 还要配 MSYS_NO_PATHCONV 才能 pull。

实测(全新 MuMu Android 15 实例,versionCode 100000019):
黑夜/浅色排行榜书名都清晰;断网进排行榜渲染缓存列表;断网启动无弹窗
(检查失败静默跳过);在线弹窗文案取自 GitHub release body、跳过可关;
指南书全新安装自动上架。DEX 类计数过 verify_build 门禁(classes8
8378+RankCacheHelp=8379),证书与历史一致。
产物:release/linghu_nightfix_v9.3.apk(58,048,782 字节)

### v9.3 补充:更新弹窗下载进度条(2026-10-04,资产原地替换)
点「更新」不再关弹窗:正文切换成进度条 + 状态行(正在下载 X%(A.BMB / C.DMB)),
「更新」按钮置灰防重复下载,下完自动关弹窗拉起安装器;失败时状态行提示改用
「手动更新」。ShowDialog 的 setMessage 换成自定义视图(正文包进 ScrollView,
新增横向 ProgressBar 与状态行,初始 GONE);新增 ProgressRunnable(按百分比
变化节流,主线程刷 UI)与 StatusRunnable(失败文案);DownloadRunnable 把
ByteStreamsKt.copyTo 换成手动 read 循环以便计数。versionCode 100000020,
CURRENT_TAG 仍 v9.3。
实测坑:MuMu 下载 58MB 只要 ~2 秒,进度条一闪而过;MuMu 自动安装同版本包会
清应用数据,厂商隐私弹窗(首启"用户隐私与协议")反复弹出干扰截图;api.github.com
未认证配额 60 次/小时,调试打满后更新弹窗会静默不弹(属预期降级)。功能链路
(点击→下载→关弹窗→安装器)多次全通。

补一个关键修复:AlertDialog 按钮点击后框架会**自动 dismiss**——第一版把进度
切换写在 DialogInterface.OnClickListener 里,onClick 一返回弹窗就被框架收掉,
进度条根本看不见(下载/安装链路本身是通的,跑了五次才定位到)。改成
setPositiveButton 传 null,show() 之后 getButton(-1).setOnClickListener 挂
View.OnClickListener,框架才不收。另注意 getButton 必须在 show() **之后**调:
之前调返回 null,后续 NPE 会被 ShowDialog 的 catch 吞掉,弹窗整个不出现。
两个坑都在模拟器上实测:断网点「更新」,弹窗停留在进度模式并显示
「下载失败,可以用『手动更新』去 GitHub 下载」,更新按钮置灰。

### v9.4:书源体检(2026-10-05)
用户选的方向:703 个书源没有批量体检,源坏了只能碰运气。探查发现 fork 里
整条校验链路都在(关键词对话框/校验设置弹窗/CheckSource 并发模型/
CheckSourceService 前台服务/结果标签),厂商只删了两样东西:
- res/menu/book_source.xml 里的「校验书源」菜单项 → 已恢复;
- **onCompatOptionsItemSelected 里 menu_check_source 的分支** → 已补回。
  这个坑费了功夫:BookSourceActivity 里有两个菜单处理器,onMenuItemClick
  (Toolbar 监听器,本包里是死代码)和 onCompatOptionsItemSelected(真正
  生效的 compat 回调)。校验分支在死代码里倒是完好的,活代码里被删了——
  菜单点了没反应,靠 logcat 探针二分定位。

用法(也写进了书架指南,guideBookV v3→v4 自动更新):
书源管理 → 右上角菜单 → 校验书源,关键字留空直接确定(默认搜「我的」);
先点「校验设置」把发现/详情/目录/正文去掉只留搜索、超时 30 秒——**深项
(详情/目录/正文)在部分优+源上会把校验管线整个卡死(零网络连接假死),
只测搜索就完全正常**,这是本次实测发现的坑。跑完失败源自动打
「搜索失效」「网站失效」标签,搜索框输「失效」筛出坏源,全选,选择菜单
「禁用所选」一锅端。实测 703 源约 3 分钟跑完。
评估:报告/禁用闭环内建已够用,未打补丁。versionCode 100000021。
产物:release/linghu_nightfix_v9.4.apk(58,048,782 字节)

### 1.4.0 更新提醒优化(2026-10-05)
- 更新弹窗第三个按钮「跳过」换成「不再提示」:点击写
  updateCheckEnabled=false(与设置里「检查更新」开关同源),此后所有更新
  弹窗不再出现;toast 提示重新打开的路径。新类 OnNeverAsk。
  想只跳过一次仍可用右上角 ×。
- 用户反馈澄清:手机上 v9.3→v9.4 更新点「更新」没看到进度条——那批手机装
  的是 10-03 首发的 v9.3(进度条是 10-04 才加的,弹窗按钮跑的是已装代码),
  不是 bug;v9.4 起更新可见。
- versionCode 100000022,CURRENT_TAG 1.4.0,指南 v5(补不再提示用法)。
- GitHub 版本号重划(见顶部说明),五个历史 release 原地改名+删旧 tag 引用。
产物:release/linghu_nightfix_1.4.0.apk(58,048,782 字节)
