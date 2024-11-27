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

文章错误测试：

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \left. \frac{d}{d\epsilon} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \frac{\epsilon^2}{2!} \left. \frac{d^2}{d\epsilon^2} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \cdots
{{</latex>}}

{{<latex display="true">}}
f(x) = f(x_0) + \frac{f'(x_0)}{1!}(x-x_0) + \frac{f''(x_0)}{2!}(x-x_0)^2 + \cdots + \frac{f^(n)(x_0)}{n!}(x-x_0)^n + R_n
{{</latex>}}

{{<latex display="true">}}
R_n(x) = o[(x-x_0)^n]
{{</latex>}}

{{<latex display="true">}}
f(x) = f(0) + \frac{f'(0)}{1!}x + \frac{f''(0)}{2!}x^2 + \cdots + \frac{f^(n)(0)}{n!}x^n + R_n
{{</latex>}}

{{<latex display="true">}}
R_n(x) = o[x^n]
{{</latex>}}

{{<latex display="true">}}
S[f + \epsilon f] = S[f] + \epsilon \delta S[f] + \frac{\epsilon^2}{2!} \delta^2 S[f] + \frac{\epsilon^3}{3!} \delta^3 S[f] + \cdots
{{</latex>}}

{{<latex display="true">}}
\delta S = \frac{d}{d\epsilon} S[f + \epsilon \delta f] \bigg|_{\epsilon=0} = \int dt \, \frac{\delta S}{\delta f(t)} \delta f(t)
{{</latex>}}

{{<latex display="true">}}
\delta^2 S = \frac{d^2}{d\epsilon^2} S[f + \epsilon \delta f] \bigg|_{\epsilon=0} = \int dt_1 \int dt_2 \, \frac{\delta^2 S}{\delta f(t_1) \delta f(t_2)} \delta f(t_1) \delta f(t_2)
{{</latex>}}

{{<latex display="true">}}
S[f + \epsilon \delta f] = \int_{t_1}^{t_2} dt L\left(t, f + \epsilon \delta f, f' + \epsilon \delta f', f'' + \epsilon \delta f'' + \cdots \right)
{{</latex>}}

{{<latex display="true">}}
\begin{align} 
\delta S&=\left.\int\limits_{t_1}^{t_2}dt\frac{d}{d\epsilon}L(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)\right|_{\epsilon=0}\\  
&\text{其中} f+\epsilon\delta f \text{是关于} \epsilon \text{的函数} f(\epsilon)，f' \text{同理}\\ 
&=\int\limits_{t_1}^{t_2}dt\underbrace{(\frac{\partial L}{\partial f}\delta f+\frac{\partial L}{\partial f'}\delta f'+\frac{\partial L}{\partial f''}\delta f''+\cdots)}_{\equiv\delta L} 
\end{align}
{{</latex>}}

{{<latex display="true">}}
\delta S \equiv \delta \left( \int_{t_1}^{t_2} dt L \right) = \int_{t_1}^{t_2} dt \delta L
{{</latex>}}

{{<latex display="true">}}
\delta S[f] := \int dt \frac{\delta S}{\delta f} \delta f
{{</latex>}}

{{<latex display="true">}}
\delta S = \int_{t_1}^{t_2} dt \frac{d}{d\epsilon} L(t, f + \epsilon \delta f, f' + \epsilon \delta f', f'' + \epsilon \delta f'' + \cdots) \bigg|_{\epsilon=0}
{{</latex>}}

{{<latex display="true">}}
= \int_{t_1}^{t_2} dt \left( \frac{\partial L}{\partial f} \delta f + \frac{\partial L}{\partial f'} \delta f' + \frac{\partial L}{\partial f''} \delta f'' + \cdots \right) \equiv \delta L
{{</latex>}}

{{<latex display="true">}}
\frac{\partial L}{\partial f'}\delta f'\xlongequal{\text{变分与求导交换顺序}}\frac{\partial L}{\partial f'}\frac{d}{dt}\delta f=\underbrace{\frac{d}{dt}(\frac{\partial L}{\partial f'}\delta f)}_{\text{全导数}}-\frac{d}{dt}(\frac{\partial L}{\partial f'})\delta f
{{</latex>}}

{{<latex display="true">}}
(uv)' = u'v + uv' \quad \Rightarrow \quad uv' = (uv)' - u'v
{{</latex>}}

{{<latex display="true">}}
\begin{align}
\frac{\partial L}{\partial f''} \delta f'' &= \frac{\partial L}{\partial f''} \frac{d^2}{dt^2} \delta f \\
&= \frac{d}{dt} \left( \frac{\partial L}{\partial f''} \frac{d}{dt} \delta f \right) - \frac{d}{dt} \left( \frac{\partial L}{\partial f''} \right) \frac{d}{dt} \delta f \\
&= \underbrace{\frac{d}{dt} \left[ \frac{\partial L}{\partial f''} \delta f' \right] - \frac{d}{dt} \left( \frac{\partial L}{\partial f''} \right) \delta f' }_{\text{全导数}}+ \frac{d^2}{dt^2} \left( \frac{\partial L}{\partial f''} \right) \delta f
\end{align}
{{</latex>}}

{{<latex display="true">}}
\begin{align}
\delta S &= \int\limits_{t_1}^{t_2} dt 
\left[
\frac{\partial L}{\partial f} \delta f
- \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) \delta f
+ \frac{d^2}{dt^2} \left( \frac{\partial L}{\partial f''} \right) \delta f
+ \cdots
+ \frac{d \mathcal{B}}{dt}
\right] \\
&= \int\limits_{t_1}^{t_2} dt 
\left[
\frac{\partial L}{\partial f}
- \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right)
+ \frac{d^2}{dt^2} \left( \frac{\partial L}{\partial f''} \right)
+ \cdots
\right] \delta f
+ \mathcal{B} \bigg|_{t_1}^{t_2}
\end{align}
{{</latex>}}

{{<latex display="true">}}
\delta S[f] := \int dt \frac{\delta S}{\delta f} \delta f
{{</latex>}}

{{<latex display="false">}}
\delta S
{{</latex>}}

{{<latex display="true">}}
\begin{align}
\delta f|_{t_1} &= \delta f|_{t_2} = 0 \\
\delta f'|_{t_1} &= \delta f'|_{t_2} = 0 \\
&\vdots \\
\delta f^{(n-1)}|_{t_1} &= \delta f^{(n-1)}|_{t_2} = 0
\end{align}
{{</latex>}}

{{<latex display="true">}}
L_1 \simeq L_2 \Leftrightarrow L_1 = L_2 + \frac{dF(t, f, f', \cdots)}{dy}
{{</latex>}}

{{<latex display="true">}}
S_1 \simeq S_2 \Leftrightarrow S_1 = S_2 + L|_{t_1}^{t_2}
{{</latex>}}

{{<latex display="true">}}
\frac{\partial L}{\partial f'} \delta f' \simeq -\frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) \delta f, \quad
\frac{\partial L}{\partial f''} \delta f'' \simeq \frac{d^2}{dt^2} \left( \frac{\partial L}{\partial f''} \right) \delta f
{{</latex>}}