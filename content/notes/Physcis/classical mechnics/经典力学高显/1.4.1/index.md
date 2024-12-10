---
title:  1.4.1 泛函极值的必要条件
date: 2024-12-10
lastmod: 2024-12-10
tags: [经典力学]
toc: true
---

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

表 1.1 多元函数与泛函的对比

| 输入       | 输出         | 极值                                      |
|------------|--------------|-------------------------------------------|
| $ x_n $  | $ F(x_n) $ | $ \mathrm{d}F = 0 \quad \Leftrightarrow \quad \left. \frac{\partial F}{\partial x_n} \right|_{\bar{x}_n} = 0 $ |
| $ f(t) $ | $ S[f] $   | $ \delta S = 0 \quad \Leftrightarrow \quad \left. \frac{\delta S}{\delta f} \right|_{\bar{f}} = 0 $ |