---
title:  1.4.1 泛函极值的必要条件
date: 2024-12-10
lastmod: 2024-12-10
tags: [经典力学]
toc: true
---

##  1.4.1 泛函极值的必要条件

为什么两点之间直线最短？如何使得平面上固定长度曲线所围区域面积最大？什么循环过程效率最高？轨道形状如何小球下落时间最短？

有了泛函的概念，这些问题可以归结为当函数（输入）取什么形式时，泛函的值（输出）取极值。在变分法中，这被称为泛函极值问题。在实际问题中，我们关心的并不是泛函的全部信息，而往往是泛函的极值。

假设泛函 {{<latex display="false">}}S[f]{{</latex>}} 在 {{<latex display="false">}}f(t) = \bar{f}(t){{</latex>}} 时取到极大（小）值，这意味着，任何对 {{<latex display="false">}}\bar{f}{{</latex>}} 的小偏离 {{<latex display="false">}}\bar{f} + \epsilon \delta f{{</latex>}}，都会使得 {{<latex display="false">}}S[\bar{f} + \epsilon \delta f]{{</latex>}} 的值比 {{<latex display="false">}}S[\bar{f}]{{</latex>}} 小（大）。只有当不发生偏离，即 {{<latex display="false">}}\delta f = 0{{</latex>}} 时取到极值。从另一个角度，这等价于 {{<latex display="false">}}S[\bar{f} + \epsilon \delta f]{{</latex>}} 作为 {{<latex display="false">}}\epsilon{{</latex>}} 参量的普通函数，在 {{<latex display="false">}}\epsilon = 0{{</latex>}} 时取到极值。

这样就将泛函极值问题转化为普通函数*的极值问题。而我们已经知道，普通函数的极值即要求其一阶导数为零。结合泛函导数*的定义，我们有

{{<latex display="true">}}
\delta S[\bar{f}] = \int dt \left. \frac{\delta S[f]}{\delta f} \right|_{\bar{f}} \delta f(t) = \left. \frac{d S[\bar{f} + \epsilon \delta f]}{d \epsilon} \right|_{\epsilon=0} = 0
{{</latex>}}

由此得到，泛函在 {{<latex display="false">}}f(t) = \bar{f}(t){{</latex>}} 时取到极值，即要求泛函的一阶变分*为零

{{<latex display="true">}}
\delta S[\bar{f}] = 0
{{</latex>}}

其意义是在函数（输入）发生小变化时，泛函的值（输出）不变。等价的，这意味着泛函在 {{<latex display="false">}}\bar{f}(t){{</latex>}} 处的一阶泛函导数为零

{{<latex display="true">}}
\left. \frac{\delta S[f]}{\delta f} \right|_{\bar{f}} = 0
{{</latex>}}

需要说明的是，正如一阶导数为零只是函数取到极值的必要而非充分条件，一阶泛函导数为零也只是泛函取到极值的必要而非充分条件。严格来说，{{<latex display="false">}}\delta S=0{{</latex>}}并非对于泛函一定取到极值，但是一定是 **恒稳（stationary）** 的。

作为变分法到目前的小结，可将多元函数与泛函做一个对比：

![](/content/notes/Physcis/classical%20mechnics/经典力学高显/1.4.1/1.png)

##  1.4.2 欧拉—拉格朗日方程

一类常见的泛函具有如下的形式

{{<latex display="true">}}
S[f]=\int dt L(t,f(t),f'(t))
{{</latex>}}

其特点是，泛函的被积函数 {{<latex display="false">}}L{{</latex>}} 最高包含 {{<latex display="false">}}f{{</latex>}} 的一阶导数。物理中大多数感兴趣的系统都是类似这样的形式。根据上一节的讨论，泛函取极值的必要条件是

{{<latex display="true">}}
\box{- \frac{\delta S}{\delta f} \equiv \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) - \frac{\partial L}{\partial f} = 0}
{{</latex>}}

上式是关于 {{<latex display="false">}}f(t){{</latex>}} 的二阶微分方程，被称为变分问题的 **欧拉—拉格朗日方程（Euler-Lagrange equation）** 。其意义是，泛函式

