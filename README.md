# 元宝 Bot Web 控制台 6.0Pro Max · 专业增强版（全功能）

> 🔷 **专业增强版（完整功能）**：本版本保留 V4.5 的**全部能力**——全场景液态玻璃（Liquid Glass）、各厂商主题（11 套手机厂商 UI 效果 / `PHONE_EFFECTS`）、动态背景（视频背景 + 自定义图片）、🌌 鸿蒙空间光感（HarmonyOS 6 沉浸光效）、🖼️ 在线图片编辑器（ImgEditor），以及毛玻璃开关、16 套 QQ 主题、可视化音乐播放器、AI 聊天、@ 群成员、个性化后端化与 config.json 可视化编辑器。
> 与个人用户免费版的区别：免费版移除了上述 5 项能力；本增强版为全功能版。


基于元宝（YuanBao）机器人协议的全功能 Web 管理面板，提供 WebSocket 长连、消息收发、自动回复、AI 图片生成、贴纸表情、消息日志持久化、群成员资料管理等完整能力。

> **V4.2 新增**：👑 至尊黄金 / 至尊黑金主题 + 🎨 全色域自定义渐变主题（任意颜色组合）；🚀 科技感大公司级界面（HUD 模式）；🪪 群成员铭牌系统（含 **💎 QQ 全系列 19 种钻标**）+ ✅ 认证蓝标 + 👤 自定义头像；📱 **10 套手机厂商 UI 效果**（iOS / 鸿蒙 / HyperOS / ColorOS / OriginOS / OneUI / Flyme / OxygenOS / MagicOS / Material You）；📲 消息栏底部双线箭头按钮触发的展开式全功能消息编辑器；🔧 **修复 @全体协议**（`text` 字段必须为 `"@所有人"`，否则只会被识别为普通 @昵称） + 新增 `/api/diag/at-all` 诊断端点；🎨 **按钮跟随主题色**（`var(--primary)` 而非硬编码） + **按下时颜色翻转 + 内阴影 + 缩放**；✨ **恢复液态玻璃开关**（毛玻璃 + 透明卡片，关闭可降级为半透明纯色）。同时**移除 V5.0 的超大字功能**。
>
> **V4.3 优化（主题与回复引擎重写）**：🎨 **主题引擎完全重写**——引入语义色变量体系（`--primary` / `--primary-hover` / `--primary-deep` / `--on-primary` / `--track` / `--knob` 及由主色实时派生的 `--primary-soft` `-ring` `-glow` `-tint`），全部经 `@property` 注册为 `<color>`，**切换/明暗切换时连渐变与阴影都能丝滑插值**；🪟 **深浅搭配自适配**——浅色主色（柠檬黄 / 至尊黄金）自动配深字、深色主色配白字，彻底解决"按钮按过一次不回默认色 / 开关按钮不跟随主题色"的问题；🌙 **暗夜模式选择器修复**（原 `html[data-theme=dark] html.theme-x` 永不生效，已修正为 `html[data-theme=dark].theme-x`，每套主题拥有独立深色板）；📋 **自动回复规则管理 UI**——前端可直接增删改规则，支持 **6 种匹配类型**（包含 / 包含任意 / 完全等于 / 开头为 / 结尾为 / 正则）、**每条规则独立优先级**（数字越小越优先）与启用开关，命中即按优先级排序匹配。
>
> **V4.4 新增（插件生态）**：🧩 **完整插件系统**——从你那份 v3.5 控制台合并而来、此前 V4.x 缺失的能力。后端 `PluginManager` 自动扫描 `plugins/` 目录、加载 `plugin.py` + `plugin.json` 并调用 `register(ctx)`；`ctx` 暴露 **发送类**（`send_group` / `send_at_all` / `send_sticker` / `send_image` / `send_file` / `send_c2c`）、**事件钩子**（`on_message` / `on_connect` / `on_disconnect`）、**页面/卡片注册**（`register_page` / `register_card`，前端用统一主题样式渲染，自动继承语义色变量 / 深色 / 厂商效果）与 **配置持久化**（`get_config` / `save_config`）。前端「插件」Tab 支持 **Git 一键安装**、启用/禁用、重新加载，并自动渲染插件注册的动态页面与卡片。内置 `plugins/example` 示例插件演示全部 API。

> **V4.5 新增（个性化后端化 + 多媒体与 AI 增强）**：🏢 **企业简洁主题**（低饱和中性灰 + 商务蓝主色，含独立深浅双调色板）；🎬 **视频背景**（支持以视频文件作为主题背景，全屏铺底 + 暗化遮罩，与图片背景互斥）；🖼️ **在线图片编辑器**（上传图片时支持裁剪 / 旋转 / 涂鸦 / 改色，改色含灰度黑白 / 怀旧 / 反色 / 模糊等滤镜，编辑后导出 PNG）；🎵 **可视化音乐播放器**（底栏最右侧「🎵 音乐」Tab，仅支持用户自添加音乐文件，按音调 / 频谱做柱状 / 波形 / 环形 / 粒子四种可视化动画）；🤖 **AI 聊天窗口**（底栏「🤖 AI」Tab，用户自定义 `base_url` / API Key / 模型 / 系统提示词，调用任意 OpenAI 兼容接口，仅文本对话，不支持图片生成、图片或文件上传）；💬 **@ 群成员（隐藏 ID）**（消息框输入 `@` 弹出成员昵称下拉，插入 `@昵称 ` 不显示任何用户 ID）；⚙️ **个性化设置后端化**（扩展 `/api/settings` 为通用 `prefs` 持久化，主题 / 厂商效果 / AI 配置等存后端，跨设备生效）；📞 **联系方式标识**（标题栏右上角显示「元宝派:247-446-999」）。同时 **取消铭牌 / 钻标（💎19 钻）功能** 与 **液态玻璃手机厂商效果主题**（`.glass-card` 毛玻璃开关保留）。
>
> **⚠️ V4.5 特别提醒（移植自 v5.0）**：📄 **config.json 可视化编辑器**——设置页新增「📄 配置文件可视化」区块，可直接在网页上查看 / 编辑 / 保存 `config.json`（原子写入 + 运行时热应用）。🟢 **自动热应用**：自动回复规则（`AUTO_REPLY_RULES`）/ 默认回复 / 心跳间隔 / 群号 / 消息记录开关等保存后立即生效；🟡 **需重启**：`APP_KEY` / `APP_SECRET` / `PORT` / `IMAGE_GROUP_CODE` 等连接凭证修改后重启服务生效；🔒 `API_DOMAIN` / `WS_URL` / `YUANBAO_ID` 属敏感信息，页面不显示，请直接编辑文件。后端新增 `GET/POST /api/config` 支撑。
>
> **🌊 V4.5 全新（全场景液态玻璃）**：🍎 **真实折射**（SVG `feDisplacementMap` 扭曲 backdrop，**非毛玻璃伪装**）+ 📱 **华为物理动效**（弹簧-阻尼物理引擎 + `deviceorientation`/`devicemotion`/鼠标视差驱动）。设置页新增**独立控制区**：总开关 + 🧲 物理引擎动态 / 🔍 折射 / 💡 动态光影 / ⚡ 性能兼容模式 **4 个独立子开关**；开关/按钮**开启态用主色液态玻璃、关闭态用冷灰液态玻璃**避免看不清；折射与动态光影独立可控；⚡ 性能模式降低模糊/折射并在 FPS<30 自动降级防卡死。

> **📦 6.0Pro Max 新增（批量发图 + 成员铭牌钻标恢复）**：🖼️ **批量发送图片**——设置页「📦 批量发送图片」区块可一次性多选图片（最多 50 张），按设定间隔（**默认 1 秒/张**，可调）依次发往**目标群**（默认当前群，可下拉切换），带预览网格、进度条与随时取消；✨ **流畅度**：发送中按钮禁用 + 进度可视化 + 单条状态提示，避免重复点击与卡顿；🪪 **恢复成员自定义资料（V4.3 曾取消）**——在「成员」列表点击目标成员，行内出现「🪪 设置」按钮，点击弹出编辑器可设置该成员的**自定义昵称**与**铭牌钻标**（红/黄/蓝/绿/紫/粉/黑钻 + 金钻等 QQ 全系列钻标 + 预设铭牌 + 认证蓝标 + 自定义头像），数据存 localStorage，成员列表中即时显示。

