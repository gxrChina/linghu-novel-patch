# linghu-novel-patch

灵狐小说(legado 换皮)的去广告修补版,自己反编译改着玩的。

原包开屏广告、友盟、一堆装了没用的 SDK,看着难受就清了。顺手修了几个 bug:
夜间模式切后台白屏、排行榜拉不到数据、新建替换规则那个表单没法看。

体积 125MB → 62.8MB,冷启动 300ms 上下。排行榜也做了大改:5 个重复的榜单 Tab 换成了分类 Tab(男频 13 类/女频 6 类),每个分类拉对应的书单。

## 改动明细

去广告:
- 开屏广告、广告聚合层、友盟统计,全删
- 59MB 的 AdblockPlus 引擎也删了(它只给 RSS 网页去广告,而这包的 RSS 源是空的)

修 bug:
- 夜间模式下切后台再回来白屏 → BaseActivity 加了个看门狗,主题变了就重建
- 排行榜空的 → 接口改版了,cate=全部 不再返回书单,把参数去掉就好
- 排行榜 Tab 之前整个被砍了,加回来
- 排行榜的分类 Tab 在手机上挤成一团 → 打包的 Material 库模式常量与惯例相反
  (SCROLLABLE=0),按此修正,Tab 恢复正常宽度、可左右滑动

体验:
- 新建替换规则的表单加了填写提示,三个规则列表页加了新手引导
- 开屏页跟着系统深色模式走
- 书架里内置了一篇《灵狐使用指南》,第一次启动自动出现,删了不会回来
- 有新版本进 app 会弹窗提醒,可以直接下载安装,也可以跳浏览器去 GitHub
- 更新弹窗有下载进度条:点「更新」原地看着进度,下完自动弹安装
- 书源体检回来了:书源管理 → 校验书源,批量测活,坏源打标签,筛出来一键禁用
- 不想被打扰?我的 → 其它设置 → 检查更新,关了就再也不弹
- 黑夜模式排行榜书名看不见?v9.3 修了(原包把书名颜色写死成深色)
- 排行榜接口挂了或断网时,显示最近一次成功的数据,并注明缓存是什么时候的
- 广告 SDK 的残留文件清掉了,安装包 62.6MB → 58MB,顺带删了用不到的定位、读取手机状态权限
- "关于"里的隐私说明更正:原稿还自称用 Google Firebase 收集数据,实际一个统计 SDK 都没有
- 图标别名、S Pen 遥控这些没用的也清了

## 下载

apk 在 [Releases](https://github.com/gxrChina/linghu-novel-patch/releases/tag/1.4.0) 里,
下载后直接覆盖安装(数据保留)。想自己动手打的看下面的构建部分。

补丁的来源说明:改的是别人商业包的脱壳产物,自用没问题,别拿去二次分发。

## 两句提醒

- 深色模式那个白屏,根因是 R8 寄存器跨块复用,删 smali 块之前先查块内寄存器有没有被外面读。两次翻车都是这个
- 排行榜数据来自夸克小说接口(quark.sm.cn),接口哪天没了榜单也就没了

仅供学习交流。原 app 权益归原作者,侵权联系删除。补丁遵循 legado 的 GPL-3.0。

---

English: personal patches for 灵狐小说, a rebranded legado build. De-ad, dark-mode white-screen fix, rank list repaired and turned into category tabs (13 male / 6 female genres), 125MB → 62.8MB. The patched apk is attached to the [v9.3 release](https://github.com/gxrChina/linghu-novel-patch/releases/tag/1.4.0) — install it right over the stock one, data stays. Patches and build script only, GPL-3.0. The Chinese part above covers everything (run it through a translator if needed).
