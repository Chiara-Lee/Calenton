---
title: 1.2 Hello HTML and XHTML World
date: 2024-11-20
lastmod: 2024-11-20
tags: [前端开发]
---

有了这些HTML语法的基础知识，现在最好看一下示例文档，看看它的应用程序。我们第一个用严格的HTML 4编写的完整示例如下：
```HTML
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hello HTML 4 World</title>
<!-- Simple hello world in HTML 4.01 strict example -->
</head>
<body>
<h1>Welcome to the World of HTML</h1>
<hr>
<p>HTML <em>really</em> isn't so hard!</p>
<p>Soon you will &hearts; using HTML.</p>
<p>You can put lots of text here if you want.
We could go on and on with fake text for you
to read, but let's get back to the book.</p>
</body>
</html>
```
ONLINE http://htmlref.com/ch1/html4helloworld.html

对初始的 `<!DOCTYPE>` 行进行简单修改，实际上就是将其变成 HTML5 示例所需的一切，注释和文本已更改，以便你能够清楚地区分这些示例：
```html
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hello HTML5 World</title>
<!-- Simple hello world in HTML5 example -->
</head>
<body>
<h1>Welcome to the Future World of HTML5</h1>
<hr>
<p>HTML5 <em>really</em> isn't so hard!</p>
<p>Soon you will &hearts; using HTML.</p>
<p>You can put lots of text here if you want.
We could go on and on with fake text for you
to read, but let's get back to the book.</p>
</body>
</html>
```
ONLINE http://htmlref.com/ch1/html5helloworld.html

以XHTML为例，它是一种基于XML语法规则的HTML形式，我们在我们的示例中还没有看到太多重大变化：
```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hello XHTML World</title>
<!-- Simple hello world in XHTML 1.0 strict example -->
</head>
<body>
<h1>Welcome to the World of XHTML</h1>
<hr />
<p>XHTML <em>really</em> isn't so hard either!</p>
<p>Soon you will &hearts; using XHTML too.</p>
<p>There are some differences between XHTML
and HTML but with some precise markup you'll
see such differences are easily addressed.</p>
</body>
</html>
```
ONLINE http://htmlref.com/ch1/xhtmlhelloworld.html

前面的示例使用了一些 (X)HTML 文档中最常见的元素，包括：

- `<!DOCTYPE>` 声明，用于指示文档中使用的具体 HTML 或 XHTML 版本。第一个示例使用的是严格的 HTML 4.01 规范，第二个示例使用的是 HTML5 的简化形式，其含义稍后会解释，最后一个示例使用的是 XHTML 1.0 严格规范。
- `<html>、<head>` 和 `<body>` 标签对/用于指定文档的总体结构。在 XHTML 中，`<html>` 标签中要求包含 xmlns 属性，这是一个小的不同之处。
- 示例中使用的 `<meta>` 标签指示文档的 MIME 类型和所使用的字符集。请注意，在 XHTML 示例中，该元素带有一个斜杠，以表明它是一个空元素。
- `<title>` 和 `</title>` 标签对指定了文档的标题，通常显示在网页浏览器的标题栏中。
- 注释由 `<!-- -->` 指定，允许页面作者提供备注以供将来参考。
- `<h1>`和`</h1>`头标记对表示指定一些重要信息的标题。
- `<hr>`标记在 XHTM L下有一个自标识的结束标记(`<hr/>`)，它在整个屏幕上插入一条水平线或条形图。
- `<p>`和`</p>`段落标记对表示文本段落。
- 使用命名实体(&hearts；)插入一个特殊字符，在本例中，这将在文本中插入一个红心丁巴特字符。
- `<em>` 和 `</em>` 标签对包围了一小段需要强调的文本，浏览器通常会以斜体显示这些文本。

还可以使用许多其他标记元素，所有这些元素都将在整本书中进行探索，但就目前而言，这个样本足以在浏览器中呈现我们的第一个示例。
