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
| 标题编号 (Heading ID)    | ### My Great Heading {#custom-id}             |
| 定义列表 (Definition List) | term <br> : definition                       |
| 删除线 (Strikethrough)   | ~~The world is flat.~~                        |
| 任务列表 (Task List)     | - [x] Write the press release <br> - [ ] Update the website <br> - [ ] Contact the media |

</div>

~ 公理1.1 ~

~公理1.1~

**以上内容来自 [Markdown 语法官方中文教程](https://markdown.com.cn/basic-syntax/links.html)**

##  2.Markdown 语法报错修正

1. 代码块  ``

Markdown 代码块中的代码是保存功能而不仅仅只是展示用的，因此，当处于代码块中的代码是关于页面设定的代码，那么，它就会影响网页的生成。

为了避免这种情况，我们需要采用如下语法来规避影响：

 **HTML 标签**
在需要显示代码时，可以使用 `<code>` 或 `<pre>` 标签来确保代码的正确显示，这些标签不会引起 Markdown 渲染问题。  
例如：
```html
<code>`代码`</code>
```

更保险一些可以改写为

```html
<pre><code>`代码`</code></pre>
```

其中 pre 标签是 HTML 中的一个标签，用于定义 预格式化文本。它的作用是按照原样保留文本的格式，尤其是 空格、换行和制表符 等白空格字符，不会被浏览器自动压缩或忽略。常用于显示格式化的文本内容，比如代码、日志文件等。

以及，三个反引号之后的语法声明，例如 三反引号+html 只是使得代码块中的 HTML 语法高亮显示，而不是对其格式化。

##  3.LaTex渲染测试

测试项目（1）：行内渲染和展示渲染

{{<latex display="false">}} S[x^A(t)]=\int dtL(x^A(t),\dot{x}^A(t))\tag{1.0} {{</latex>}}

---

{{<latex display="true">}}
d \mathord{ \buildrel{ \lower3pt \hbox{$ \scriptscriptstyle \rightharpoonup$}} \over B} = \frac{{{ \mu _0}}}{{4 \pi }} \frac{{Idl \times \mathord{ \buildrel{ \lower3pt \hbox{$ \scriptscriptstyle \rightharpoonup$}} \over r} }}{{{r^3}}} =  \frac{{{ \mu _0}}}{{4 \pi }} \frac{{Idl \sin \theta }}{{{r^2}}} 
{{</latex>}}

---

结果表明，展示渲染块内无需添加 // 以声明展示居中，这正是我们特地定义展示渲染模式的目的。**（事实上，展示渲染加 // 会导致报错）**

根据 layouts/shortcode/latex.html 设定，<code>{{latex}}</code>
默认 display="true" 因此展示渲染可以直接使用 <code>{{latex}}{{/latex}}</code>，行内展示则需要定义 display="false"。**(但是保险起见还是全都加上 dispaly 属性的好，因为有时 api 会因为一些神必原因而为此报错)**


测试结果项目（2）：公式内空格

`S[f+\epsilon \delta f]=\int\limits_{t_1}^{t_2}dtL(t_,f+\epsilon \delta f,f'+\epsilon \delta f',f''+\epsilon \delta f''+\cdots)`

{{<latex display="true">}}
S[f+\epsilon \delta f]=\int\limits_{t_1}^{t_2}dtL(t_,f+\epsilon \delta f,f'+\epsilon \delta f',f''+\epsilon \delta f''+\cdots)
{{</latex>}}

`S[f+\epsilon\delta f]=\int\limits_{t_1}^{t_2}dtL(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)`

{{<latex display="true">}}
S[f+\epsilon\delta f]=\int\limits_{t_1}^{t_2}dtL(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)
{{</latex>}}

测试结果项目（3）：公式写法

1. \bigg、\equiv 等特殊符号都是可用的。
2. align 环境中不可插入中文，需要使用 \text{}。
3. 特殊符号也不可携带中文，例如：\xlongequal{\text{变分与求导交换顺序}}、_{\text{全导数}}。因此，我们或者使用全英文，或者对中文使用 \text{} 转写。
4. <code>{{latex}}</code> 内可以无需在意符号转义。但是为了避免报错，还是建议当输入 f'(x) 这样的符号时，' 尽量使用英文冒号键而不是反引号键。
5. 测试项目(2)证明了特殊符号之间的空格不影响渲染结果，但是，需要注意的是，特殊符号和字母之间必须有空格，例如 \delta L。因为 \deltaL 这个特殊符号是不存在的。
6. Markdown 加粗语法可以包裹 LaTeX 代码。

> 有序列表、无序列表都需要在文本和序号之间加一个空格符。

### 4.脚注样式测试

The Einstein field equations (EFE) may be written in the form:[^1]

where {{<latex display="false">}} G_{\mu\nu} {{</latex>}} is the Einstein tensor, {{<latex display="false">}} g_{\mu\nu} {{</latex>}} is the metric tensor,{{<latex display="false">}} T_{\mu\nu} {{</latex>}} is the stress–energy tensor, {{<latex display="false">}} \Lambda {{</latex>}}is the cosmological constant and{{<latex display="false">}} \kappa {{</latex>}}is the Einstein gravitational constant.

[^1]:Footnote 1.<br>爱因斯坦场方程（EFE）可以写成：{{<latex display="true">}}G_{\mu \nu}+\Lambda g_{\mu \nu}=\kappa T_{\mu \nu}{{</latex>}}where {{<latex display="false">}} G_{\mu\nu} {{</latex>}} is the Einstein tensor, {{<latex display="false">}} g_{\mu\nu} {{</latex>}} is the metric tensor,{{<latex display="false">}} T_{\mu\nu} {{</latex>}} is the stress–energy tensor, {{<latex display="false">}} \Lambda {{</latex>}}is the cosmological constant and{{<latex display="false">}} \kappa {{</latex>}}is the Einstein gravitational constant.


