---
title:  1.1 泛函
date: 2024-11-17
lastmod: 2024-11-17
---
我们首先来回顾一下函数的概念。

一个形象的解释是，函数是一个机器，我们把一个数输入到函数中，函数就会按照其描述来给出一个数。换成一个稍微数学的点的说法就是：

函数是一个具体的映射关系，给定两个集合 {{<latex display="false">}} X {{</latex>}}和{{<latex display="false">}} Y {{</latex>}}，在两个集合的元素 {{<latex display="false">}} x\in X {{</latex>}}和 {{<latex display="false">}} y\in Y {{</latex>}}之间建立的一个对应关系即为映射。

{{<latex display="true">}} f:x\rightarrow y=f(x) \\{{</latex>}}

![](/1.png)

##  1.1.1 泛函的概念

从映射的角度，很多时候普通函数的概念显的不太够用。

例如，空间（平面、球面等）中两点用任一曲线连接，给定曲线的形状，就可以计算出曲线的长度，又比如，平面上的封闭曲线和空间中的封闭曲面，给定曲线和曲面的形状，就可以计算出所包围的面积和体积。

上面的例子有个共同的特点，“输入”——曲线的形状、曲面的形状等等，不是一般意义上的数。而”输出“却都是数。由此可见，为了描述并解决这些问题，普通函数的概念需要被推广，需要引入新的数学概念来描述这种”不是数的输入“。

这些例子还有一个共同的特点，这些输入都可以用”函数“来刻画。

至此，**"泛函"**的概念已经呼之欲出了。用数学语言来说，泛函就是函数到数的映射。两个集合之间的映射有很多种，也就是，存在很多的函数{{<latex display="false">}} f_1(x),f_2(x),\cdots,f_n(x){{</latex>}}，所有这些函数自然也构成集合{{<latex display="false">}} \mathcal{F}=\{f_1,f_2,\cdots,f_n\}{{</latex>}},把函数{{<latex display="false">}} f{{</latex>}}的泛函记为{{<latex display="false">}} s[f] {{</latex>}}，即

{{<latex display="true">}} S:f\longmapsto S=S[f],\quad\mathcal{F}\longmapsto \mathcal{C}\\{{</latex>}}

其中，{{<latex display="false">}} \mathcal{C}{{</latex>}}代表复数集合。

泛函既然也是一种映射，那么如果把泛函输入的函数当成是某种”广义的数“，则泛函也可以视为是一种函数。只不过函数是数的函数，泛函是函数的函数。

##  1.1.2 泛函的具体形式

根据泛函的定义——输入函数，输出数。我们可以举出很多泛函的例子，比如

平面上曲线方程记为 {{<latex display="false">}} y=f(x){{</latex>}}，则两点之间的曲线长度{{<latex display="false">}}S{{</latex>}}为曲线方程{{<latex display="false">}}f(x){{</latex>}}的泛函

{{<latex display="true">}}S(曲线长度)=S[f](曲线方程f的泛函)=\int\limits_{曲线}dx\sqrt{1+(f'(x))^2}\\{{</latex>}}

理想气体准静态过程对外做功 {{<latex display="false">}}W{{</latex>}}即是过程方程{{<latex display="false">}}p=p(V){{</latex>}}的泛函

{{<latex display="true">}}W=W[p]=\int\limits_{过程}p(V)dV\\{{</latex>}}

三维空间曲线方程记为{{<latex display="false">}}z=\phi(x,y){{</latex>}}，则曲面面积 A 为二元函数{{<latex display="false">}}z=\phi(x,y){{</latex>}}的泛函

{{<latex display="true">}}A=A[\phi]=\iint_{\text {区域 }} \mathrm{d} x \mathrm{~d} y \sqrt{1+\left(\frac{\partial \phi}{\partial x}\right)^{2}+\left(\frac{\partial \phi}{\partial y}\right)^{2}} \\{{</latex>}}

经典力学中的遇见的泛函，通常为以下形式

{{<latex display="true">}}S[f]=\int_{t_{1}}^{t_{2}} \mathrm{~d} t L\left(t, f(t), f^{\prime}(t), f^{\prime \prime}(t), \cdots\right)\\{{</latex>}}

此处的被积函数{{<latex display="false">}}L=L\left(t, f(t), f^{\prime}(t), f^{\prime \prime}(t), \cdots\right){{</latex>}}是函数 f(t) 及其导数的一般函数。

可以再次看到，泛函的结果或者说输出{{<latex display="false">}} s[f] {{</latex>}}是一个数，但是{{<latex display="false">}} s[f] {{</latex>}}描述的对象是函数的函数，也就是函数所遵循的具体的对应关系，在上式中，它是 f(t) 遵循{{<latex display="false">}}\int\limits_{t_1}^{t_2} dtL\left(t, f(t), f^{\prime}(t), f^{\prime \prime}(t), \cdots\right){{</latex>}}。

我们称数{{<latex display="false">}} s[f] {{</latex>}}是 f 的泛函，其实是"{{<latex display="false">}} s[f] {{</latex>}}所描述的函数的函数是函数 f 的泛函"的简洁说法，因为{{<latex display="false">}} s[f] {{</latex>}}的结果是数，所以简称数{{<latex display="false">}} s[f] {{</latex>}}是 f 的泛函。