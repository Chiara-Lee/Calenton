---
title:  1.3.2 泛函导数的操作定义
date: 2024-11-27
lastmod: 2024-11-27
tags: [经典力学]
---

根据上面的讨论，泛函导数归结于计算泛函{{<latex display="false">}}S[f]{{</latex>}}的变分。

换个角度，在泛函{{<latex display="false">}}S[f + \epsilon \delta f]{{</latex>}}中，{{<latex display="false">}}\epsilon{{</latex>}}是一个参数，而泛函{{<latex display="false">}}S{{</latex>}}是一个数，其值依赖于{{<latex display="false">}}\epsilon{{</latex>}}。所以，泛函{{<latex display="false">}}S[f + \epsilon \delta f]{{</latex>}}可以被看作是{{<latex display="false">}}\epsilon{{</latex>}}的普通函数，于是公式：

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \left. \frac{d}{d\epsilon} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \frac{\epsilon^2}{2!} \left. \frac{d^2}{d\epsilon^2} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \cdots
{{</latex>}}

可以视为{{<latex display="false">}}S[f + \epsilon \delta f]{{</latex>}}相对于{{<latex display="false">}}\epsilon{{</latex>}}的普通泰勒展开。

>一般函数在{{<latex display="false">}}x_0{{</latex>}}处以及{{<latex display="false">}}x_0 = 0{{</latex>}}的泰勒展开

