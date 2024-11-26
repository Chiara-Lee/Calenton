---
title: 2.2 加法
date: 2024-11-26
lastmod: 2024-11-26
tags: [数学分析]
toc: true
---

目前来说，自然数系非常简单，我们所知道的只有一种运算：增量运算，以及少数公理。但是现在我们可以构造出更加复杂的运算，如加法运算。

具体做法如下：

5 加上 3 与对 5 进行 3 次增量运算的结果是一样的。且这比 5 加上 2 多了一次增量运算，而 5 加 2 又比 5 加 1 多了一次增量运算。5 加 1 比 5 加 0 多了一次增量运算，最后，5 加 0 就等于 5。如此，我们就可以递归的定义加法运算。

**定义 2.2.1 (自然数的加法)** 令 m 为一个自然数，我们定义 m 加 0 为：

{{<latex display="true">}}
0+m:=m
{{</latex>}}

现在归纳的假设我们已经定义了如何将 m 加上 n。那么，我们将 m 加上 n++ 定义为

{{<latex display="true">}}
(n++)+m:=(n+m)++
{{</latex>}}

于是，{{<latex display="false">}}0+m{{</latex>}}就是 m，{{<latex display="false">}}1+m{{</latex>}}就是{{<latex display="false">}}(0++)+m=(0+m)++=m++{{</latex>}}，{{<latex display="false">}}2+m{{</latex>}}就是{{<latex display="false">}}(1++)+m=(1+m)++=(m++)++{{</latex>}}，以此类推。例如：

{{<latex display="true">}}
2+m=(1++)+m=(1+m)++=(m++)++\\
2+3=(1++)+3=(1+3)++=(3++)++=4++=5\\
{{</latex>}}

根据数学归纳原理，以上，对于任意自然数 n，我们已经定义了 n+m。

现在，我们将之前一般化的讨论特殊化为，{{<latex display="false">}}a_n=n+m{{</latex>}}和{{<latex display="false">}}f_n(a_n)=a_n++{{</latex>}}的情景。

注意：我们以上定义的自然数加法是不对称的：{{<latex display="false">}}3+5{{</latex>}} 表明将 3 增长了 5 次，而{{<latex display="false">}}5+3{{</latex>}}表明将 5 增加了 3 次。不过，它们生成的值是一样的。更一般，对于任意自然数 m、n。有

{{<latex display="true">}}
m+n=n+m
{{</latex>}}

均成立。（我们将稍后给出其证明）

**引理 2.2.2** 对任意自然数 n，{{<latex display="false">}}n+0=n{{</latex>}}恒成立。

注意，我们的定义是{{<latex display="false">}}0+m:=m{{</latex>}}，由于我们尚未证明{{<latex display="false">}}m+n=n+m{{</latex>}}对于任意自然数 n、m 均成立，因此我们不可以直接通过交换律得到{{<latex display="false">}}n+0=n{{</latex>}}。

**证明**:  
采用归纳法来证明。因为{{<latex display="false">}}0 + m = m{{</latex>}}对任意自然数{{<latex display="false">}}m{{</latex>}}均成立并且{{<latex display="false">}}0{{</latex>}}是一个自然数，所以我们能得到最基本的情况{{<latex display="false">}}0 + 0 = 0{{</latex>}}。

现在归纳性地假设{{<latex display="false">}}n + 0 = n{{</latex>}}成立。我们希望证明{{<latex display="false">}}(n++) + 0 = n++{{</latex>}}。

根据加法的定义，{{<latex display="false">}}(n++) + 0 = (n + 0)++{{</latex>}}；  
又根据{{<latex display="false">}}n + 0 = n{{</latex>}}可以推导出{{<latex display="false">}}(n + 0)++ = n++{{</latex>}}。

至此整个归纳过程就结束了。{{<latex display="false">}}\Box{{</latex>}}

**引理 2.2.3**  对任意的自然数{{<latex display="false">}}n{{</latex>}}和{{<latex display="false">}}m{{</latex>}}，有  
{{<latex display="true">}}  
n + (m++) = (n + m)++  
{{</latex>}}  
成立。

同样，因为目前我们还不知道有{{<latex display="false">}}a + b = b + a{{</latex>}}，所以不能从{{<latex display="false">}}(n++) + m = (n + m)++{{</latex>}}中推导出本结论。

**证明**:  
将{{<latex display="false">}}m{{</latex>}}设为定值，对{{<latex display="false">}}n{{</latex>}}采用归纳法。首先考虑最基本的情况，{{<latex display="false">}}n = 0{{</latex>}}。此时我们必须证明  
{{<latex display="true">}}  
0 + (m++) = (0 + m)++  
{{</latex>}}  

现在归纳性地假定{{<latex display="false">}}n + (m++) = (n + m)++{{</latex>}}成立，那么我们必须证明  
{{<latex display="true">}}  
(n++) + (m++) = ((n++) + m)++  
{{</latex>}}  
根据加法的定义，上式左端等于  
{{<latex display="true">}}  
n + ((m++))++ = ((n + m)++)++。  
{{</latex>}}  
又由归纳假设可得{{<latex display="false">}}(n+(m++))++ = ((n + m)++)++{{</latex>}}。类似地，根据加法的定义可得，{{<latex display="false">}}(n++) + m = (n + m)++{{</latex>}}，从而等式的右端也等于{{<latex display="false">}}((n + m)++)++{{</latex>}}。

因此我们证明了等式左端等于右端，从而整个归纳过程到这里就结束了。{{<latex display="false">}}\Box{{</latex>}}


