# 资源改动清单(RESOURCE-CHANGES)

smali 补丁直接按路径覆盖,资源文件因为体积大(styles.xml 578KB),这里只列
**需要合并的条目**。每一段都标了目标文件和插入位置,照抄即可。

## 1. 新增字符串 — `res/values/strings.xml`

在文件末尾 `</resources>` 之前插入:

```xml
<!-- patched: friendly hints for replace-rule editor -->
<string name="nf_replace_guide">三步用法:① 在"查找内容"里填要找的文字(如:伱) ② 在"替换为"里填改成什么(如:你,留空即直接删除) ③ 保存后,阅读时自动生效。删广告、改错字都可以;多条规则可在列表里排序。勾选"正则表达式"为高级用法,点旁边的 ? 有帮助。</string>
<string name="nf_replace_name">规则名称,例如:错字修正</string>
<string name="nf_replace_group">分组,选填,用于归类管理</string>
<string name="nf_replace_pattern">查找内容:要修改或删除的文字,例如:伱</string>
<string name="nf_replace_to">替换为:改成什么?例如:你(留空 = 直接删除查找到的内容)</string>
<string name="nf_replace_scope">生效范围,选填:只对某本书生效时,填书名或书源 URL</string>
<string name="nf_replace_exclude">排除范围,选填:对某本书不生效时,填书名或书源 URL</string>
<string name="nf_replace_timeout">超时毫秒数,选填(保持默认 3000 即可)</string>
<string name="nf_use_regex">使用正则表达式(高级)</string>
```

## 2. 中文文案改进 — `res/values-zh/strings.xml`(rCN 回退到 zh,无需改)

同名替换三处:

| 键 | 改为 |
|---|---|
| `explore_empty` | 这里空空如也:发现内容来自书源的"发现"规则,可在书源管理里给书源补充,或换一本启用了发现页的书源 |
| `select_backup_path` | 请选择备份路径(手机本地文件夹即可;配置 WebDav 后会同时上传) |
| `backup_summary` | 把书源、书架、阅读进度等备份到所选目录(已配置 WebDav 时会同时上传一份) |

`values-zh-rTW/strings.xml` 同步改繁体版:

- `explore_empty` → 這裡空空如也:發現內容來自書源的「發現」規則,可在書源管理裡給書源補充,或換一本啟用了發現頁的書源
- `select_backup_path` → 請選擇備份路徑(手機本機資料夾即可;設定 WebDav 後會同時上傳)
- `backup_summary` → 把書源、書架、閱讀進度等備份到所選目錄(已設定 WebDav 時會同時上傳一份)

## 3. Android 12+ 系统开屏窗背景 — `res/values-v31/styles.xml`

文件末尾 `</resources>` 之前插入(启动主题跟随日夜,修掉开屏白闪):

```xml
<!-- patched: launch theme splash (Android 12+ system splash screen)
     follows the day/night color resource instead of the light default -->
<style name="AppTheme.FullScreen" parent="@style/Base.AppTheme">
    <item name="android:windowNoTitle">true</item>
    <item name="android:windowFullscreen">true</item>
    <item name="android:windowBackground">@color/background</item>
    <item name="android:windowSplashScreenBackground">@color/background</item>
    <item name="android:windowSplashScreenIconBackgroundColor">@color/background</item>
</style>
```

同时 `res/values/styles.xml` 里同名 style 加一条 `<item name="android:windowBackground">@color/background</item>`。

## 4. 三个规则列表页的引导横幅

在 `activity_replace_rule.xml` / `activity_txt_toc_rule.xml` / `activity_dict_rule.xml`
的 TitleBar 之后、列表之前各插一行:

```xml
<TextView android:layout_width="fill_parent" android:layout_height="wrap_content" android:text="@string/nf_guide_replace" android:textColor="@color/primaryText" android:textSize="12.0sp" android:lineSpacingExtra="3.0dip" android:padding="10.0dip" />
```

对应字符串(三条,同样加进 values/strings.xml):

```xml
<string name="nf_guide_replace">第一次用?点右上角 ⋮ →「新建替换」创建规则(如错字修正、删广告),或选「本地导入」导入社区净化规则包;长按规则可编辑/删除。</string>
<string name="nf_guide_txttoc">TXT 目录规则用于把整本 TXT 按规则切分成章节:点右上角 ⋮ 新建或导入,长按规则可编辑。</string>
<string name="nf_guide_dict">词典规则用于阅读时划词查询词语:点右上角 ⋮ 新建或导入,长按规则可编辑。</string>
```

## 5. 已在本仓库布局文件里直接改好的

`patches/res/layout/activity_replace_edit.xml` 是整文件替换(表单 hint 全部重写),
直接覆盖即可,不用照着改。
