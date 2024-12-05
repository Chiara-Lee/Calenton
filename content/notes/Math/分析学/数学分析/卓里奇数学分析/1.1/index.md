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
> {{<latex display="true">}}
 S_n=a+ar+ar^2+\cdots+ar^{n-1}
 {{</latex>}}
>
> 将两侧乘{{<latex display="false">}}r{{</latex>}}得到
>
> {{<latex display="true">}}
> rS_n=ar+ar^2+\cdots+ar^{n}
> {{</latex>}}
>
> 两式相减得到
>
> {{<latex display="true">}}
 S_n-rS_n=a-ar^n
 {{</latex>}}
>
> 整理即得到
>
> {{<latex display="true">}}
 S_n=\frac{a(1-r^n)}{1-r}
 {{</latex>}}
>
> 当{{<latex display="false">}}r=1{{</latex>}}时，等比数列即为{{<latex display="false">}}n{{</latex>}}项{{<latex display="false">}}a{{</latex>}}相加，因此结果即为{{<latex display="false">}}S_n=na{{</latex>}}

当 {{<latex display="false">}}h > 0{{</latex>}} 时，在右边方括号内从第二项起都大于 1，因此就有：

{{<latex display="true">}}
(1 + h)^n - 1 > nh.
{{</latex>}}

在 {{<latex display="false">}}-1 < h < 0{{</latex>}} 时，在 (1.1) 右边方括号中从第二项起都小于 1，因此方括号中表达式之和小于 {{<latex display="false">}}n{{</latex>}}。由于 {{<latex display="false">}}h < 0{{</latex>}}，因此又得到：

{{<latex display="true">}}
(1 + h)^n - 1 > nh.
{{</latex>}}

为了应用的方便，可将 Bernoulli 不等式推广为双参数形式。

令 {{<latex display="false">}}h = \frac{B}{A}{{</latex>}}，其中 {{<latex display="false">}}A > 0{{</latex>}}，{{<latex display="false">}}A + B > 0{{</latex>}}，则条件 {{<latex display="false">}}1 + h > 0{{</latex>}} 成立。将这个 {{<latex display="false">}}h{{</latex>}} 代入 Bernoulli 不等式中，就可以得到下一个不等式。

**命题 1.3.2 (Bernoulli 不等式双参数形式)**  
设有 {{<latex display="false">}}A > 0{{</latex>}}，{{<latex display="false">}}A + B > 0{{</latex>}}，{{<latex display="false">}}n \in \mathbb{N}_+{{</latex>}}，则成立不等式：

{{<latex display="true">}}
(A + B)^n \geq A^n + n A^{n-1} B,
{{</latex>}}

而且当 {{<latex display="false">}}n > 1{{</latex>}} 时等号成立的充分必要条件是 {{<latex display="false">}}B = 0{{</latex>}}。

下面要介绍的是著名的**算术平均值-几何平均值不等式**，也简称为**平均值不等式**。它在两个实数的情况下包含了中学数学的三个基本不等式：

1. {{<latex display="true">}}
\sqrt{ab} \leq \frac{1}{2}(a+b) \quad (a, b > 0),
{{</latex>}}

2. {{<latex display="true">}}
\frac{a}{b} + \frac{b}{a} \geq 2 \quad (a, b \text{ 同号}),
{{</latex>}}

3. {{<latex display="true">}}
a^2 + b^2 \geq 2ab \quad (a, b \in \mathbb{R}),
{{</latex>}}

且仅当 {{<latex display="false">}}a = b{{</latex>}} 时，以上三个不等式中等号成立。

**命题 1.3.3 （算术平均值 - 几何平均值不等式）**  
设 {{<latex display="false">}}a_1, a_2, \dots, a_n{{</latex>}} 是 {{<latex display="false">}}n{{</latex>}} 个非负实数，则成立不等式

{{<latex display="true">}}
\frac{a_1 + a_2 + \cdots + a_n}{n} \geq \sqrt[n]{a_1 a_2 \cdots a_n},
{{</latex>}}

其中等号成立的充分必要条件是 {{<latex display="false">}}a_1 = a_2 = \cdots = a_n{{</latex>}}。

**证 1**  
一开始可以看出，如果在 {{<latex display="false">}}a_1, a_2, \dots, a_n{{</latex>}} 中出现 0，则不等式已经成立。  

又可以看出，这时等号成立的充分必要条件是其中每个数为 0。  
因此以下只要对 {{<latex display="false">}}a_1, a_2, \dots, a_n{{</latex>}} 为 {{<latex display="false">}}n{{</latex>}} 个正数的情况来进行证明就够了。

应用数学归纳法。在 {{<latex display="false">}}n=0{{</latex>}} 时结论已经成立。现设 {{<latex display="false">}}n=k{{</latex>}} 时不等式已成立，然后讨论 {{<latex display="false">}}n=k+1{{</latex>}}。将 {{<latex display="false">}}k+1{{</latex>}} 个正数 {{<latex display="false">}}a_1, a_2, \dots, a_{k+1}{{</latex>}} 的算术平均值分解如下：

{{<latex display="true">}}
\frac{a_1 + a_2 + \cdots + a_{k+1}}{k+1} = \frac{a_1 + a_2 + \cdots + a_k}{k} + \frac{k a_{k+1} - (a_1 + a_2 + \cdots + a_k)}{k(k+1)}. \tag{1.2}
{{</latex>}}

解释下上式的分解动机：首先我们来分析各项的含义：

1. {{<latex display="false">}}\frac{a_1 + a_2 + \cdots + a_{k+1}}{k+1}{{</latex>}}代表 k+1 项的平均数。
2. {{<latex display="false">}}\frac{a_1 + a_2 + \cdots + a_{k}}{k}{{</latex>}}代表前 k 项的平均数。

观察两平均数的差值，我们可以得到

{{<latex display="true">}}
\begin{align}
a_{k+1}^{-}-a_{k}^{-}&=\frac{a_{1}+a_{2}+\cdots+a_{k}+a_{k+1}}{k+1}-\frac{a_{1}+a_{2}+\cdots+a_{k}}{k}\\
&=\frac{ka_{k+1}-(a_1+a_2+\cdots+a_k)}{k(k+1)}
\end{align}
{{</latex>}}

很显然，它就是（1.2）式中的右侧第二项。因此（1.2）式的分解动机就非常明显了，即：{{<latex display="false">}}a_{k+1}^{-}= a_{k}^{-}+(a_{k+1}^{-}-a_{k}^{-}){{</latex>}}

然后将上述式右边的两项分别记为 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}}。这时条件 {{<latex display="false">}}A > 0{{</latex>}}，{{<latex display="false">}}A + B > 0{{</latex>}} 满足，因此就可以应用 Bernoulli 不等式中双参形式作以下计算：

{{<latex display="true">}}
\left( \frac{a_1 + a_2 + \cdots + a_k + a_{k+1}}{k+1} \right)^{k+1} 
= (A + B)^{k+1} \geq A^{k+1} + (k+1) A^k B 
= A^k (A + (k+1) B) 
= \left( \frac{a_1 + a_2 + \cdots + a_k}{k} \right)^k \cdot a_{k+1} 
\geq a_1 a_2 \cdots a_k a_{k+1}.
{{</latex>}}