> **🧠 V6.5 企业定制版（编号 001，本构建）**：本构建在 6.0Pro Max 全功能基础上，以「**V6.5 · 编号 001 · 全场景人工智能大模型企业主题 · 国家级企业定制版**」对外呈现。主要变化：
> - 📋 **新增「📋 本插件」介绍 Tab**（底栏最右侧）：展示产品定位（国家级企业定制 / 企业主题视觉语言）、功能清单，并提示「本产品及初始化启动验证密码**不能以任何形式外传**」。
> - 🤖 **AI 聊天大幅增强（推翻旧版「仅文本」限制）**：① **多模型管理**——同一份表单可无限次「保存配置」，逐条保存多个模型（列表支持编辑 / 删除 / 设为当前），每个模型独立保存 `thinking` 思考开关与思考强度；② **思考（reasoning）**——发送时按强度（0–100 → low/medium/high）注入 `reasoning_effort` 与 `thinking` 字段；③ **附件**——📎 文件 / 🖼️ 图片 上传，以 chip 形式展示并写入 prompt 前缀（文件名随对话带上；属「提示词级」附加上下文，并非以 multipart 真正把二进制传给模型）；④ **🎨 生图模式**——约束模型生成图片并从回复中抽取图片直链展示 + 下载；⑤ **💻 代码模式**——约束模型仅输出 ```代码块；⑥ **🔌 测试连接**（GET `base_url/models`）。仍走浏览器直连任意 OpenAI 兼容 `/chat/completions`。
> - 🏷️ **群名解析**：消息筛选区的「群 chip」现异步拉取并展示**群名（群号）**，`GET /api/group/name` 支撑。
> - 🪪 **铭牌 / 钻标系统恢复为可用功能**（代码标注 **V4.6 恢复**，非空操作）：`openBadgeModal` / `saveBadge` / `removeBadge` / `exportMemberBadges` / `importMemberBadges` 均已实现，成员列表可正常设置自定义昵称、QQ 全系列钻标、认证蓝标、自定义头像。
> - ⚠️ **移除 🎵 音乐 Tab**：旧版「🎵 音乐」可视化播放器（V4.5 全新）在本构建中已不存在，底栏 Tab 栏为 消息 / 发送 / 贴纸 / 成员 / 高级 / 设置 / 记录 / 插件 / AI / 本插件。
>
> 注：本 README 中「6.0Pro Max」为产品家族名；本构建的 about 页与功能集对应 **V6.5（编号 001）**。

---

## 升级路线图

| 版本 | 主要变化 |
| --- | --- |
| V4.0 | 自定义背景（任意图片格式）+ 批量发送 + 重连稳定性优化 |
| V5.0 | 12 套 QQ 调色盘主题 + 文字颜色自适应 + 超大字功能（**V4.2 已移除**） |
| V4.1Pro Beta | LaTeX 消息编辑器 + 科技感 HUD 模式（实验性） |
| **V4.2** | 👑 至尊主题 + 🎨 自定义渐变 + 🪪 19 钻标铭牌/认证/头像 + 📱 10 厂商效果 + 📲 展开编辑器 + 🔧 @全体协议修复 + 移除超大字/液态玻璃 |
| **V4.3** | 🎨 主题引擎重写（语义色变量 + `@property` 丝滑过渡 + 深浅自适配）+ 🪟 暗夜选择器修复 + 🔘 开关按钮跟随主题色修复 + 📋 回复规则管理 UI（6 匹配类型 + 优先级 + 启用开关） |
| **V4.4** | 🧩 插件生态（Git 一键安装 + 启用/禁用/重载 + 动态页面/卡片渲染 + `ctx` 全套发送/事件/配置 API）+ 内置 `plugins/example` 示例 |
| **V4.5** | 🏢 企业简洁主题 + 🎬 视频背景 + 🖼️ 在线图片编辑器（裁剪/旋转/涂鸦/黑白）+ 🎵 可视化音乐播放器（音调驱动）+ 🤖 AI 聊天（自定义 API·纯文本）+ 💬 @ 隐藏 ID + ⚙️ 个性化后端化（`/api/settings` prefs）+ 📞 元宝派:247-446-999；**取消铭牌/钻标 + 液态玻璃厂商效果主题** |
| **6.0Pro Max** | 📦 批量发送图片（多图·间隔可调·目标群·进度/取消）+ 🪪 恢复成员自定义昵称/铭牌钻标（点击成员行内「🪪 设置」）+ 全场景液态玻璃物理引擎 + 感应器 |
| **V4.6** | 🪪 铭牌 / 钻标 / 认证蓝标 / 自定义头像系统**恢复为可用**（此前 V4.5 取消，6.0Pro Max 行内恢复但代码标注 V4.6）+ 成员列表导入 / 导出铭牌数据 |
| **V6.5（编号 001）** | 📋 新增「本插件」介绍 Tab（国家级企业定制版定位）+ 🤖 AI 聊天多模态升级（多模型管理 / 思考开关+强度 / 文件·图片附件 / 生图模式 / 代码模式 / 测试连接）+ 🏷️ 群名解析（`/api/group/name`，消息筛选 chip 显示群名）+ ⚠️ 移除 🎵 音乐 Tab |

---

## 功能一览

### 消息处理
- **实时消息流**：通过 WebSocket 连接企业微信机器人网关，实时接收群聊消息
- **消息查看**：前端实时显示最近 500 条消息，支持群聊/私聊分类，支持 2s 自动刷新
- **消息日志**：自动落盘到本地文件（JSONL + TXT），按日期滚动，永久累积
- **回复消息**：支持文本、图片、文件、贴纸、AI 图片等多类型回复
- **@ 检测**：自动检测是否被 @，可配置仅在被 @ 时响应
- **引用回复**：前端支持选中消息并引用回复
- **撤回消息监听**：可选开启撤回监听，撤回的消息会显示撤回者昵称
- **@全体成员**：内置专用按钮 + `NTNX+5sHarbiWHHk+P1yHw==` 特殊 ID

### 转发模式（代理）
- **群聊转发**：将来源群的消息自动转发到目标群
- **@元宝**：支持将消息转发给元宝 AI 并等待其回复
- **队列管理**：代理转发队列实时展示，支持手动清空
- **@only 模式**：仅转发被 @ 的消息

### 自动回复
- **前端规则管理 UI（V4.3 全新）**：在「设置 → 🤖 自动回复」内直接**新增 / 编辑 / 删除**规则，无需手改 `config.json`
- **6 种匹配类型**：`contains`（包含关键词）/ `contains_any`（包含任意，多关键词逗号分隔）/ `exact`（完全等于）/ `startswith`（开头为）/ `endswith`（结尾为）/ `regex`（正则）
- **每条规则独立优先级**：`priority` 数字越小越优先；后端 `get_auto_reply()` 按优先级升序匹配，命中即返回，已禁用的规则自动跳过
- **启用开关**：每条规则可单独启用 / 停用，停用规则不参与匹配
- **仅群聊生效**：规则可限定只在群聊触发
- **群聊/私聊独立**：可分别设置群聊和私聊的默认回复
- **回复测试**：前端实时测试规则匹配结果

### 插件生态（V4.4 全新）
- **插件管理 Tab**：底部新增「🧩 插件」面板，可见已安装插件列表（版本 / 作者 / 运行状态 / 消息处理器与路由计数）
- **Git 一键安装**：粘贴仓库地址即 `git clone` 到 `plugins/` 并自动加载（`/api/plugins/install`）
- **启用 / 禁用 / 重新加载**：每个插件可单独开关与热重载，状态持久化（`/api/plugins/toggle`、`/api/plugins/reload`）
- **`ctx` 发送 API**：插件可调用 `send_group` / `send_at_all` / `send_sticker` / `send_image` / `send_file` / `send_c2c` 向当前群/私聊发消息
- **事件钩子**：`on_message(msg)` 在每条消息到达时触发，`on_connect` / `on_disconnect` 在连接状态变化时触发
- **页面与卡片（元数据驱动）**：`register_page(title, icon, weight)` 注册独立 Tab；`register_card(...)` 注册统一格式卡片（动态数据行 + 表单字段 + 操作按钮），前端自动用控制台主题样式渲染，**插件无法自定义 CSS**，因此天然跟随深浅 / 厂商效果
- **自定义后端路由**：`register_blueprint(bp)` 注册 Flask 蓝图，扩展自有 HTTP 接口
- **配置持久化**：`get_config()` / `save_config()` 读写 `plugins/<名称>/config.json`
- **内置示例**：`plugins/example` 演示页面 + 卡片 + 消息钩子 + 蓝图 + 配置的全部用法

### 多媒体发送
- **文本发送**：支持普通文本、@ 指定成员、@ 全体成员
- **图片发送**：通过 URL 直接发送图片到群聊
- **文件发送**：通过 URL 直接发送文件到群聊
- **贴纸发送**：内置 50+ 套贴纸包，支持自定义贴纸 ID
- **AI 图片生成**：通过元宝 AI 生成图片并转发到群聊
- **LaTeX 消息**：通过 QQ 原生 LaTeX 渲染（缩放/旋转/字体/边框）

### 群成员资料管理
> 🪪 **铭牌 / 钻标系统已恢复（V4.6 恢复，非空操作）**：原 V4.2 的「🪪 自定义铭牌 / ✅ 认证蓝标 / 👤 自定义头像 / 💎19 钻标」系统曾在 V4.5 被整体取消（降级为空操作），现于 **V4.6** 重新恢复为可用功能（6.0Pro Max 行内恢复，代码标注 V4.6）。在「成员」列表点击目标成员，行内出现「🪪 设置」按钮，点击弹出编辑器可设置**自定义昵称**与**铭牌钻标**（红/黄/蓝/绿/紫/粉/黑钻 + 金钻等 QQ 全系列钻标 + 预设铭牌 + 认证蓝标 + 自定义头像），数据存 localStorage，成员列表即时显示；支持铭牌数据**导入 / 导出**（`exportMemberBadges` / `importMemberBadges`）。

- **系统角色徽标**：后端返回的成员角色（群主 `owner`、管理员 `admin`、元宝 AI、机器人、普通成员等）以统一样式徽标展示，颜色随主题语义变量变化
- **🪪 自定义铭牌 / 钻标 / 认证 / 头像（V4.6 恢复）**：`openBadgeModal` / `saveBadge` / `removeBadge` / `exportMemberBadges` / `importMemberBadges` 均已实现，成员列表可正常展示自定义昵称、QQ 全系列钻标、认证蓝标与自定义头像
- **@ 群成员（隐藏 ID，V4.5 全新）**：在消息框输入 `@` 即弹出成员昵称下拉，选中后插入 `@昵称 `（仅昵称，绝不带出任何用户 ID）；下拉数据来自 `GET /api/members` 的 `nick` 字段
- **成员列表**：「👥 成员」Tab 展示群成员及角色，支持群切换
- **🏷️ 群名解析（V6.5 全新）**：消息筛选区的「群 chip」通过 `GET /api/group/name` 异步拉取群名，展示为「群名（群号）」；未取到时降级显示群号。由 `updateGroupChips()` 配合 `state.groupNameCache` 实现，自动去重拉取

### 主题系统（V4.2 基础，V4.3 引擎重写）

#### 16 套 QQ 调色盘预设主题
默认蓝 / 经典蓝 / 清新绿 / 热情红 / 神秘紫 / 樱花粉 / 活力橙 / 薄荷青 / 柠檬黄 / 浪漫樱 / 深邃海 / 暗夜黑 + **👑 至尊黄金** + **👑 至尊黑金** + **🌌 鸿蒙空间光感** + **🏢 企业简洁**

#### 🏢 企业简洁主题（V4.5 全新）
- **设计定位**：面向企业/办公场景的低饱和、中性灰 + 商务蓝配色，去除一切花哨渐变与炫光，强调清晰、克制、专业
- **浅色**：低饱和中性灰背景 + 商务蓝主色 `#2563EB`，文字高对比、弱光晕
- **深色**：深空蓝灰底 + 明亮蓝 `#60A5FA` 主色，护眼且层级分明
- **独立深浅双调色板**：沿用 V4.3 的 `html[data-theme="dark"].theme-qq-enterprise` 选择器，每套明暗独立适配
- **完全兼容**：与 10 套手机厂商 UI 效果、`.glass-card` 毛玻璃开关、`@property` 平滑过渡引擎叠加生效

