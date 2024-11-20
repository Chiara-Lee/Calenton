---
title: 1.2 样式表内容
date: 2024-11-20
lastmod: 2024-11-20
tags: [前端开发]
toc: true
---

在样式表（stylesheet）中，你会发现它们的规则看起来是这样的：
```css
/* 示例代码，仅用于展示 */
.example h1 {
    color: maroon; /* 改变一级标题颜色 */
}

.example body {
    background: yellow; /* 设置背景颜色 */
}
```
诸如此类的样式共同构成了样式表的主体。

##  规则的结构

为了更详细的说明规则的概念，让我们分解下代码的结构。

每条规则由两个基本部分组成：选择器（selector）和声明块（declaration block）。声明块包含一个或多个声明（declaration），而每个声明由一个属性（property）和一个值（value）组成。每个样式表都是由这样的一系列规则构成的。图 1-1 展示了规则的各个部分。
![](/1.png)
选择器位于规则的左侧，用于定义文档中哪些部分将被选中进行样式应用。在图 1-1 中，选择器为 `<h1>`，表示选择所有一级标题（heading level 1）元素。如果选择器是 p，那么所有段落（`<p>`）元素将被选中。

规则的右侧是声明块，由一个或多个声明组成。每个声明由一个 CSS 属性和该属性的值组成。在图 1-1 中，声明块包含两个声明。第一个声明指定规则会将文档的某些部分设置为红色文本，第二个声明指定文档的某些部分将有一个黄色背景。因此，文档中的所有 `<h1>` 元素（由选择器定义）将被设置为红色文本，并带有黄色背景。

##  供应商前缀（Vendor Prefixing）

有时，您会看到 CSS 的某些部分带有连字符和标签，例如：-o-border-image。这些供应商前缀是浏览器供应商用来标记某些属性、值或其他 CSS 部分为实验性或专有功能（或者两者兼有）的一种方式。截至 2023 年初，仍有一些供应商前缀在使用，其中最常见的如表 1-1 所示。
![](/2.png)
如表1-1所示，供应商前缀的通用格式通常是连字符、标签和连字符，尽管有几个前缀错误地省略了第一个连字符。

供应商前缀的使用与滥用历史悠久、复杂且超出了本书的范围。简单来说，它们最初的目的是为浏览器供应商提供测试新功能的方式，从而加速互操作性的发展，同时避免被与其他浏览器不兼容的遗留行为所束缚。这避免了一类几乎在 CSS 初期扼杀其发展的问题。然而，不幸的是，这些带前缀的属性随后被网页作者广泛使用，最终导致了全新的一类问题。

截至 2023 年初，带有供应商前缀的 CSS 功能几乎已经不存在，旧的前缀属性和值正被浏览器实现逐步且稳定地移除。您可能永远不需要编写带前缀的 CSS，但可能会在实际项目中遇到，或者从遗留代码库中继承以下类似的代码：
```
/* 示例代码，演示供应商前缀 */
.example {
    -webkit-transform: rotate(45deg); /* WebKit 内核浏览器 */
    -moz-transform: rotate(45deg);   /* Gecko 内核浏览器 */
    -ms-transform: rotate(45deg);    /* Trident 内核浏览器 */
    -o-transform: rotate(45deg);     /* 旧版 Opera 浏览器 */
    transform: rotate(45deg);        /* 标准 CSS 写法 */
}
```
这段代码实际上表达了同样的内容四次：分别为 WebKit（如 Safari、Chrome）、Gecko（如 Firefox）和 Opera 浏览器的前缀版本，最后是符合 CSS 标准的写法。再次强调，这种写法已经不再必要。我们在此仅包含它是为了让您对其可能的外观有一个概念，以备将来遇到类似情况时能够识别。

##  空白符处理

CSS 基本上对规则之间的空白符不敏感，对规则内部的空白符也不太敏感，尽管存在一些例外情况。

通常，CSS 处理空白字符的方式与 HTML 相同：任何连续的空白字符序列都会在解析时折叠为一个空格。因此，你可以以下列方式格式化这个假设的彩虹规则：

`rainbow: infrared red orange yellow green blue indigo violet ultraviolet;`

