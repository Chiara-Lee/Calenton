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











