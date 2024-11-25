---
title:  1.2 变分
date: 2024-11-18
lastmod: 2024-11-18
tags: [经典力学]
---
函数和泛函同为映射。”输入/输出“的无穷小变化，对函数而言就是微分，对泛函而言即是**变分（variation）**。简而言之，泛函是函数到数的映射，函数本身的无穷小变化，以及由此引出的泛函的变化即为变分。

若函数{{<latex display="false">}} f(t) {{</latex>}}变成了另一个函数{{<latex display="false">}} f(t)\longrightarrow \tilde{f(t)} {{</latex>}}，且假设两者相差无穷小。则函数{{<latex display="false">}} f(t) {{</latex>}}的变分{{<latex display="false">}} \delta f {{</latex>}}被定义为

{{<latex display="true">}} \delta f(t):=\tilde{f(t)}-f(t)\\ {{</latex>}}

上式中的变分符号"{{<latex display="false">}}\delta{{</latex>}}"代表变分运算这种操作。即对函数本身进行无穷小的变化。变分运算的结果，亦即上式的右侧仍然是一个函数（只不过是无穷小的），变分{{<latex display="false">}}\delta f{{</latex>}}是作为另一个函数存在的。

函数的变分{{<latex display="false">}}\delta f{{</latex>}}和微分{{<latex display="false">}}df{{</latex>}}同为无穷小变化，但是具有本质上的区别
![](/1.png)

函数的微分{{<latex display="false">}}df(t){{</latex>}}是由自变量 t 的变化引起的，函数本身固定不变

{{<latex display="true">}}f(t)\xrightarrow{t\rightarrow t+dt}f(t+dt) =f(t)+df(t)+\cdots\\{{</latex>}}

而函数的变分{{<latex display="false">}}\delta f(t){{</latex>}}是因为函数本身发生了无穷小变化，而与自变量 t 无关

{{<latex display="true">}}f(t)\rightarrow\tilde{f(t)}\equiv(f+\delta f)(t)=f(t)+\delta f(t)\\{{</latex>}}

##  1.2.2 变分的运算规则

函数的变分其实和微分运算形式相似，比如

{{<latex display="true">}}\delta (f^n)=nf^{n-1}\delta f\\{{</latex>}}

对于函数{{<latex display="false">}}f_1{{</latex>}}和{{<latex display="false">}}f_2{{</latex>}}以及常数 a,b， 我们有

{{<latex display="true">}}
\begin{align}
\delta(af_1+bf_2)=a\delta f_1+b\delta f_2\\ 
\delta(f_1f_2)=(\delta f_1)f_2+f_1(\delta f_2)
\end{align}\\
{{</latex>}}

另一个重要且非常有用的性质是，变分和微分可以交换顺序，即”微分的变分”=“变分的微分“

{{<latex display="true">}}d(\delta f)=\delta(df)\\{{</latex>}}
![](/2.png)

如图，此性质可以被直观证明。考虑{{<latex display="false">}}f{{</latex>}}的值在{{<latex display="false">}}A{{</latex>}}点和{{<latex display="false">}}B'{{</latex>}}点的差，即

{{<latex display="true">}}\tilde{f}(t+dt)-f(t)\\{{</latex>}}

若先微分后变分(路径{{<latex display="false">}}A\rightarrow B\rightarrow B'{{</latex>}}),精确到一阶小量有

{{<latex display="true">}}
\begin{align} C'B长度&=f(t+dt)-f(t)=df(t)\\ BB'长度&=\tilde{f}(t+dt)-f(t+dt)\\ &=\delta(f(t+dt))\\ &=\delta(f(t)+df(t))\\ &=\delta(f(t))+\delta(d(f(t)) \end{align}\\
{{</latex>}}

于是，

{{<latex display="true">}}\tilde{f}(t+dt)-f(t)=df(t)+\delta f(t)+\delta (df(t))\\{{</latex>}}

若先变分再微分(路径{{<latex display="false">}}A\rightarrow A'\rightarrow B{{</latex>}}),精确到一阶小量有

{{<latex display="true">}}
\begin{align} AA'长度&=\tilde{f}(t)-f(t) \\&=\delta f(t)\\ A'C长度&=\tilde{f}(t+dt)-\tilde{f}(t)\\ &=d\tilde{f}(t)\\ &=d((f+\delta f)(t))\\ &=df(t)+d(\delta f(t)) \end{align}\\
{{</latex>}}

于是，

{{<latex display="true">}}\tilde{f}(t+dt)-f(t)=\delta f(t)+df(t)+d(\delta f(t))\\{{</latex>}}

进而有，

{{<latex display="true">}}d(\delta f)=\delta(df)\\{{</latex>}}

上式的直接推论即变分和求导运算也可以交换顺序，即是说"导数的变分"="变分的导数".

{{<latex display="true">}}\frac{d}{dt}(\delta f(t))=\delta(\frac{d}{dt}f(t))\\{{</latex>}}

这里的关键在于，变分变化的是函数本身，而与自变量无关。

