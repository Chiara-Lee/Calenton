---
title: 1.1 几个常用不等式
date: 2024-12-3
lastmod: 2024-12-3
tags: [数学分析]
toc: true
---

**命题 1.3.1 (Bernoulli(伯努利)不等式)** 设{{<latex display="false">}}h>-1,n\in \mathbb{N}_+{{</latex>}}，则有不等式成立

{{<latex display="true">}}
(1+h)^n\ge 1+nh
{{</latex>}}

其中当{{<latex display="false">}}n>1{{</latex>}}时等号成立的充分必要条件是{{<latex display="false">}}h=0{{</latex>}}

**证：**  {{<latex display="false">}}n=1{{</latex>}}或者{{<latex display="false">}}h=0{{</latex>}}时不等式显然成立（且均为等号成立），故以下仅讨论{{<latex display="false">}}n>1{{</latex>}}和{{<latex display="false">}}h\ne 0{{</latex>}}的情况。

将{{<latex display="false">}}(1+h)^n-1{{</latex>}}作因式分解，

{{<latex display="true">}}
(1+h)^n-1=h[1+(1+h)+(1+h)^2+\cdots+(1+h)^{n-1}]\tag{1.1}
{{</latex>}}

其中，上式的右侧即是级数

{{<latex display="true">}}
S=\sum_{k=0}^{n-1}(1+h)^k
{{</latex>}}

根据等比数列求和公式，对于等比数列{{<latex display="false">}}\sum_{k=0}^{n-1}r^k{{</latex>}}，其和为

{{<latex display="true">}}
S=\frac{1-r^n}{1-r}
{{</latex>}}

代入可得

{{<latex display="true">}}
S=\sum_{k=0}^{n-1}(1+h)^k=\frac{(1+h)^n-1}{h}
{{</latex>}}

故而（1.1）式成立。

> 等比数列求和公式：
>
> 对于等比数列
>
{{<latex display="true">}}
S_n=a+ar+ar^2+\cdots+ar^{n-1}
{{</latex>}}
>
> 将两侧乘{{<latex display="false">}}r{{</latex>}}得到
>
{{<latex display="true">}}
rS_n=ar+ar^2+\cdots+ar^{n}
{{</latex>}}
>
> 两式相减得到
>
{{<latex display="true">}}
S_n-rS_n=a-ar^n
{{</latex>}}
>
> 整理即得到
>
{{<latex display="true">}}
S_n=\frac{a(1-r^n)}{1-r}
{{</latex>}}
>
> 当{{<latex display="false">}}r=1{{</latex>}}时，等比数列即为{{<latex display="false">}}n{{</latex>}}项{{<latex display="false">}}a{{</latex>}}相加，因此结果即为{{<latex display="false">}}S_n=na{{</latex>}}