{{<latex display="true">}}
f(x) = f(x_0) + \frac{f'(x_0)}{1!}(x-x_0) + \frac{f''(x_0)}{2!}(x-x_0)^2 + \cdots + \frac{f^{(n)}(x_0)}{n!}(x-x_0)^2 + R_n
{{</latex>}}

{{<latex display="true">}}
R_n=o[(x-x_0)^n]
{{</latex>}}

{{<latex display="true">}}
f(x) = f(0) + \frac{f'(0)}{1!}(x) + \frac{f''(0)}{2!}(x)^2 + \cdots + \frac{f^{(n)}(0)}{n!}(x)^2 + R_n
{{</latex>}}

{{<latex display="true">}}
R_n=o[(x)^n]
{{</latex>}}

通过比较

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \left. \frac{d}{d\epsilon} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \frac{\epsilon^2}{2!} \left. \frac{d^2}{d\epsilon^2} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \cdots
{{</latex>}}

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \delta S[f] + \frac{\epsilon^2}{2!} \delta^2 S[f] + \frac{\epsilon^3}{3!} \delta^3 S[f] + \cdots
{{</latex>}}

即可得到一阶泛函导数的形式：

{{<latex display="true">}}
\delta S=\left.\frac{d}{d\epsilon}S[f+\epsilon \delta f]\right|_{\epsilon=0}=\int\limits dt\frac{\delta S}{\delta f(t)}\delta f(t)
{{</latex>}}

{{<latex display="true">}}
\delta S^2=\left.\frac{d^2}{d\epsilon^2}S[f+\epsilon\delta f]\right|_{\epsilon=0}=\int dt_1\int dt_2\frac{\delta ^2S}{\delta f(t_1)\delta f(t_2)}\delta f(t_1)\delta f(t_2)
{{</latex>}}

高阶泛函导数的形式可以类似的写出。

对于下述形式的泛函 

{{<latex display="true">}}
S[f+\epsilon \delta f]=\int\limits_{t_1}^{t_2}dtL(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)
{{</latex>}}

可以联系上文的式子得到 

{{<latex display="true">}}
\begin{align}
\delta S&=\left.\int\limits_{t_1}^{t_2}dt\frac{d}{d\epsilon}L(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)\right|_{\epsilon=0}\\  
&\text{其中} f+\epsilon\delta f \text{是关于} \epsilon \text{的函数} f(\epsilon)，f' \text{同理}\\ 
&=\int\limits_{t_1}^{t_2}dt\underbrace{(\frac{\partial L}{\partial f}\delta f+\frac{\partial L}{\partial f'}\delta f'+\frac{\partial L}{\partial f''}\delta f''+\cdots)}_{\equiv\delta L} 
\end{align}
{{</latex>}}

上式的被积函数就是{{<latex display="false">}}L{{</latex>}}的一阶变分{{<latex display="false">}}\delta L{{</latex>}}，与其微分形式{{<latex display="false">}}dL{{</latex>}}全同。只是微分换成了变分。

这意味着

{{<latex display="true">}}
\delta S\equiv\delta(\int\limits_{t_1}^{t_2}dtL)=\int\limits_{t_1}^{t_2}dt\delta L
{{</latex>}}

即是说，变分符号可以移到积分内。

观察一阶泛函导数的形式 

{{<latex display="true">}}
\delta S[f]:=\int\limits dt\frac{\delta S}{\delta f}\delta f
{{</latex>}}

右边只出现了函数的变分{{<latex display="false">}}\delta f{{</latex>}}。但是在

{{<latex display="true">}}
\begin{align} \delta S&=\left.\int\limits_{t_1}^{t_2}dt\frac{d}{d\epsilon}L(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)\right|_{\epsilon=0}\\ &=\int\limits_{t_1}^{t_2}dt\underbrace{(\frac{\partial L}{\partial f}\delta f+\frac{\partial L}{\partial f'}\delta f'+\frac{\partial L}{\partial f''}\delta f''+\cdots)}_{\equiv\delta L} \end{align}\\
{{</latex>}}

中却出现了函数的导数的变分{{<latex display="false">}}\delta f',\delta f'',\cdots{{</latex>}}，在处理这个情况时，我们就需要使用变分法中非常重要的技巧——**分部积分（integration by parts）**。

分部积分的基本思路是：利用变分和求导可以交换顺序的性质，**将作用于{{<latex display="false">}}\delta f{{</latex>}}的导数移除**，代价是产生额外的“全导数”项，然后设定全导数为边界项，并且忽略边界项，使得泛函的变分式中各项的共有项为{{<latex display="false">}}\delta f{{</latex>}}，提出{{<latex display="false">}}\delta f{{</latex>}}后即得一阶泛函导数。

例如，对于正比于{{<latex display="false">}}\delta f'{{</latex>}}的项。

{{<latex display="true">}}
\frac{\partial L}{\partial f'}\delta f'\xlongequal{\text{变分与求导交换顺序}}\frac{\partial L}{\partial f'}\frac{d}{dt}\delta f=\underbrace{\frac{d}{dt}(\frac{\partial L}{\partial f'}\delta f)}_{\text{全导数}}-\frac{d}{dt}(\frac{\partial L}{\partial f'})\delta f
{{</latex>}}

第二个等号是因为

{{<latex display="true">}}
\begin{align} 
&(uv)'=u'v+uv'\\ 
&uv'=(uv)'-u'v 
\end{align}
{{</latex>}}

类似的，

{{<latex display="true">}}
\begin{align} 
\frac{\partial L}{\partial f''}\delta f''&=\frac{\partial L}{\partial f''}\frac{d^2}{dt^2}\delta f={\frac{d}{dt}(\frac{\partial L}{\partial f''}\frac{d}{dt}\delta f)}-\frac{d}{dt}(\frac{\partial L}{\partial f''})\frac{d}{dt}\delta f\\ 
&=\underbrace{\frac{d}{dt}[\frac{\partial L}{\partial f''}\delta f'-\frac{d}{dt}(\frac{\partial L}{\partial f''})\delta f]}_{\text{全导数}}+\frac{d^2}{dt^2}(\frac{\partial L}{\partial f''})\delta f 
\end{align}
{{</latex>}}

由此类推，有 

{{<latex display="true">}}
\begin{align} 
\delta S&=\int\limits_{t_1}^{t_2}dt[\frac{\partial L}{\partial f}\delta f-\frac{d}{dt}(\frac{\partial L}{\partial f'})\delta f+\frac{d^2}{dt^2}(\frac{\partial L}{\partial f''})\delta f+\cdots+\frac{d\mathcal{B}}{dt}]\\ 
&=\int\limits_{t_1}^{t_2}dt[\frac{\partial L}{\partial f}-\frac{d}{dt}(\frac{\partial L}{\partial f'})+\frac{d^2}{dt^2}(\frac{\partial L}{\partial f''})+\cdots]\delta f+\left.\mathcal{B}\right|_{t_1}^{t_2}
\end{align}
{{</latex>}}

这里{{<latex display="false">}}\frac{d\mathcal{B}}{dt}{{</latex>}}代表全导数项。积分后得到的{{<latex display="false">}}\left.\mathcal{B}\right|_{t_1}^{t_2}{{</latex>}}被称为**边界项（boundary term）**,在积分的端点（边界）处取值。对比

{{<latex display="true">}}
\delta S[f]:=\int\limits dt\frac{\delta S}{\delta f}\delta f
{{</latex>}}

{{<latex display="false">}}\delta S{{</latex>}}在上式中的积分已经具有泛函导数的形式，主要的阻碍来自于边界项。由上面的推导可知，如果泛函的被积函数{{<latex display="false">}}L{{</latex>}}包含{{<latex display="false">}}f(t){{</latex>}}的最高{{<latex display="false">}}n{{</latex>}}阶导数，则边界项{{<latex display="false">}}\mathcal{B}{{</latex>}}就包含{{<latex display="false">}}\delta f(t){{</latex>}}的最高{{<latex display="false">}}n-1{{</latex>}}阶导数。

因此，变分法的一个基本假设就是：**如果泛函的被积函数包含函数的最高{{<latex display="false">}}n{{</latex>}}阶导数，那么在积分的边界处，函数及其直到{{<latex display="false">}}n-1{{</latex>}}阶导数的变分为零。**即 

{{<latex display="true">}}
\left.\delta f\right|_{t_1}=\left.\delta f\right|_{t_2}=0
{{</latex>}}

{{<latex display="true">}}
\left.\delta f'\right|_{t_1}=\left.\delta f'\right|_{t_2}=0
{{</latex>}}

{{<latex display="true">}}
\vdots
{{</latex>}}

{{<latex display="true">}}
\left.\delta f^{(n-1)}\right|_{t_1}=\left.\delta f^{(n-1)}\right|_{t_2}=0
{{</latex>}}

在这样的假设下，边界项{{<latex display="false">}}\left.\mathcal{B}\right|_{t_1}=\left.\mathcal{B}\right|_{t_2}=0{{</latex>}}恒为零。这也意味着，被积函数可以加上函数{{<latex display="false">}}f(t){{</latex>}}及其直到{{<latex display="false">}}n-1{{</latex>}}阶导数的任意函数{{<latex display="false">}}F=F(t,f,f',\cdots,f^{(n-1)}){{</latex>}}的全导数，而不影响泛函导数。

**两个被积函数相差全导数**，或者两个积分相差边界项，这件事在变分法中非常重要。因此通常使用专门的符号