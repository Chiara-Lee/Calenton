---
title: 1.1 符号约定
date: 2024-12-3
lastmod: 2024-12-3
tags: [数学分析]
toc: true
---

凡教材中所用数字，若未加说明，则默认为实数。

对于实数，教材采用的理解即为“可以用十进有尽小数和无尽小数表示的数。”

1. {{<latex display="false">}}\mathbb{N}_+{{</latex>}}：所有正整数所组成的集合。
2. {{<latex display="false">}}\mathbb{R}{{</latex>}}：所有实数组成的集合（同时也用于表示无限区间{{<latex display="false">}}(-\infty,+\infty){{</latex>}}）。
3. {{<latex display="false">}}\mathbb{Q}{{</latex>}}：所有有理数组成的集合。
4. {{<latex display="false">}}\mathbb{C}{{</latex>}}：所有复数组成的集合。
5. {{<latex display="false">}}[x]{{</latex>}} 表示实数 {{<latex display="false">}}x{{</latex>}} 的整数部分，即不超过{{<latex display="false">}}x{{</latex>}}的最大整数。例如

{{<latex display="true">}}
[\sqrt{2}]=1,[-\sqrt{2}]=-2
{{</latex>}}

**关于{{<latex display="false">}}[x]{{</latex>}}的基本不等式是**：

{{<latex display="true">}}
[x]\le x <[x]+1
{{</latex>}}

{{<latex display="true">}}
x-1 < [x]\le x
{{</latex>}}

6. {{<latex display="false">}}\square{{</latex>}} 表示一个证明或解的结束。
7. {{<latex display="false">}}\binom{n}{k}=C^k_n=\frac{n(n-1)\cdots(n-l+1)}{k!}{{</latex>}}
8. 若{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}为两集合，则使用记号{{<latex display="false">}}A-B{{</latex>}}或者{{<latex display="false">}}A\B{{</latex>}}表示{{<latex display="false">}}A{{</latex>}}与{{<latex display="false">}}B{{</latex>}}的差集。其也就是集合{{<latex display="false">}}A\B={x | x\in A\vee x\notin B}{{</latex>}}。
9. 用{{<latex display="false">}}O_{\delta}(a)\, U_{\delta}(a){{</latex>}}表示以{{<latex display="false">}}a{{</latex>}}为中心，以{{<latex display="false">}}\delta > 0{{</latex>}}为半径的邻域。它就是开区间{{<latex display="false">}}(a-\delta ,a+\delta){{</latex>}}。如不必指出半径，则可简写为{{<latex display="false">}}O(a)\, U(a){{</latex>}}