#### 🌌 鸿蒙空间光感（HarmonyOS 6 沉浸光感视效）
- **设计来源**：华为鸿蒙 HarmonyOS 6「沉浸光感视效」三大特征 —— **通透质感 / 灵动粒子 / 气态动效**
- **通透质感**：所有卡片、弹窗、输入框、工具栏均升级为漂浮式玻璃（`backdrop-filter: blur(28px) saturate(1.7)`）+ 多层空间阴影（外层大投影 + 主色光晕 + 内描边高光），呈现悬浮通透的立体感
- **灵动粒子**：点击按钮 / 开关 / 标签 / 贴纸 / Tab 时迸发冷蓝灵动粒子（CSS-only `@keyframes` 粒子扩散，仅在该主题下生效，且 `prefers-reduced-motion` 自动关闭）
- **气态动效**：按钮 `:active` 采用气态溶解缩放（`spatial-press`）+ 主色光晕脉冲（`spatial-glow-pulse`），切换平滑过渡
- **独立浅/深双调色板**：浅色冷蓝通透、深色深空蓝 + 冷蓝光晕，每套明暗独立适配，对比度自保证
- **可叠加独立形态**：同时注册 `harmony-spatial` 厂商效果（22px 超大圆角卡片 + 冷蓝主光晕），主题 × 形态完全独立叠加

#### 🎨 语义色变量体系（V4.3 引擎重写）
V4.3 将整套主题系统重写为**语义色变量体系**，从根本上解决"按钮不回默认色 / 开关不跟随主题色 / 明暗对比翻车"三类问题：

- **全部 `@property` 注册为 `<color>`**：`--primary` / `--primary-hover` / `--primary-deep` / `--on-primary` / `--track` / `--knob` 以及所有背景/边框/文字/消息色，切换（含渐变与阴影）时对变量本身做过渡，实现**丝滑插值**
- **深浅搭配自适配**：`--on-primary`（主色之上的文字色）按主色亮度自动取深字（浅主色如柠檬黄 / 至尊黄金）或白字（深色主色），任意主题 × 明暗都保证对比度
- **开关 / 芯片颜色统一**：所有 `.toggle`（开关）、`.chip.active`（选中标签）、聚焦边框、AI 图片标识等原先硬编码的蓝色（`#2563eb` 等）全部改为 `var(--primary)` / `var(--primary-deep)` / `var(--track)` / `var(--on-primary)`，彻底跟随当前主题色，切换主题或明暗后一键统一
- **由主色实时派生**：`--primary-soft` / `-ring` / `-glow` / `-tint` 通过 `color-mix` 由 `--primary` 即时计算，永远跟随当前主色
- **暗夜模式选择器修复**：原 `html[data-theme="dark"] html.theme-x`（html 不可嵌套，永不生效）已修正为 `html[data-theme="dark"].theme-x`，**每套主题拥有独立的深色调色板**（保留主题色相，不再一刀切全黑）

#### 平滑过渡引擎
- 主题 / 明暗 / 厂商效果切换时，对 `html` 上的颜色变量直接做 `--dur`（0.42s）`cubic-bezier(.22,1,.36,1)` 过渡，连渐变背景与阴影都能平滑插值；切换瞬间加 `theme-switching` 类加速重绘并避免模糊层掉帧；`prefers-reduced-motion` 下自动关闭动画

#### 至尊黄金 / 至尊黑金
- **至尊黄金**：浅金渐变背景 + 深金主色（金底配深棕字，绝不误用白字）+ 金色光晕，奢华商务感
- **至尊黑金**：深黑底 + 沉稳金主色 + 高奢金属质感

#### 🎨 全色域自定义渐变主题（V4.2 全新，V4.3 变量扩展）
- **4 个独立颜色拾取器**：主色 A / 主色 B / 背景 A / 背景 B，支持任意颜色组合
- **6 套一键预设**：粉紫 / 青蓝 / 落日 / 森林 / 极光 / 商务
- **智能对比度**：自动根据背景亮度切换深浅文字色，确保可读性
- **持久化**：所选颜色保存在 localStorage，跨刷新生效

### 科技感大公司级界面（V4.2 优化）
- **HUD 顶栏**：流光文字 "YUANBAO BOT // V4.2 // SYSTEM ONLINE // 24/7 // SECURE CHANNEL"
- **配色**：深空蓝底 + 霓虹青主色 + 紫罗兰辅色
- **底纹**：双层动态网格 + 8s 循环扫描线动画
- **字体**：SF Mono / JetBrains Mono / Fira Code 等宽字体
- **状态灯**：已连接时绿色脉冲呼吸动画 + 多层光晕
- **按钮**：大写 + 1.5px 字距 + 主色辉光 + hover 抬升
- **卡片**：玻璃 + 青色描边 + 顶部高光线 + 右上角 HUD 折角
- **Tab 指示器**：青色边框 + 内部光晕
- **完全兼容**：与 16 套主题色叠加，可与各厂商效果同时启用

### 📱 各手机厂商 UI 效果（V4.2 全新，替代液态玻璃）
在「设置 → 📱 界面效果」提供 **11 套** 真实厂商系统级 UI 风格一键切换：

| ID | 厂商系统 | 视觉特征 |
| --- | --- | --- |
| `ios` | 🍎 **iOS 18** | 柔焦毛玻璃 (`backdrop-filter: blur(20px) saturate(1.8)`) + 980px 圆角按钮 + 0.5px 细描边 |
| `harmony` | 🌸 **鸿蒙 HarmonyOS** | 卡片化 + 16px 圆角 + 居中扩散动效 + 下划线输入 |
| `hyperos` | 🟠 **HyperOS 小米** | 18px 圆角 + 鲜艳渐变按钮 + 8px 阴影 + 浅色主色注入 |
| `coloros` | 💚 **ColorOS OPPO** | 14px 圆角 + 蓝绿主调 + 0 边框 + 微发光 |
| `origin` | 🔵 **OriginOS vivo** | 20px 圆角 + 原子组件 + 紫色调 + 卡片化 |
| `oneui` | 🌌 **OneUI 三星** | 12px 圆角 + 1px 描边 + 简洁大标题 |
| `flyme` | 🪶 **Flyme 魅族** | 扁平 + 透明背景 + 下边框 + 极简留白 |
| `oxygen` | 🔴 **OxygenOS 一加** | 6px 圆角 + 0 边框 + 横向分割 + 加粗字 |
| `magic` | 💜 **MagicOS 荣耀** | 柔焦玻璃 + 紫罗兰调 + 18px 圆角 + 紫色光晕 |
| `material` | 🤖 **Material You** | 24px 圆角 + 主色淡注入 + M3 风格 |
| `harmony-spatial` | 🌌 **鸿蒙空间光感** | 22px 超大圆角卡片 + 多层空间阴影 + 冷蓝主光晕 + 灵动粒子点击反馈 |

每种效果使用 `html.effect-xxx` 类切换，**与 16 套主题色完全独立叠加**，状态保存到 `localStorage.phoneEffect`。

### 消息栏展开编辑器（V4.2 全新）
- **触发方式**：消息栏底部输入框右侧的**双线箭头圆圈按钮**（⤢，hover 旋转 90°）
- **展开效果**：从底部弹出半屏面板（slideUp 动画）
- **支持全部 9 种发送模式**：普通 / @艾特 / 刷屏 / @艾特刷屏 / 批量@ / 私聊 / 私聊刷屏 / ∑LaTeX / ∑LaTeX 刷屏
- **动态控件**：根据所选模式自动显示目标用户、刷屏次数/间隔、LaTeX 缩放/旋转等
- **场景**：在消息流中处理回复、批量发送等，无需切换到"发送"Tab

### 自定义背景（V4.0 保留）
- **三种模式**：炫彩渐变（默认）/ 玻璃纯色 / 自定义图片
- **自定义图片**：从手机相册或文件选择任意图片格式（JPG/PNG/GIF/BMP/WebP/HEIC 等），前端自动等比缩放（最大边 ≤1600px）并转码压缩后存储于浏览器 localStorage，刷新/跨刷新仍生效
- **暗化遮罩**：自定义图片模式下可开启半透明暗化遮罩，提升文字对比度

### ✨ 毛玻璃（Glass）效果开关
- **毛玻璃渲染**：所有卡片/输入框/Tab 栏/消息条目使用 `backdrop-filter: blur(16-24px) saturate(1.3-1.8)` + 半透明渐变背景（基于 `.glass-card` / `.glass-panel` 组件）
- **可关闭**：设置 → 显示设置 → 毛玻璃效果开关，关闭后降级为半透明纯色（性能更轻量，适合低端设备）
- **与厂商效果独立**：可与 11 套手机厂商 UI 效果同时启用，叠加呈现
- ⚠️ **V4.5 变更**：原「液态玻璃 Liquid Glass」**手机厂商效果主题**（`effect-liquid-glass`）已在 V4.5 移除；此处的毛玻璃开关是**卡片级 `.glass-card` 渲染方式**，与厂商效果相互独立，二者概念不同，开关保留可用。

### 🌊 全场景液态玻璃 (Liquid Glass)（V4.5 全新）
> ⚠️ **与毛玻璃 / 旧液态玻璃主题的区别**：此处的「全场景液态玻璃」是**真实折射**（SVG `feTurbulence` + `feDisplacementMap` 扭曲 backdrop），**非 `backdrop-filter: blur` 毛玻璃伪装**；同时它**不是** V4.5 已移除的「液态玻璃手机厂商效果主题」（`effect-liquid-glass`），而是独立的全场景模式（`html.lg-full`）。