{{<latex display="false">}}
S[f] = \int dt L(t, f(t), f'(t))
{{</latex>}}

在 {{<latex display="false">}}f=f(t){{</latex>}} 处取到极值的必要条件是{{<latex display="false">}}f(t){{</latex>}} 满足欧拉拉格朗日方程。

并不是所有的微分方程都是欧拉拉格朗日方程，即都对应某个泛函的极值。

对 {{<latex display="false">}}L{{</latex>}} 直接求全导数

{{<latex display="true">}}
\begin{aligned}
\frac{dL}{dt} &= \frac{\partial L}{\partial t} + \frac{\partial L}{\partial f} f' + \frac{\partial L}{\partial f'} f'' \\
&= \frac{\partial L}{\partial t} + \frac{\partial L}{\partial f} f' + \frac{d}{dt} \left( \frac{\partial L}{\partial f'} f' \right) - \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) f' \\
&= \frac{\partial L}{\partial t} + \underbrace{\left[ \frac{\partial L}{\partial f} - \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) \right] f'}_{=0} + \frac{d}{dt} \left( \frac{\partial L}{\partial f'} f' \right)
\end{aligned}
{{</latex>}}

因此，当欧拉—拉格朗日方程*满足时，下式也成立

{{<latex display="true">}}
\box{\frac{d}{dt} \left( \frac{\partial L}{\partial f'} f' - L \right) + \frac{\partial L}{\partial t} = 0}
{{</latex>}}

一个立即的推论是，若 {{<latex display="false">}}L{{</latex>}} 不显含变量 {{<latex display="false">}}t{{</latex>}}

{{<latex display="false">}}
\frac{\partial L}{\partial t} = 0 \quad \Rightarrow \quad \frac{\partial L}{\partial f'} f' - L = \text{常数}
{{</latex>}}

对于更一般的泛函式，其取极值的必要条件是

{{<latex display="true">}}
\frac{\delta S}{\delta f} \equiv \sum_{n=0} (-1)^n \frac{d^n}{dt^n} \left( \frac{\partial L}{\partial f^{(n)}} \right) = 0
{{</latex>}}

如果泛函式中的被积函数 {{<latex display="false">}}L{{</latex>}}包含 {{<latex display="false">}}f(t){{</latex>}} 的最高到 {{<latex display="false">}}n{{</latex>}} 阶导数，即{{<latex display="false">}} L = L(t, f, f', \cdots, f^{(n)}) {{</latex>}} 则上面的求和展开为

{{<latex display="true">}}
\frac{\delta S}{\delta f} = \frac{\partial L}{\partial f} - \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) + \cdots + (-1)^n \frac{d^n}{dt^n} \left( \frac{\partial L}{\partial f^{(n)}} \right)
{{</latex>}}

{{<latex display="false">}}\frac{\delta S}{\delta f}{{</latex>}} 中{{<latex display="false">}} f(t){{</latex>}} 的最高阶导数来自最后一项。如果{{<latex display="false">}}\frac{\partial L}{\partial f^{(n)}}{{</latex>}}仍然包含{{<latex display="false">}} f^{(n)}{{</latex>}}，即

{{<latex display="true">}}
\frac{\partial}{\partial f^{(n)}} \left( \frac{\partial L}{\partial f^{(n)}} \right) = \frac{\partial^2 L}{\partial f^{(n)} \partial f^{(n)}} \neq 0
{{</latex>}}

则{{<latex display="false">}}\frac{d^n}{dt^n} \left( \frac{\partial L}{\partial f^{(n)}} \right){{</latex>}} 包含最高至{{<latex display="false">}} f(t){{</latex>}} 的 {{<latex display="false">}} 2N{{</latex>}}  阶导数，满足上式的 {{<latex display="false">}} L{{</latex>}} 也被称为是 **非退化的（non-degenerate）**。总之，如果泛函导数*{{<latex display="false">}}\frac{\delta S}{\delta f}{{</latex>}} 包含 {{<latex display="false">}} f(t){{</latex>}}  最高至 {{<latex display="false">}} 2N{{</latex>}}  阶导数，相应的泛函极值的欧拉—拉格朗日方程为 {{<latex display="false">}} 2N{{</latex>}}  阶微分方程。

![](/2.png)
![](/3.png)
![](/4.png)