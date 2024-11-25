##  网站使用指南

（网站地址：[Calenton](https://chiara-lee.netlify.app)https://chiara-lee.netlify.app）

### 1.评论邮箱

由于本网站采用的是 Netlify 支持的评论表单系统，暂时并未配置单独的注册系统。

因此，目前本网站仅支持访客以邮箱身份访问网站。如果您希望在本网站上发布评论的话，您可以将常用的邮箱地址输入评论表单的 Email 一栏中，如此，就可以通过邮箱信息来发表评论了。

### 2.头像

您在网站上的头像是采集您的邮箱信息来设置的。

您可以通过直接在邮箱平台更改自己的头像来使用自己喜欢的形象。同时，您也可以跟随以下步骤来保证*头像的一致性*。

目前，有许多平台都接受 Gravatar 全球通用头像（Globally Recognized Avatar），Gravatar 通过用户的邮箱地址来识别和检索头像。每个邮箱地址在 Gravatar 上都有一个唯一的头像 ID。只要用户在网站上使用绑定的邮箱地址，Gravatar 就会自动显示对应的头像。网站只需通过邮箱的 MD5 哈希值向 Gravatar 请求头像，即可确保用户隐私。

许多网站和平台（如 WordPress、GitHub、Stack Overflow 等）默认支持 Gravatar，当用户登录这些网站时，会根据注册邮箱从 Gravatar 自动获取头像。利用这个网站，我们可以确保头像的一致性。

它的操作也很简单，大家可以跟随下面的步骤进行设置。

1.登录 [WordPress](https://wordpress.com/zh-cn/)。在这个平台上创建一个账号。因为 Gravatar 和 WordPress 是绑定的，如果你的邮箱没有绑定 WordPress 账号，那么你就无法在 Gravatar 注册。

2.之后，点击右上角的头像
![](/static/image/readme/1.png)
根据表单的提示信息，进行填写和保存。

3.登录 [Gravatar](https://gravatar.com/)。使用你已经绑定了 WordPress 的邮箱进行注册，Gravatar 在检测到相关的 WordPress 账号后会自动分配一个与此账号信息关联的 Gravatar 账号。

4.进入网站后，你应该可以看到类似这样的界面

![](/static/image/readme/2.png)

你可以在右侧设计自己的信息卡片什么的。设置完成之后，我们的头像就实现 Gravatar 平台通用了。

而关于评论的显示，只有一点需要提醒，如果你是网站的建设者，那么当你的评论表单（Netlify Form 或者 Formspree form）接收到评论之后，你都需要再次部署网站才能看见该评论的展示。

### 3.网站浏览

如果您使用的是  Google Chrome，那么推荐您使用 90% 的缩放比例来访问本网站以获得最佳体验。

![](/static/image/readme/3.png)

其他网站可以通过类似的方法来调整网站的缩放比例。