- **入口**：设置 → 「🌊 全场景液态玻璃 (Liquid Glass)」独立控制区（总开关 + 4 个独立子开关，带 🆕 V4.5 标识）
- **🍎 苹果真实折射**：开启「🔍 折射」后，玻璃背后的内容被 SVG 位移滤镜实时扭曲（`url(#lg-refract)`），呈现真实液态玻璃质感；关闭折射则仅保留模糊玻璃
- **📱 华为物理动效**：开启「🧲 物理引擎动态」后，由**弹簧-阻尼物理引擎**驱动——`deviceorientation`（重力/陀螺仪）与 `devicemotion`（晃动冲量）作为输入，玻璃倾斜与高光随设备姿态平滑追随；桌面端无感应器时自动改用**鼠标视差**
- **💡 动态光影**：开启「💡 动态光影」后叠加随倾斜移动的**镜面高光 + 边缘光**（`mix-blend-mode: screen` + 内描边光晕）
- **开关/按钮双色玻璃（防误判）**：全场景模式下，**开启态**开关/选中 chip/激活 Tab 使用**主色液态玻璃**（明显高亮 + 外发光），**关闭态**使用**冷灰液态玻璃**，一眼辨别开/关
- **⚡ 性能兼容模式**：降低模糊/折射强度、裁剪 chip/成员项等小元素的玻璃参与、并在 **FPS < 30 时自动降级**，避免页面卡死；动画循环在 Tab 隐藏时自动暂停（`visibilitychange`）
- **尊重无障碍**：`prefers-reduced-motion` 下自动关闭动态高光
- **感应器授权**：iOS 13+ 需在控制区点「📡 启用设备感应器权限」（用户手势触发 `requestPermission`）；状态显示在按钮旁

### 🎬 视频背景（V4.5 全新）
- **入口**：设置 → 显示设置 → 背景模式 → 「🎬 视频背景」芯片（`setBackgroundMode('video')`）
- **上传即播**：选择本地视频文件后由 `VideoBG` 注入全屏 `<video id="videoBgEl">` 铺底，自动循环、静音、覆盖于内容之下
- **暗化遮罩**：视频模式下叠加半透明暗化层（`html.bg-mode-video body::before` 关闭图片背景），保证文字对比度
- **与图片背景互斥**：选择视频背景会自动取消自定义图片背景，二者不叠加

### 🖼️ 在线图片编辑器（V4.5 全新）
上传图片时（发送图片 / 背景图片等场景）唤起 `ImgEditor` 画布编辑器，支持：
- **裁剪**：拖拽选框自由裁剪画布区域
- **旋转**：90° 步进旋转 / 翻转
- **涂鸦**：自由画笔在图上手写标注（可选颜色与粗细）
- **改色滤镜**：灰度（黑白）/ 怀旧（sepia）/ 反色（invert）/ 模糊（blur）等一键滤镜
- **导出**：编辑结果经 `canvas.toBlob` 导出为 PNG 回传回调，再进入原发送/背景流程

### 🎵 可视化音乐播放器（V4.5 全新 · ⚠️ V6.5 已移除）
> ⚠️ **V6.5 变更**：原 V4.5 的「🎵 音乐」可视化播放器 Tab 在本构建中**已移除**，底栏不再包含音乐 Tab，相关 `Music` 对象与 `AnalyserNode` 可视化代码已不存在。以下为历史说明，仅供对照：

底栏最右侧「🎵 音乐」Tab（位于「🧩 插件」Tab 右侧）。仅支持**用户自添加的音乐文件**：
- **添加与播放列表**：用户选择本地音频文件加入播放列表，支持播放 / 暂停 / 上一首 / 下一首 / 进度
- **音调驱动可视化**：基于 Web Audio API `AnalyserNode`（`getByteFrequencyData` / `getByteTimeDomainData`）实时取频谱与波形，Canvas 绘制 **4 种模式**——柱状（bars）/ 波形（wave）/ 环形（circle）/ 粒子（particles）
- **纯音乐可视化**：不依赖任何在线曲库，仅对用户添加的文件做本地可视化，无上传、无联网

### 🤖 AI 聊天窗口（V4.5 全新，V6.5 多模态增强）
底栏「🤖 AI」Tab，支持用户调用**自有大模型**（任意 OpenAI 兼容接口，浏览器直连 `${base_url}/chat/completions`，`Authorization: Bearer <api_key>`）：

**V6.5 多模态增强：**
- **多模型管理**：同一份表单可无限次「💾 保存配置」，逐条保存多个模型；下方列表支持**编辑 / 删除 / 设为当前**，每个模型独立保存 `thinking`（思考开关）与 `thinkingIntensity`（思考强度 0–100）
- **思考（reasoning）**：发送时若开启思考，按强度映射 `low / medium / high` 注入 `reasoning_effort` 与 `thinking: {type:"enabled", effort}`，调用支持推理的模型（如 DeepSeek-R1 等）
- **附件（📎 文件 / 🖼️ 图片）**：上传后以 chip 展示，并写入 prompt 前缀（如「🖼️ 附带图片：xxx」「📎 附带文件：yyy」）；属**提示词级上下文**（把文件名随对话带上），并非以 multipart 把二进制真正传给模型；上传文件可在「📥 下载」列表内联查看 / 下载
- **🎨 生图模式**：开启后约束模型「基于描述生成一张图片」，发送后从回复中抽取图片直链（Markdown `![](url)` 或裸 PNG/JPG 链接）并渲染预览 + 下载入口
- **💻 代码模式**：开启后追加 system 约束「仅输出 ```lang 代码块，不要额外解释」，回复自动抽取代码块展示
- **🔌 测试连接**：`AI.test()` 请求 `GET ${base_url}/models` 校验 base_url 与 key 是否可用
- **当前模型切换**：对话区顶部下拉选择当前模型，并 inline 调整思考开关 / 强度（不弹窗）

**基础能力（延续）：**
- **自定义配置**：`base_url` / `api_key` / `model` / `system` 四项字段，支持任意 OpenAI 兼容协议（DeepSeek / 通义千问 / 智谱 / OpenAI / 自建网关等）
- **多轮上下文**：聊天记录渲染于 `#aiChatLog`，携带最近 20 条历史消息
- **持久化**：模型列表与当前模型存 localStorage（`ai_models_v2`）并同步后端 `prefs`（经 `_persistPref`），跨设备生效

### 💬 @ 群成员（隐藏 ID，V4.5 全新）
- **触发**：在消息框（如 `#chatSendInput`）输入 `@` 即弹出成员昵称下拉（`AtMention`）
- **插入格式**：选中后插入 `@昵称 `（仅昵称），**绝不带出任何用户 ID**（member id 仅后端用于发包，不进入文本框）
- **数据来源**：下拉来自 `state.members`（即 `GET /api/members` 的 `nick` 列表），已自动去重

### ⚙️ 个性化设置后端化（V4.5 全新）
- **通用持久化**：`/api/settings` 扩展为支持 `prefs` 子字典，前端通过 `_persistPref(key, value)` 写入、`_loadServerPref(key)` 读取
- **持久项**：主题 / 厂商效果 / 科技模式 / AI 聊天配置（`base_url` / `api_key` / `model` / `system`）等可存后端，跨设备、跨浏览器生效
- **启动恢复**：`window._applyServerPref` 在加载时从后端拉取并应用已保存的偏好
- **接口**：`GET /api/settings?key=<x>` 返回单键；`POST /api/settings` 支持 `{key, value}` 单键写入或 `{prefs:{...}}` 批量写入

### 🎨 按钮系统（V4.2 全面升级）
**核心改动**：所有按钮颜色从硬编码（`#2563eb`）改为跟随主题色（`var(--primary)`），切换主题时按钮自动变色：

| 按钮 | 默认（蓝） | 至尊黄金 | 至尊黑金 | 自定义红 |
| --- | --- | --- | --- | --- |
| `.btn-primary` | 蓝色渐变 | 金色渐变 | 黑金渐变 | 红色渐变 |
| `.btn-success` | 绿色 | 金色 | 金色 | 绿色 |
| `.btn-danger` | 红色 | 红色 | 红色 | 红色 |
| `.btn-outline` | 蓝边蓝字 | 金边金字 | 金边金字 | 红边红字 |

**11 套厂商效果全部支持主题色**（V4.2 修复）：之前 MagicOS 用的是硬编码紫色 `#7B61FF → #A78BFA`，Flyme 是透明背景，都会导致按钮不跟主题变色。修复后所有厂商效果都使用 `var(--primary)` / `var(--primary-hover)` 主题色变量，**任意厂商效果 × 任意主题色**组合都能正确渲染。

**按下反馈**（`:active` 状态）— 显眼表示已按下：
- 颜色**翻转**（hover → active 渐变方向互换）
- 整体 `scale(.94)` 缩放
- 主色脉冲光晕 `0 0 0 2px var(--primary)` 描边
- 内阴影 `inset 0 3px 12px rgba(0,0,0,.35)` 制造凹陷感
- `filter: brightness(.85) saturate(1.4)` 略微变暗变饱和

**V4.3 颜色深浅搭配（修复"按过不回默认色"）**：
- **主色之上的文字色 `--on-primary` 按亮度自适配**：深色主色（蓝/红/紫…）配白字；浅色主色（柠檬黄 `#FEC94F`、至尊黄金 `#C79A2E`）自动配深棕/深金字，杜绝"浅底白字看不清"
- **开关按钮 `.toggle` 全面跟随主题**：关闭态轨道用 `--track`、开启态用 `linear-gradient(135deg,var(--primary),var(--primary-deep))`、旋钮用 `--knob`，**不再有写死的蓝色**，切换主题 / 明暗后颜色始终一致
- **选中标签 `.chip.active`、聚焦边框、AI 图片标识**等原先硬编码的 `#2563eb` / `rgba(37,99,235,…)` 全部改为语义变量，彻底兼容当前主题色

### 系统管理
- **连接管理**：手动连接/断开 WebSocket，自动重连
- **心跳配置**：可调节心跳间隔（默认 10s），失败自动重试 3 次后断开
- **群聊/成员管理**：查看群列表、成员列表，支持群切换
- **用户管理**：添加/删除用户备注
- **夜间模式**：支持亮色/暗色主题切换
- **消息日志控制**：实时开关、统计、文件下载、清空
- **📄 config.json 可视化编辑器（V4.5 移植自 v5.0）**：设置页「📄 配置文件可视化」区块直接查看 / 编辑 / 保存 `config.json`，原子写入磁盘 + 运行时热应用（自动回复规则 / 默认回复 / 心跳 / 群号 / 消息记录等保存即生效；凭证类字段需重启）；敏感连接信息（API_DOMAIN / WS_URL / YUANBAO_ID）不在页面显示