```
rainbow:
 infrared
 red
 orange
 yellow
 green
 blue
 indigo
 violet
 ultraviolet
 ;
```
以及你能想到的任何其他分隔模式。唯一的限制是分隔字符必须是空白字符：空格、制表符或换行符，单独使用或组合使用，数量不限。

类似地，你可以以任何喜欢的方式用空格格式化一系列规则。以下这些都是这只是无数可能性中的五个例子：
```
/* 示例代码，演示空白符处理 */
/* 示例样式仅应用于 .example 类范围 */
.example html {color: black;} /* 黑色文字 */
.example body {background: white;} /* 白色背景 */
.example p {color: gray;} /* 灰色段落文字 */
.example h2 {color: silver;} /* 银色标题 */
.example ol {
    color: silver; /* 银色有序列表 */
}

```
正如你从第一条规则中看到的，空白字符在很大程度上可以省略。实际上，这通常是压缩 CSS 的情况，压缩 CSS 是指移除了所有多余空白字符的 CSS，通常由某种自动化的服务器端脚本完成。第一条规则之后的规则逐步使用了更多的空白字符，直到最后一条规则，几乎每个可以分开到单独一行的部分都被分开了。

所有这些方法都是有效的，所以您应该选择最有意义的格式——也就是最容易读懂的格式，并坚持使用它。

## CSS 中的注释

CSS允许注释。这些注释与 C/C++ 注释非常相似，它们被/* 和 */包围：

/* This is a CSS comment */

注释可以跨越多行，就像 C++ 一样。

/* This is a CSS comment, and it
can be several lines long without
any problem whatsoever. */

重要的是要记住，CSS 注释不能嵌套。例如，这是不正确的：
```
/* This is a comment, in which we find
 another comment, which is WRONG
 /* Another comment */
and back to the first comment, which is not a comment.*/
```
一种意外创建“嵌套”注释的情况是暂时注释掉包含注释的大块样式表。由于 CSS 不允许嵌套注释，“外层”注释会在“内层”注释结束的地方结束。

不幸的是，CSS 中没有像 // 或 # 这样的“单行注释”模式（其中 # 已经被保留用于 ID 选择器）。CSS 中唯一的注释模式是 /* */。因此，如果您希望在与标记相同行中添加注释，需要注意放置的方式。例如，这是正确的做法：
```
/* 示例代码，演示 CSS 单行注释的正确用法 */
.example h1 {color: gray;} /* 一级标题为灰色 */
.example h2 {color: silver;} /* 二级标题为银色 */
.example p {color: white;} /* 段落文字为白色 */
.example pre {color: gray;} /* 预格式化文字为灰色 */
```
以下示例中，因为有四行注释都没有正确标注，大部分样式表将成为注释的一部分，因此将无法生效：
```
.example h1 {color: gray;} /* This CSS comment is several lines
.example h2 {color: silver;} long, but since it is not wrapped
.example p {color: white;} in comment markers, the last three
.example pre {color: gray;} styles are part of the comment. */
```
在此示例中，只有第一条规则（h1 {color: gray;}）会应用到文档中。其余规则作为注释的一部分，被浏览器的渲染引擎忽略。

CSS 注释被 CSS 解析器视为完全不存在，因此在解析时不算作空白字符。这意味着我们可以将它们放在规则的中间，甚至直接插入到声明中！

##  标记（Markup）

样式表中没有标记（markup）。唯一的例外是 HTML 注释标记，由于历史原因，它被允许出现在 `<style>` 元素中：
```
<!-- 示例代码，用于展示历史标记 -->
<style>
/* 这种写法仅为历史兼容性展示 */
.example h1 {color: maroon;} /* 一级标题为栗色 */
.example body {background: yellow;} /* 背景为黄色 */
</style>
```
就像这样，不过即使是以上这样的代码也不再被推荐；需要它的浏览器已经几乎被遗忘了。

说到标记，现在是时候稍微绕一下弯路来讨论 CSS 将用于设置样式的元素，以及 CSS 如何以最基本的方式影响这些元素。

特别提示：在 Markdown 文档中嵌入示例代码块时，请注意添加诸如 .example 这类的名称来规避代码块对页面的影响。例如，如果我们在本文的第一个示例中忽略 .example 而直接书写 p 等选择器时，由于恰好示例代码是 css 代码，且示例代码恰好是全局选择器，因此我们新添加的属性值就会更改原来的页面样式。