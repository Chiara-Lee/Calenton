---
title:  1.3 泛函导数
date: 2024-11-27
lastmod: 2024-11-27
tags: [经典力学]
---

## 1.3.1 泛函导数的概念

对于普通函数的导数，函数的微分是由自变量的微分引起的：

{{<latex display="true">}}  
f(t) \xrightarrow{t \to t+\epsilon} f(\tilde{t}) = f(t+ \epsilon) \\  
= f(t) + \epsilon f'(t) + \frac{\epsilon^2}{2!} f''(t) + \frac{\epsilon^3}{3!} f^{(3)}(t) + \cdots  
{{</latex>}}

其中 {{<latex display="false">}}\epsilon{{</latex>}} 是无穷小参数，{{<latex display="false">}}\epsilon^n{{</latex>}} 项即为函数的 {{<latex display="false">}}n{{</latex>}} 阶微分，函数的 {{<latex display="false">}}n{{</latex>}} 阶导数则由函数的 {{<latex display="false">}}n{{</latex>}} 阶微分与 {{<latex display="false">}}dt{{</latex>}} 的关系给出。对于一阶导数：

{{<latex display="true">}}  
df(t) = \frac{df(t)}{dt} dt  
{{</latex>}}

高阶导数则为：

{{<latex display="true">}}  
d^{(n)} f(t) = \frac{d^{(n)}f(t)}{dt^n} dt  
{{</latex>}}

只要计算出函数的各阶微分，就可以给出相应的各阶导数。

泛函导数从形式上完全是对普通函数导数的类比。对于泛函 {{<latex display="false">}}S[f]{{</latex>}}，其变分是由函数的变分引起的：

{{<latex display="true">}}  
S[f] \xrightarrow{f \to \tilde{f}} S[\tilde{f}] = S[f + \epsilon f] \\  
= S[f] + \epsilon \frac{\delta S[f]}{\delta f} + \frac{\epsilon^2}{2!} \delta^2 S[f] + \frac{\epsilon^3}{3!} \delta^3 S[f] + \cdots  
{{</latex>}}

这里 {{<latex display="false">}}\epsilon^n{{</latex>}} 项即被称为是泛函的 {{<latex display="false">}}n{{</latex>}} 阶变分 {{<latex display="false">}}\delta^n S[f]{{</latex>}}。仿照函数的 {{<latex display="false">}}n{{</latex>}} 阶导数即可定义 {{<latex display="false">}}n{{</latex>}} 阶泛函导数。

**定义 1 阶泛函导数**

{{<latex display="true">}}  
\delta S[f] := \int dt \frac{\delta S}{\delta f(t)} \delta f(t)  
{{</latex>}}

其中：

{{<latex display="true">}}  
\delta f(t) = \tilde{f}(t) - f(t)  
{{</latex>}}

这里 {{<latex display="false">}}\delta S{{</latex>}} 是泛函的一阶变分，{{<latex display="false">}}\frac{\delta S}{\delta f(t)}{{</latex>}} 即为**一阶泛函导数**（the first order functional derivative）。可以看出，一阶泛函导数的作用，是将函数的变分 {{<latex display="false">}}\delta f(t){{</latex>}}（无穷小函数）映射到泛函的一阶变分 {{<latex display="false">}}\delta S{{</latex>}}（无穷小的数）。这也解释了为什么定义式中出了 {{<latex display="false">}}dt{{</latex>}} 的积分。

为了更好的理解泛函导数，可以将泛函与多元函数进行类比，例如：

{{<latex display="true">}}  
\delta S[f] := \int dt \frac{\delta S}{\delta f(t)} \delta f(t)  
{{</latex>}}

可以和多元函数 {{<latex display="false">}}F = F(x_1, x_2, \cdots, x_n){{</latex>}} 的一阶微分

{{<latex display="true">}}  
dF = \sum_n \frac{\partial F}{\partial x_n} dx_n  
{{</latex>}}

相类比。

![](/1.png)

类比函数的高阶导数，高阶泛函导数定义为：

{{<latex display="true">}}  
\delta^2 S[f] := \int dt_1 \int dt_2 \frac{\delta^2 S}{\delta f(t_1) \delta f(t_2)} \delta f(t_1) \delta f(t_2)  
{{</latex>}}

{{<latex display="true">}}  
\delta^3 S[f] := \int dt_1 \int dt_2 \int dt_3 \frac{\delta^3 S}{\delta f(t_1) \delta f(t_2) \delta f(t_3)} \delta f(t_1) \delta f(t_2) \delta f(t_3)  
{{</latex>}}

这里的 {{<latex display="false">}}\frac{\delta^2 S}{\delta f(t_1) \delta f(t_2)}{{</latex>}} 和 {{<latex display="false">}}\frac{\delta^3 S}{\delta f(t_1) \delta f(t_2) \delta f(t_3)}{{</latex>}} 
即分别代表 {{<latex display="false">}}S[f]{{</latex>}} 对 {{<latex display="false">}}f{{</latex>}} 的二阶泛函导数和三阶泛函导数。

例如，二阶泛函导数的作用，是将函数的变分 {{<latex display="false">}}\delta f(t){{</latex>}} 映射为泛函的二阶变分 {{<latex display="false">}}\delta^2 S{{</latex>}} 
（二阶无穷小数）。在经典力学中，我们大多只关注一阶泛函导数。