---

## 技术栈

| 层级 | 技术 |
|---|---|
| **后端** | Python 3.10+ / Flask（threaded） |
| **前端** | 纯 HTML + CSS + JavaScript（无框架，单页内联） |
| **协议** | WebSocket（wss://）+ ProtoBuf（自定义编码） |
| **依赖** | `requests` `websockets` `flask` `Pillow` `cos-python-sdk-v5` |
| **存储** | 本地文件系统（JSONL / TXT） + 浏览器 localStorage（主题/背景/自定义渐变） + 后端 `settings['prefs']`（V4.5 个性化偏好：主题/效果/AI 配置，跨设备生效） |
| **实时推送** | SSE（Server-Sent Events） |

---

## 项目结构

```
元宝 Bot Web 控制台/
├── app.py                  # 后端主程序（Flask + Bot 逻辑，本构建约 3970 行）
│                           #   - @全体协议修复（text 强制 "@所有人" + diag 端点）
│                           #   - 撤回消息增强（msg_id + msg_seq 双路径查找）
│                           #   - @all 特殊 ID：NTNX+5sHarbiWHHk+P1yHw==
│                           #   - 插件生态 PluginManager / PluginContext（v4.4）
│                           #   - /api/settings 通用 prefs 持久化（V4.5 个性化后端化）
│                           #   - /api/group/name（V6.5 新增：群名 / 群主解析）
│                           #   - send_images_multi / send_multi_at_message（批量发图 / 批量@）
│                           #   - 已移除：超大字 (big-text) / 字体候选列表 / 音乐可视化端点
├── config.json             # 配置文件（凭据、规则、开关）
├── requirements.txt        # Python 依赖
├── plugins/                # 插件目录（v4.4 新增，自动扫描加载）
│   └── example/            #   示例插件：演示 register_page/card/on_message/ctx 全部 API
├── templates/
│   └── index.html          # 前端单页（本构建约 7180 行，主题引擎重写 + 回复规则管理 UI + 插件生态 + V4.5 多媒体/AI + V6.5 多模态）
│                           #   - 16 套 QQ 主题（含企业简洁）+ 2 至尊主题 + 自定义渐变
│                           #   - 11 套手机厂商 UI 效果（替代液态玻璃，液态玻璃主题 V4.5 已移除）
│                           #   - 系统角色徽标（群主/成员/元宝AI/机器人）+ V4.6 恢复铭牌/钻标/认证/头像
│                           #   - 科技感 HUD 模式
│                           #   - 消息栏底部 ⤢ 展开编辑器
│                           #   - 撤回监听 + @全体协议
│                           #   - 插件 Tab：Git 安装 + 动态页面/卡片渲染
│                           #   - V4.5：视频背景 / 图片编辑器 / AI 聊天 / @隐藏ID / 企业主题
│                           #   - V6.5：📋 本插件介绍 Tab / AI 多模态（多模型·思考·附件·生图·代码）/ 🏷️ 群名解析
│                           #   - ⚠️ V6.5 已移除：🎵 音乐可视化播放器 Tab（V4.5 全新，本构建不再存在）
├── logs/                   # 消息日志目录（自动创建）
│   ├── messages_YYYYMMDD.log   # JSONL 格式日志
│   └── messages_YYYYMMDD.txt   # 人类可读文本日志
└── yuanbao-openclaw-plugin/ # 元宝 OpenClaw 插件（独立 TS 项目）
```

---

## 快速开始

### 1. 环境要求
- Python 3.10+
- 元宝机器人凭证（`APP_KEY` / `APP_SECRET`）

### 2. 安装依赖
```bash
pip install -r requirements.txt
```

### 3. 配置
编辑 `config.json`，填写以下凭据：

| 字段 | 说明 |
| --- | --- |
| `APP_KEY` | 机器人 AppKey |
| `APP_SECRET` | 机器人 AppSecret |
| `API_DOMAIN` | API 域名（如 `bot.yuanbao.tencent.com`） |
| `WS_URL` | WebSocket 地址（如 `wss://bot-wss.yuanbao.tencent.com/wss/connection`） |
| `DEFAULT_GROUP_CODE` | 默认目标群 ID |
| `HEARTBEAT_INTERVAL` | 心跳间隔（秒，默认 10），失败自动重试 3 次后断开 |
| `IMAGE_GROUP_CODE` | AI 图片生成的目标群（可选） |

自动回复规则通过 `config.json` 中的 `AUTO_REPLY_RULES` 数组配置。

### 4. 启动
```bash
python3 app.py
```

首次运行自动创建 `logs/` 目录，控制台输出访问地址：
```
============================================================
  元宝 Bot Web 控制台 - V4.5
============================================================
  本地:  http://127.0.0.1:5000
  网络:  http://192.168.x.x:5000
  日志:  /path/to/logs/
============================================================
```

浏览器打开 `http://IP:5000` 即可使用。

---

## V4.2 新功能速查

| 功能 | 入口 | 说明 |
| --- | --- | --- |
| 👑 至尊黄金 | 设置 → 主题 | 浅金渐变 + 深金主色 |
| 👑 至尊黑金 | 设置 → 主题 | 深黑底 + 沉稳金 |
| 🎨 自定义渐变 | 设置 → 主题 → 🎨自定义渐变 | 4 个颜色拾取器 + 6 套预设 |
| 🚀 科技感 HUD 模式 | 设置 → 显示设置 | 赛博朋克企业控制台 |
| 📱 iOS 18 效果 | 设置 → 📱 界面效果 | 柔焦毛玻璃 + 980px 圆按钮 |
| 📱 鸿蒙 HarmonyOS | 设置 → 📱 界面效果 | 卡片化 + 16px 圆角 |
| 📱 HyperOS 小米 | 设置 → 📱 界面效果 | 18px 圆角 + 鲜艳渐变 |
| 📱 ColorOS OPPO | 设置 → 📱 界面效果 | 蓝绿调 + 微发光 |
| 📱 OriginOS vivo | 设置 → 📱 界面效果 | 20px 圆角 + 原子组件 |
| 📱 OneUI 三星 | 设置 → 📱 界面效果 | 12px 圆角 + 简洁大标题 |
| 📱 Flyme 魅族 | 设置 → 📱 界面效果 | 扁平 + 透明 + 下边框 |
| 📱 OxygenOS 一加 | 设置 → 📱 界面效果 | 6px 圆角 + 横向分割 |
| 📱 MagicOS 荣耀 | 设置 → 📱 界面效果 | 柔焦 + 紫罗兰光晕 |
| 📱 Material You | 设置 → 📱 界面效果 | 24px 圆角 + M3 风格 |
| 🌌 鸿蒙空间光感 | 设置 → 主题 / 📱 界面效果 | 鸿蒙 HarmonyOS 6 空间化沉浸光感 + 点击粒子 |
| 🪪 19 钻标铭牌 | 成员 → 🪪 设置 | 🔄 **V4.6 恢复**（V4.5 曾取消）：QQ 全系列钻标 + 预设铭牌 + 自定义昵称，存 localStorage |
| ✅ 认证蓝标 | 成员 → 🪪 设置 | 🔄 **V4.6 恢复**：认证蓝标可设置 |
| 👤 自定义头像 | 成员 → 🪪 设置 | 🔄 **V4.6 恢复**：自定义头像可设置 |
| 📲 展开式消息编辑器 | 消息栏底部 ⤢ 按钮 | 9 种模式 + 全功能 |
| 🔧 @全体协议修复 | 高级 → 艾特全体 | text 强制 "@所有人" + diag 诊断 |
| 🎨 按钮跟随主题色 | 全局 | `var(--primary)` 而非硬编码 |
| 📱 11 厂商按钮统一 | 全局 | MagicOS 去硬编码紫 + Flyme 透明 + 全员 :active 状态 |
| 👆 按钮按下变色 | 全局 | 颜色翻转 + 缩放 + 内阴影 + 描边光晕 |
| ✨ 毛玻璃开关 | 设置 → 显示 | `.glass-card` 毛玻璃渲染，可关降级半透明（液态玻璃厂商主题 V4.5 已移除） |
| 🗑️ 移除超大字 | 高级面板 | 已彻底移除 |
| 🎨 主题引擎重写 | 全局 | V4.3：语义色变量 + `@property` 丝滑过渡 + 深浅自适配 |
| 🔘 开关按钮跟随主题色 | 全局 | V4.3：`.toggle` 用 `--track`/`--primary`/`--knob`，修复按过不回色 |
| 🪟 暗夜选择器修复 | 全局 | V4.3：`html[data-theme=dark].theme-x` 每主题独立深色板 |
| 📋 回复规则管理 UI | 设置 → 🤖 自动回复 | V4.3：增删改 + 6 匹配类型 + 优先级 + 启用开关 |
| 🧩 插件生态 | 底部「🧩 插件」Tab | V4.4：Git 安装 + 启用/禁用/重载 + 动态页面/卡片 + `ctx` 全套 API |
| 🏢 企业简洁主题 | 设置 → 主题 | V4.5：低饱和中性灰 + 商务蓝，独立深浅双调色板 |
| 🎬 视频背景 | 设置 → 显示 → 背景模式 | V4.5：视频文件全屏铺底 + 暗化遮罩 |
| 🖼️ 在线图片编辑器 | 上传图片时弹出 | V4.5：裁剪 / 旋转 / 涂鸦 / 改色（黑白等）后导出 PNG |
| 🎵 可视化音乐播放器 | 底栏「🎵 音乐」Tab | ⚠️ **V6.5 已移除**（V4.5 全新，本构建不再存在） |
| 🤖 AI 聊天 | 底栏「🤖 AI」Tab | V4.5 全新 / **V6.5 多模态**：自定义 base_url/Key/模型，OpenAI 兼容 + 多模型管理 / 思考开关+强度 / 文件·图片附件 / 🎨 生图 / 💻 代码 / 🔌 测试连接 |
| 📋 本插件介绍 | 底栏「📋 本插件」Tab | **V6.5 全新**：V6.5·编号001·国家级企业定制版定位 + 外传提示 |
| 💬 @ 群成员（隐藏 ID） | 消息框输入 `@` | V4.5：昵称下拉插入 `@昵称 `，不带用户 ID |
| ⚙️ 个性化后端化 | `/api/settings` prefs | V4.5：主题/效果/AI 配置存后端，跨设备生效 |
| 📞 联系方式标识 | 标题栏右上角 | V4.5：显示「元宝派:247-446-999」 |
| 📄 config.json 可视化编辑器 | 设置 → 📄 配置文件可视化 | V4.5 移植自 v5.0：网页编辑/保存 config.json，热应用规则/心跳/群号（凭证需重启） |
| 🌊 全场景液态玻璃 | 设置 → 🌊 全场景液态玻璃 | V4.5：🍎真实折射+📱华为物理动效；总开关+物理引擎/折射/光影/性能 4 独立子开关；开关双色玻璃 |

