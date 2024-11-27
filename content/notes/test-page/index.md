---
title: 测试专用页
date: 2024-01-01
lastmod: 2024-01-15
toc: true
---

##  1.Markdown 语法

<div class="wide-table">
<!-- 这是一个注释，此处要使得 markdown 表格显示，必须在 html 下空一行 -->

| 元素           | Markdown 语法             |
| -------------- | ------------------------- |
| 标题 (Heading) | # H1 <br> ## H2 <br> ### H3 |
| 粗体 (Bold)    | **bold text**             |
| 斜体 (Italic)  | *italicized text*         |
| 引用块 (Blockquote) | > blockquote           |
| 有序列表 (Ordered List) | 1. First item <br> 2. Second item <br> 3. Third item |
| 无序列表 (Unordered List) | - First item <br> - Second item <br> - Third item |
| 代码 (Code)    | `code`                    |
| 分隔线 (Horizontal Rule) | ---               |
| 链接 (Link)    | [title](https://www.example.com) |

</div>

- 一级列表项 1
  - 二级列表项 1.1
    - 三级列表项 1.1.1
  - 二级列表项 1.2
- 一级列表项 2

<div class="wide-table">

| 元素                     | Markdown 语法                                  |
| ------------------------ | ---------------------------------------------- |
| 表格 (Table)             | \| Syntax \| Description \| <br> \| -------- \| ----------- \| <br> \| Header \| Title \| <br> \| Paragraph \| Text \| |
| 代码块 (Fenced Code Block) | ``` <br> { <br> "firstName": "John", <br> "lastName": "Smith", <br> "age": 25 <br> } <br> ``` |
| 脚注 (Footnote)          | Here's a sentence with a footnote. [^1] <br> [^1]: This is the footnote. |
| 标题编号 (Heading ID)    | ### My Great Heading {#custom-id}             |
| 定义列表 (Definition List) | term <br> : definition                       |
| 删除线 (Strikethrough)   | ~~The world is flat.~~                        |
| 任务列表 (Task List)     | - [x] Write the press release <br> - [ ] Update the website <br> - [ ] Contact the media |

</div>

~ 公理1.1 ~

~公理1.1~

**以上内容来自 [Markdown 语法官方中文教程](https://markdown.com.cn/basic-syntax/links.html)**

##  2.LaTex渲染测试

{{<latex display="false">}} S[x^A(t)]=\int dtL(x^A(t),\dot{x}^A(t))\tag{1.0} {{</latex>}}


---

{{<latex>}}d \mathord{ \buildrel{ \lower3pt \hbox{$ \scriptscriptstyle \rightharpoonup$}} \over B} = \frac{{{ \mu _0}}}{{4 \pi }} \frac{{Idl \times \mathord{ \buildrel{ \lower3pt \hbox{$ \scriptscriptstyle \rightharpoonup$}} \over r} }}{{{r^3}}} =  \frac{{{ \mu _0}}}{{4 \pi }} \frac{{Idl \sin \theta }}{{{r^2}}} {{</latex>}}

---

{{<latex display="true">}}\delta S = \int_{t_1}^{t_2} dt \frac{d}{d\epsilon} L(t, f + \epsilon \delta f, f' + \epsilon \delta f', f'' + \epsilon \delta f'' + \cdots) \bigg|_{\epsilon=0}{{</latex>}}

---

{{<latex display="true">}}
f(x) = f(x_0) + \frac{f'(x_0)}{1!}(x-x_0) + \frac{f''(x_0)}{2!}(x-x_0)^2 + \cdots + \frac{f^(n)(x_0)}{n!}(x-x_0)^n + R_n
{{</latex>}}

---

{{<latex display="true">}}
R_n(x) = o[(x-x_0)^n]
{{</latex>}}