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