---

## 后端架构

### 核心类

#### `MessageLogger`
消息日志记录器。后台线程 + 队列批量刷盘，按日期滚动写入 JSONL 和 TXT 双格式。

- `enable()` / `disable()` — 实时开关日志
- `stats()` — 今日写入量、队列积压、文件大小
- `read_recent()` / `list_files()` / `download()` — 日志查询与导出
- `MAX_FRONTEND_CACHE = 500` — 前端最大缓存条数

#### `SimpleProtobufCodec`
自实现简易 ProtoBuf 编解码器（非 protobuf 库）。编码/解码元宝机器人自定义二进制协议：

- 变长整数（Varint）编码
- 字符串/整数字段编码
- 消息头（Head）编解码：`cmd_type` / `cmd` / `seq_no` / `msg_id` / `module`
- TIM 消息体编码：文本、图片（`TIMImageElem`）、贴纸（`TIMFaceElem`）、文件（`TIMFileElem`）

#### `EnhancedSpamSender`
核心 Bot 类。管理 WebSocket 连接、消息收发、自动回复、转发、心跳与重连。

#### `PluginManager` / `PluginContext`（V4.4 新增）
插件加载器与运行时注册表。`PluginManager` 在启动时扫描 `plugins/` 目录、加载 `plugin.py` + `plugin.json`、调用 `register(ctx)`，并在消息接收循环与连接生命周期中分发 `on_message` / `on_connect` / `on_disconnect` 事件。`PluginContext` 是传递给插件的上下文对象，暴露 `send_*` / `on_*` / `register_*` / `get_config` / `save_config` 等 API。

关键方法：
| 方法 | 说明 |
| --- | --- |
| `connect()` | 建立 WebSocket 连接 + Token 签名认证 + 绑定消息推送 |
| `disconnect(manual=True)` | 优雅断开并清理资源（manual 区分手动/自动） |
| `_schedule_reconnect()` | 自动重连（指数退避 + 随机抖动 + 并发锁） |
| `_heartbeat()` | 定时心跳 Ping（重试 3 次） |
| `_receive_loop()` | 消息接收主循环 |
| `_handle_push_message()` | 推送消息分发（转发、自动回复、AI 图片、日志等） |
| `_handle_recall_notification()` | V4.1Pro+ 撤回消息处理（msg_id + msg_seq 双路径查找） |
| `_build_at_message(at_user)` | 构建 @ 消息，`at_user='all'` 时使用 `AT_ALL_SPECIAL_ID` |
| `_maybe_enqueue_proxy()` | 代理转发入队 |
| `_maybe_handle_yuanbao_reply()` | 检测并处理元宝 AI 回复 |
| `_maybe_handle_ai_image_reply()` | 检测 AI 图片回复并触发下载转发 |
| `get_auto_reply()` | 关键词匹配 + 规则优先级排序（数字越小越优先，跳过禁用规则） |

#### `SSEBroker`
Server-Sent Events 推送代理。将后端事件（新消息、状态更新等）通过 SSE 推送到前端。

- `subscribe()` / `unsubscribe()` — 客户端订阅管理
- `publish()` — 事件发布
- 独立轮询线程 + `collections.deque` 队列，不阻塞 Flask 线程

### 异步桥接（Async Bridge）
Flask 工作线程与后台 asyncio 事件循环之间的桥梁：

```python
_loop = None           # 后台事件循环
_loop_thread = None    # 事件循环线程

_ensure_loop()         # 确保循环运行
async_call(coro)       # 同步调用异步函数（带 Future）
async_call_no_wait(coro)  # 触发异步任务（fire-and-forget）
```

---

## API 文档

### 连接与状态
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/health` | 健康检查 |
| `GET` | `/api/status` | 连接状态、心跳、队列等 |
| `POST` | `/api/connect` | 连接 WebSocket |
| `POST` | `/api/disconnect` | 断开 WebSocket |
| `GET` | `/api/heartbeat` | 获取心跳配置 |
| `POST` | `/api/heartbeat/interval` | 设置心跳间隔 |

### 消息发送
| 方法 | 端点 | 说明 |
|---|---|---|
| `POST` | `/api/send` | 发送文本（支持 @ 成员 / @all / 私聊 / 刷屏 / LaTeX） |
| `POST` | `/api/send/at-all` | @ 全体成员（**V4.2 协议修复**：text 强制 `"@所有人"`，带 `at_type: "all"`） |
| `GET` | `/api/diag/at-all` | **V4.2 新增** @全体协议诊断（检查连接/群号/协议字段/checklist） |
| `POST` | `/api/send/ai-image` | AI 生成图片并发送 |
| `POST` | `/api/send-image` | 发送图片（通过 URL） |
| `POST` | `/api/send-file` | 发送文件 |
| `POST` | `/api/send-sticker` | 发送贴纸 |
| `POST` | `/api/send-reply` | 引用回复文本（支持刷屏） |

> **V4.2 变更**：`/api/send/big-text` 已移除（超大字功能下线）。
> **V4.2 新增**：`/api/diag/at-all` 诊断端点用于排查 @全体失败原因。

### 消息日志
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/msg-log/stats` | 日志统计信息 |
| `GET` | `/api/msg-log/files` | 历史文件列表 |
| `GET` | `/api/msg-log/recent` | 最近 N 条记录 |
| `GET` | `/api/msg-log/download` | 下载今日日志文件 |
| `POST` | `/api/msg-log/enable` | 开启日志 |
| `POST` | `/api/msg-log/disable` | 关闭日志 |
| `POST` | `/api/msg-log/toggle` | 开关切换 |
| `POST` | `/api/msg-log/clear-today` | 清空今日日志 |

### 转发模式
| 方法 | 端点 | 说明 |
|---|---|---|
| `POST` | `/api/forward-mode/enable` | 开启代理转发 |
| `POST` | `/api/forward-mode/disable` | 关闭代理转发 |
| `GET` | `/api/forward-mode/config` | 转发配置 |
| `GET` | `/api/forward-mode/queue` | 队列详情 |
| `POST` | `/api/forward-mode/clear-queue` | 清空队列 |
| `POST` | `/api/forward-mode/toggle-at-yuanbao` | 切换 @元宝 开关 |

### 自动回复
| 方法 | 端点 | 说明 |
|---|---|---|
| `POST` | `/api/auto-reply/enable` | 开启自动回复 |
| `POST` | `/api/auto-reply/disable` | 关闭自动回复 |
| `GET` | `/api/auto-reply/status` | 回复状态 |
| `POST` | `/api/auto-reply/test` | 测试匹配规则（返回命中规则与回复文本） |
| `GET` | `/api/auto-reply/rules` | 规则列表 |
| `POST` | `/api/auto-reply/rules` | 添加规则（含 `priority` / `enabled` / `group_only`） |
| `PUT` | `/api/auto-reply/rules/<index>` | 更新规则 |
| `DELETE` | `/api/auto-reply/rules/<index>` | 删除规则 |
| `POST` | `/api/auto-reply/rules/reorder` | 规则排序 |

> 规则 `match_type` 支持：`contains` / `contains_any`（多关键词逗号分隔，后端存为 `patterns`）/ `exact` / `startswith` / `endswith` / `regex`。`priority` 数字越小越优先；**前端「回复规则」面板**支持可视化增删改与优先级设置。

### 插件生态（V4.4 全新）
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/plugins` | 已安装插件列表（含 `pages` / `cards` / `message_handlers` / `routes` / `active` 等元数据） |
| `POST` | `/api/plugins/install` | 从 Git 仓库安装插件（`body: {url}`） |
| `POST` | `/api/plugins/toggle` | 启用/禁用插件（`body: {name, enabled}`） |
| `POST` | `/api/plugins/reload` | 重新加载插件（`body: {name?}`，省略则重载全部） |

> 插件约定：仓库克隆到 `plugins/<名称>/`，内含 `plugin.py`（必须暴露 `register(ctx)`）与 `plugin.json`（元数据）。`ctx` 提供发送（`send_group` / `send_at_all` / `send_sticker` / `send_image` / `send_file` / `send_c2c`）、事件（`on_message` / `on_connect` / `on_disconnect`）、注册（`register_blueprint` / `register_page` / `register_card`）与配置（`get_config` / `save_config`）API。卡片操作按钮 POST 到 `action.route`，卡片数据行 GET `row.route` 期望返回 `{"value": ...}`。详见仓库内 `plugins/example`。

### 群聊与成员
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/groups` | 群列表 |
| `POST` | `/api/groups/switch` | 切换当前群 |
| `GET` | `/api/group/name` | **V6.5 新增** 群名解析：参数 `group_code`，返回 `{ok, group_code, group_name, group_owner_user_id, group_owner_nickname}`；失败返回 400 |
| `GET` | `/api/members` | 成员列表（返回 `{ok, members, group_owner_user_id}`） |
| `GET` | `/api/messages` | 获取消息列表 |

### 用户管理
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/users` | 用户列表 |
| `POST` | `/api/users` | 添加用户备注 |
| `DELETE` | `/api/users/<user_id>` | 删除用户 |

### 贴纸
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/stickers` | 贴纸列表（含内置 + 自定义） |

### 设置
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/settings` | 获取所有设置（含 `prefs` 子字典） |
| `GET` | `/api/settings?key=<x>` | **V4.5 新增** 获取单个偏好键的值 |
| `POST` | `/api/settings` | 更新设置；支持 `{key, value}` 单键写入或 `{prefs:{...}}` 批量写入（V4.5 个性化后端化） |
| `GET` | `/api/config` | **V4.5 移植自 v5.0** 读取 `config.json` 完整内容（前端可视化渲染） |
| `POST` | `/api/config` | **V4.5 移植自 v5.0** 保存 `config.json`：原子写入 + 热应用运行时字段（`AUTO_REPLY_RULES` / 心跳 / 群号 / 消息记录等），返回 `restart_required` 提示需重启的字段 |

### 实时推送
| 方法 | 端点 | 说明 |
|---|---|---|
| `GET` | `/api/events` | SSE 事件流（新消息、状态变更、撤回通知等） |

---

## 前端结构

10 个 Tab 面板（插件 Tab 为内置 + 插件可注册的动态 Tab），全部内联于 `templates/index.html`：

| Tab | ID | 功能 |
| --- | --- | --- |
| 💬 消息 | `tab-messages` | 实时消息流 + 底部 ⤢ 按钮触发的展开式编辑器（V4.2）+ 💬 @ 群成员下拉（V4.5 隐藏 ID）+ 🏷️ 群 chip 显示群名（V6.5） |
| 📤 发送 | `tab-send` | 文本发送（含可用成员列表 @ 快捷 + LaTeX 编辑器） |
| 😀 贴纸 | `tab-stickers` | 内置贴纸包浏览与发送 |
| 👥 成员 | `tab-members` | 群成员列表 + 系统角色徽标 + 🪪 自定义铭牌/钻标/认证/头像（**V4.6 恢复**） |
| ⚙️ 高级 | `tab-advanced` | 转发模式、代理队列、AI 图片、@全体（**V4.2 已移除超大字**） |
| 🔧 设置 | `tab-settings` | 连接、自动回复、心跳、消息日志、显示设置、主题、🎬 视频背景 |
| 📒 记录 | `tab-logger` | 消息日志浏览与统计 |
| 🧩 插件 | `tab-plugins` | 插件安装/启用/禁用/重载 + 动态页面与卡片（V4.4） |
| 🤖 AI | `tab-ai` | **V4.5 全新，V6.5 多模态** AI 聊天：多模型管理 / 思考开关+强度 / 文件·图片附件 / 🎨 生图 / 💻 代码 / 🔌 测试连接 |
| 📋 本插件 | `tab-about` | **V6.5 全新** 产品介绍页（V6.5 · 编号 001 · 国家级企业定制版定位 + 外传提示） |

> ⚠️ **V6.5 变更**：原 V4.5 的「🎵 音乐」可视化播放器 Tab 在本构建中已移除，底栏不再包含音乐 Tab；上表「AI / 本插件」为当前实际 Tab 组合。

### 关键 JavaScript 函数

| 函数 | 说明 |
| --- | --- |
| `init()` | 页面初始化：连接 SSE、加载设置、恢复主题/科技模式、`_applyServerPref` 应用后端偏好 |
| `switchTab()` | Tab 切换（刷新成员列表） |
| `Music` | ⚠️ **V6.5 已移除**（原 V4.5 全新 音乐可视化播放器，本构建无此 Tab/函数） |
| `AI` | **V4.5 全新，V6.5 多模态** AI 聊天对象：`AI.send()` 浏览器直连 `POST ${baseUrl}/chat/completions`；多模型（`models` 数组）/ 思考（`reasoning_effort`+`thinking`）/ 附件 chip / 🎨 生图（抽图链）/ 💻 代码模式 / `AI.test()` 测 `GET ${baseUrl}/models` |
| `VideoBG` | **V4.5 全新** 注入全屏 `<video>` 背景，`setBackgroundMode('video')` |
| `ImgEditor` | **V4.5 全新** 画布图片编辑器：裁剪/旋转/涂鸦/滤镜（灰度等）→ `toBlob` PNG |
| `AtMention` | **V4.5 全新** 消息框 `@` 昵称下拉，插入 `@昵称 `（隐藏 ID） |
| `_persistPref(key,value)` | **V4.5 全新** 写入后端 `prefs`（`POST /api/settings`） |
| `_loadServerPref(key)` | **V4.5 全新** 读取后端 `prefs`（`GET /api/settings?key=`） |
| `_applyServerPref()` | **V4.5 全新** 启动时从后端拉取并应用主题/效果/AI 配置 |
| `toggleTheme()` | 亮/暗模式切换（localStorage 持久化） |
| `toggleGlass()` | **V4.2 已废弃**（空函数），改用 `togglePhoneEffect()` |
| `toggleTechMode()` | 科技感 HUD 模式开关 |
| `setPhoneEffect(id)` | **V4.2 全新** 切换手机厂商效果（11 套） |
| `renderEffectGrid()` | **V4.2 全新** 渲染厂商效果选择面板 |
| `applyPhoneEffect()` | **V4.2 全新** 应用厂商效果 CSS 类 |
| `applyQQTheme()` | 16 套 QQ 主题（含企业简洁）+ 自定义渐变应用 |
| `setQQTheme()` | 切换主题（至尊/默认/自定义渐变） |
| `applyCustomGradientVars()` | 自定义渐变主题变量注入 |
| `applyCustomPreset()` | 6 套自定义预设一键应用 |
| `renderThemeGrid()` | 渲染主题选择面板 |
| `renderMembers()` | 渲染成员列表（系统角色徽标 + 🪪 自定义铭牌/钻标/认证/头像，**V4.6 恢复**） |
| `openBadgeModal(uid, nick)` | **V4.6 恢复** 打开成员铭牌编辑器（自定义昵称 + QQ 全系列钻标 + 认证蓝标 + 头像） |
| `saveBadge()` | **V4.6 恢复** 保存铭牌到 localStorage |
| `removeBadge()` | **V4.6 恢复** 删除铭牌 |
| `exportMemberBadges()` | **V4.6 恢复** 导出铭牌数据为 JSON |
| `importMemberBadges()` | **V4.6 恢复** 从 JSON 导入铭牌数据 |
| `updateGroupChips()` | **V6.5 全新** 渲染消息筛选「群 chip」，经 `GET /api/group/name` 解析并展示群名（群名(群号)），`state.groupNameCache` 去重拉取 |
| `openChatComposer()` | 打开消息栏展开式编辑器 |
| `setComposerMode(mode)` | 切换展开编辑器的发送模式 |
| `sendFromComposer()` | 从展开编辑器发送消息 |
| `sendAtAll()` | **V4.2 增强** @全体（先调 `/api/diag/at-all` 诊断 + 详细错误码） |
| `showToast(msg, type, duration)` | **V4.2 增强** 支持自定义显示时长 |
| `sendMessage()` / `sendSticker()` / `sendReply()` | 各种消息发送 |
| `sendImage()` / `sendFile()` | 多媒体发送 |
| `sendAtAll()` | @全体成员（使用 `AT_ALL_SPECIAL_ID`） |
| `sendAiImage()` | AI 图片生成发送 |

### 设计主题
- **16 套 QQ 调色盘主题**：默认/经典蓝/清新绿/热情红/神秘紫/樱花粉/活力橙/薄荷青/柠檬黄/浪漫樱/深邃海/暗夜黑/**至尊黄金**/**至尊黑金**/**🌌 鸿蒙空间光感**/**🏢 企业简洁（V4.5）**
- **全色域自定义渐变**：4 个独立颜色拾取器，支持任意颜色组合 + 6 套预设
- **11 套手机厂商 UI 效果**（V4.2 替代液态玻璃；**液态玻璃厂商主题 V4.5 已移除**）：iOS 18 / 鸿蒙 / HyperOS / ColorOS / OriginOS / OneUI / Flyme / OxygenOS / MagicOS / Material You / 🌌 鸿蒙空间光感
- **科技感 HUD 模式**：等宽字体 + 霓虹辉光 + 动态网格 + 扫描线
- **夜间模式**：通过 `data-theme="dark"` 属性切换 CSS 变量
- **无框架单页**：纯 CSS 变量体系，零外部依赖
- **🎬 视频背景（V4.5）**：设置 → 显示 → 背景模式可选视频文件全屏铺底
- **📞 标题栏联系方式（V4.5）**：右上角显示「元宝派:247-446-999」

---

## 配置说明

### config.json
```json
{
  "APP_KEY": "your_app_key",
  "APP_SECRET": "your_app_secret",
  "API_DOMAIN": "bot.yuanbao.tencent.com",
  "WS_URL": "wss://bot-wss.yuanbao.tencent.com/wss/connection",
  "DEFAULT_GROUP_CODE": "群ID",
  "IMAGE_GROUP_CODE": "AI图片目标群ID",
  "YUANBAO_ID": "元宝AI的ID",
  "AUTO_REPLY_GROUP_TEXT": "群聊默认回复",
  "AUTO_REPLY_C2C_TEXT": "私聊默认回复",
  "AUTO_REPLY_RULES": [
    {
      "match_type": "contains_any",
      "patterns": ["你好", "hi"],
      "priority": 1,
      "reply_text": "你好呀~"
    }
  ],
  "HEARTBEAT_INTERVAL": 10,
  "FORWARD_MODE_ENABLED": false,
  "FORWARD_AT_ONLY": false,
  "MSG_LOG_ENABLED": true
}
```

> `AUTO_REPLY_RULES` 支持以下 `match_type`：
> - `contains` — 包含关键词匹配
> - `contains_any` — 包含任一关键词匹配（多关键词逗号分隔，存为 `patterns`）
> - `exact` — 文本完全等于
> - `startswith` — 文本以关键词开头
> - `endswith` — 文本以关键词结尾
> - `regex` — 正则表达式匹配
>
> 每条规则可带 `priority`（数字越小越优先，默认追加到末尾）、`enabled`（是否启用，默认 true）、`group_only`（仅群聊生效，默认 false）。前端「设置 → 🤖 自动回复 → 回复规则」提供可视化编辑。

---

## 常见问题

**Q: 消息日志不记录？**
检查 `MSG_LOG_ENABLED` 是否为 `true`，或在前端"记录" Tab 查看日志开关状态。

**Q: AI 图片生成报错 "There is no current event loop"？**
这是 v3.4 修复的 Python 3.13 兼容问题。确认 `app.py` 中 `api_send_ai_image()` 已使用 `_ensure_loop()` + `_loop.create_future()` 而非 `asyncio.get_event_loop()`。

**Q: 长期运行磁盘空间怎么办？**
日志文件按日期滚动且永久累积。建议定期通过 API `POST /api/msg-log/clear-today` 清理，或配置 crontab 自动清理 30 天前的日志。

**Q: 页面很卡？**
可在"设置"Tab 切换为"Flyme 魅族"或"OxygenOS 一加"等轻量效果（无 `backdrop-filter`），并切换背景为"玻璃纯色"或关闭自定义图片，显著降低移动端/低端设备的渲染开销。V4.0 已对状态轮询与 SSE 推送做了节流优化。

**Q: 自定义背景图片很大/不显示？**
自定义背景使用浏览器 localStorage 存储，前端会自动将图片压缩至约 1.5MB 以内；若原图过大将提示选择更小的图片。背景与各厂商效果互相独立，可同时开启。

**Q: 为什么之前会频繁自动重连？**
V4.0 重写了重连逻辑：重连前彻底清理旧连接与旧任务、每次重连刷新 token、采用指数退避 + 随机抖动、并用锁防止并发重连任务雪崩。手动"断开"不会触发自动重连（`disconnect(manual=True)` 区分）。

**Q: 至尊主题与自定义渐变有什么差别？**
- **至尊黄金/黑金**：预设调色，质感统一（金色商务/高奢金属），直接切换即可
- **自定义渐变**：4 个独立颜色拾取器（主色 A/B + 背景 A/B），支持任意颜色组合，内置 6 套预设（粉紫/青蓝/落日/森林/极光/商务）

**Q: 个性化设置（主题/效果/AI 配置）存在哪里？**
V4.5 起个性化偏好通过扩展的 `/api/settings` 存于**后端 `settings['prefs']`**（主题、厂商效果、AI 聊天配置等），跨设备、跨浏览器自动生效；基础外观（自定义渐变颜色、科技模式开关等）仍存于浏览器 `localStorage`。原「铭牌/认证/头像」功能已在 V4.5 取消，相关 localStorage 数据不再使用。

**Q: 为什么要移除超大字？**
V4.2 精简功能并强化 UI，超大字（服务端 PIL 渲染大字体图片）属于相对边缘的功能，且依赖 PIL 字体。下线后 `app.py` 减少约 110 行代码与一组字体候选列表，性能更轻量。

**Q: 毛玻璃（Glass）开关和手机厂商效果有什么区别？可以同时用吗？**
两者可以**叠加使用**，互不冲突：
- **毛玻璃开关（`.glass-card`）**：所有卡片/输入框/Tab 栏使用 `backdrop-filter: blur()` + 半透明背景。属于"通用背景渲染方式"，可在设置 → 显示中开关。
- **手机厂商效果**：定义卡片的**圆角/阴影/字体/边距/微动效**。属于"系统风格系统"（11 套）。
- 组合效果：例如 iOS 18 + 毛玻璃开启 = 真正的 iOS 系统风（毛玻璃卡片 + 980px 圆角按钮）；Flyme + 毛玻璃关闭 = 真正的 Flyme 扁平风（无毛玻璃 + 下边框）。
- ⚠️ **V4.5 变更**：原「液态玻璃 Liquid Glass」**手机厂商效果主题**（`effect-liquid-glass`）已在 V4.5 移除，此处提到的"毛玻璃"仅指 `.glass-card` 渲染开关，请勿与已移除的厂商主题混淆。

**Q: 按钮颜色怎么切换？按下按钮会有什么变化？**
- **颜色**：所有按钮现在使用 `var(--primary)` / `var(--primary-hover)` / `var(--success)` / `var(--danger)` 主题色变量，切换主题时按钮自动变色（蓝/金/红/绿等）。
- **悬停（hover）**：按钮整体上移 1px + 主色辉光扩散。
- **按下（active）**：颜色**翻转**（hover→active 渐变方向互换）+ 缩放至 0.94 + 主色描边光晕 `0 0 0 2px` + 内阴影 `inset 0 3px 12px` + 整体亮度降低 15%。多种视觉信号叠加，按下时**非常显眼**。

**Q: @全体成员发送后没有强提醒？**
V4.2 已修复：旧代码会在 @ 元素中拼接 `text="@全体成员"`（取自 `at_nickname`），元宝协议要求必须是 `"@所有人"`。修复后接口会自动用 `"@所有人"` + `"at_type": "all"` + `AT_ALL_SPECIAL_ID = "NTNX+5sHarbiWHHk+P1yHw=="` 构造消息体。如果仍失败，按 `GET /api/diag/at-all` 返回的 checklist 排查（机器人是否群管理员、群是否禁用 @全体、APP_KEY 是否有 @全体 权限等）。

**Q: 铭牌/钻标/认证/自定义头像功能去哪了？**
该功能**已恢复**。V4.5 曾整体取消原 V4.2 的「🪪 自定义铭牌 / ✅ 认证蓝标 / 👤 自定义头像 / 💎19 钻标」系统（降级为空操作），但 **V4.6 已重新恢复为可用功能**。现在在「👥 成员」列表点击目标成员，行内出现「🪪 设置」按钮，可设置自定义昵称、QQ 全系列钻标、认证蓝标与自定义头像；`saveBadge` / `removeBadge` / `exportMemberBadges` / `importMemberBadges` 均已实现，数据存 localStorage，成员列表即时显示。

**Q: 视频背景怎么用？和图片背景冲突吗？**
设置 → 显示设置 → 背景模式 → 选「🎬 视频背景」，选择本地视频文件后全屏铺底并循环播放（静音）。视频背景与自定义图片背景**互斥**，选择视频会自动取消图片背景；暗化遮罩依旧生效以保证文字可读。

**Q: AI 聊天支持哪些模型？能发图片吗？**
AI 聊天（底栏「🤖 AI」Tab）调用任意 **OpenAI 兼容**接口：填写你的 `base_url`、`api_key`、`model`、`system` 提示词即可。**V6.5 起不再局限于纯文本**：
- **多模型**：同一份表单可无限次「保存配置」，列表支持编辑 / 删除 / 设为当前，每个模型独立保存思考开关与强度
- **思考（reasoning）**：开启后按强度注入 `reasoning_effort` / `thinking`，适配支持推理的模型
- **附件**：📎 文件 / 🖼️ 图片 上传（以 chip 展示并写入 prompt 前缀，属提示词级上下文，并非 multipart 真正传二进制给模型）
- **🎨 生图模式**：从回复中抽取图片直链并展示 + 下载
- **💻 代码模式**：约束模型仅输出代码块
- **🔌 测试连接**：`GET ${base_url}/models` 校验可用性

**Q: 为什么找不到「🎵 音乐」播放器了？**
V6.5 构建中已**移除**原 V4.5 的「🎵 音乐」可视化播放器 Tab，底栏 Tab 组合为 消息 / 发送 / 贴纸 / 成员 / 高级 / 设置 / 记录 / 插件 / AI / 本插件，不再包含音乐 Tab。如需本地音乐可视化，请回退到 V4.5 构建。

**Q: 消息筛选区的「群 chip」只显示群号，没有群名？**
V6.5 新增了群名解析：消息筛选区的「群 chip」会通过 `GET /api/group/name?group_code=xxx` 异步拉取群名并展示为「群名（群号）」；若该群尚未加载或接口无返回，则降级只显示群号（由 `updateGroupChips()` 配合 `state.groupNameCache` 去重拉取）。

**Q: 「📋 本插件」Tab 是什么？启动验证密码在哪里？**
「📋 本插件」是 V6.5 新增的产品介绍 Tab，展示「V6.5 · 编号 001 · 国家级企业定制版」定位与功能清单，并强调本产品及**初始化启动验证密码**不得以任何形式外传。该页面对「内置专属初始化启动验证」做了说明，相关凭证请按页面与对应管理规定妥善保管，不要外泄。

**Q: @ 群成员时为什么会带出用户 ID？**
不会。V4.5 的 `@` 群成员功能（在消息框输入 `@`）只弹出**昵称**下拉，插入格式为 `@昵称 `，**绝不带出任何用户 ID**；用户 ID 仅在前端内部用于发包，不会出现在文本框或聊天内容中。

**Q: config.json 可视化编辑器改了配置马上生效吗？**
V4.5 的「📄 配置文件可视化」区块（设置页，移植自 v5.0）：🟢 **自动热应用**——`AUTO_REPLY_RULES`（自动回复规则）/ `DEFAULT_REPLY` / 心跳间隔 / 群号 / 消息记录开关等保存后立即生效；🟡 **需重启**——`APP_KEY` / `APP_SECRET` / `PORT` / `IMAGE_GROUP_CODE` 等连接凭证修改后需重启服务；🔒 `API_DOMAIN` / `WS_URL` / `YUANBAO_ID` 属敏感信息，页面不显示，请直接编辑文件。后端由 `GET/POST /api/config` 支撑，写入采用原子替换（先写 `.tmp` 再 `os.replace`）。

**Q: 自动回复规则（回复规则）如何管理？以哪份为准？**
回复规则来自 `config.json` 的 `AUTO_REPLY_RULES`，有两处可视化入口：① 设置页「🤖 自动回复」的规则管理 UI（V4.3 起，支持增删改 / 6 种匹配类型 / 优先级 / 启停）；② V4.5 移植的「📄 配置文件可视化」区块，可直接编辑 `AUTO_REPLY_RULES` 数组并热应用。两者最终都写到同一份 `config.json`，**以你最近一次保存的为准**；若需"以新规则覆盖旧规则"，在可视化编辑器里整体替换该数组并保存即可。本次上传的 v5.0 文件未附带 `config.json`，故无外部新规则需要强制替换。

---

## 许可

本项目代码基于 MIT 协议开源。

> **源码声明（移植自 v5.0）**：本项目基于 [anxi78/yuanbao_bot_client](https://github.com/anxi78/yuanbao_bot_client) 修改而来，原项目采用 MIT 协议，版权归原作者所有。本控制台在该上游项目基础上进行了大量二次开发（主题引擎、插件生态、多媒体与 AI 增强、config.json 可视化编辑器等）。
