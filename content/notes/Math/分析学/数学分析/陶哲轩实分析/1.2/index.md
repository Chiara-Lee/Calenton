---
title: 2.2 加法和归纳原理的两个变体
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

根据加法定义，左侧等于{{<latex display="false">}}m++{{</latex>}}，再次根据加法定义，显然右侧也为{{<latex display="false">}}m++{{</latex>}}，因此等式成立。

现在归纳性地假定{{<latex display="false">}}n + (m++) = (n + m)++{{</latex>}}成立，那么我们必须证明  
{{<latex display="true">}}  
(n++) + (m++) = ((n++) + m)++  
{{</latex>}}  
根据加法的定义，上式左端等于{{<latex display="false">}}(n + (m++))++{{</latex>}}又由归纳假设可得
{{<latex display="true">}}
(n+(m++))++ = ((n + m)++)++
{{</latex>}}。
类似地，根据加法的定义可得，{{<latex display="false">}}(n++) + m = (n + m)++{{</latex>}}，从而等式的右端也等于{{<latex display="false">}}((n + m)++)++{{</latex>}}。

因此我们证明了等式左端等于右端，从而整个归纳过程到这里就结束了。{{<latex display="false">}}\Box{{</latex>}}

作为引理 2.2.2 与引理 2.2.3 的一个特别推论，我们得到  
{{<latex display="true">}}  
n++ = n + 1。  
{{</latex>}}

因为{{<latex display="false">}}n+1=n+(0++)=(n+0)++=n++{{</latex>}}。

如之前承诺的，现在，我们来证明{{<latex display="false">}}a + b = b + a{{</latex>}}。

**命题 2.2.4 （加法是可交换的）**  
对任意的自然数{{<latex display="false">}}n{{</latex>}}和{{<latex display="false">}}m{{</latex>}}，有  
{{<latex display="true">}}  
n + m = m + n  
{{</latex>}}  
成立。

**证明**:  
将{{<latex display="false">}}m{{</latex>}}设为定值，对{{<latex display="false">}}n{{</latex>}}采用归纳法。首先证明当{{<latex display="false">}}n = 0{{</latex>}}时结论成立，也就是说证明{{<latex display="true">}}0 + m = m + 0{{</latex>}}。

一方面，根据加法的定义可以推出{{<latex display="false">}}0 + m = m{{</latex>}}；  
另一方面，根据引理 2.2.2 可得{{<latex display="false">}}m + 0 = m{{</latex>}}。  
于是{{<latex display="false">}}n = 0{{</latex>}}时结论成立。

现在归纳性地假设{{<latex display="false">}}n + m = m + n{{</latex>}}成立，那么我们要证明  
{{<latex display="true">}}  
(n++) + m = m + (n++)  
{{</latex>}}  
来完成归纳。

根据加法的定义，{{<latex display="false">}}(n++) + m = (n + m)++{{</latex>}}；  
根据引理 2.2.3，{{<latex display="false">}}m + (n++) = (m + n)++{{</latex>}}；  
但由归纳假设{{<latex display="false">}}n + m = m + n{{</latex>}}可知{{<latex display="true">}}(m + n)++ = (n + m)++{{</latex>}}。  
因此{{<latex display="true">}}(n++) + m = m + (n++){{</latex>}}，进而归纳过程结束。{{<latex display="false">}}\Box{{</latex>}}

**命题 2.2.5 （加法是可结合的）**  
对任意三个自然数{{<latex display="false">}}a{{</latex>}}、{{<latex display="false">}}b{{</latex>}}、{{<latex display="false">}}c{{</latex>}}，有  
{{<latex display="true">}}  
(a + b) + c = a + (b + c)  
{{</latex>}}  
成立。

**证明**:  
固定 {{<latex display="false">}}a, c \in N{{</latex>}}, 对 {{<latex display="false">}}b{{</latex>}} 进行归纳讨论.

**设定当 {{<latex display="false">}}b = 0{{</latex>}}**:  
{{<latex display="true">}}  
(a + 0) + c = a + c = a + (c + 0) = a + (0 + c)  
{{</latex>}}

现在归纳假设 {{<latex display="false">}}b=n{{</latex>}} 时命题成立, 需要证明 {{<latex display="false">}}b=n++{{</latex>}} 时命题成立:  
{{<latex display="true">}}  
\begin{align}  
(a + (n++)) + c &= ((a + n)++) + c \\  
&= c + ((a + n)++) \\  
&= (c + a + n)++ \\  
&= ((a + n) + c)++ \\  
&= (a + (n + c))++ \\  
&= a + (n + c)++ \\  
&= a + ((n++) + c)  
\end{align}  
{{</latex>}}

根据数学归纳法，命题对所有自然数均成立。

正是因为有了这条结合律，我们可以把{{<latex display="false">}}a, b, c{{</latex>}}的和写成{{<latex display="false">}}a + b + c{{</latex>}}的形式，而无需顾虑它们是按照什么样的次序加起来的。

下面，我们给出消去律。

**命题 2.2.6 （消去律）**  
令{{<latex display="false">}}a, b, c{{</latex>}}为任意三个自然数并且满足  
{{<latex display="true">}}  
a + b = a + c,  
{{</latex>}}  
那么{{<latex display="false">}}b = c{{</latex>}}成立。

**注意**:  
由于目前我们还没有给出减法和负数的概念，所以这里不能利用减法或者负数对该命题进行证明。事实上，消去律对于后面我们定义减法（和整数）的概念至关重要，因为在正式定义减法之前，消去律就涉及了一种“虚拟减法”。

**证明**:  
我们通过对{{<latex display="false">}}a{{</latex>}}进行归纳来证明该命题。  
首先考虑最基本的情况{{<latex display="false">}}a = 0{{</latex>}}，我们有  
{{<latex display="true">}}  
0 + b = 0 + c,  
{{</latex>}}  
那么根据加法的定义，由{{<latex display="false">}}0 + b = 0 + c{{</latex>}}可以得到{{<latex display="false">}}b = c{{</latex>}}，故命题成立。

现在归纳性假设关于{{<latex display="false">}}a{{</latex>}}的消去律成立（进而从{{<latex display="false">}}a + b = a + c{{</latex>}}中可以得到{{<latex display="false">}}b = c{{</latex>}}），接下来我们要证明关于{{<latex display="false">}}a++{{</latex>}}的消去律也成立。换言之，就是在假设  
{{<latex display="true">}}  
(a++) + b = (a++) + c  
{{</latex>}}  
成立时，去证明{{<latex display="false">}}b = c{{</latex>}}成立。根据加法的定义，我们有  
{{<latex display="true">}}  
(a++) + b = (a + b)++  
{{</latex>}}  
和  
{{<latex display="true">}}  
(a++) + c = (a + c)++,  
{{</latex>}}  
从而可以得到  
{{<latex display="true">}}  
(a + b)++ = (a + c)++.  
{{</latex>}}  
根据公理 2.4（任意两个不同的自然数的后继也是不同的），我们进一步得到  
{{<latex display="true">}}  
a + b = a + c.  
{{</latex>}}  
显然上式为待证情况的充要条件。因为我们已知关于{{<latex display="false">}}a{{</latex>}}的消去律成立，所以有{{<latex display="false">}}b = c{{</latex>}}成立，结论得证。至此归纳法结束。  
{{<latex display="false">}}  
\Box  
{{</latex>}}

现在我们讨论加法与正性是如何相互作用的。

**定义 2.2.7 （正自然数）**
称一个自然数{{<latex display="false">}}n{{</latex>}}是正的，当且仅当它不等于{{<latex display="false">}}0{{</latex>}}。

**命题 2.2.8**
如果{{<latex display="false">}}a{{</latex>}}是正的并且{{<latex display="false">}}b{{</latex>}}是自然数，那么{{<latex display="false">}}a + b{{</latex>}}是正的（从而根据命题2.2.4可知，{{<latex display="false">}}b + a{{</latex>}}也是正的）。

**证明：**
我们通过对{{<latex display="false">}}b{{</latex>}}进行归纳来证明该命题。如果{{<latex display="false">}}b = 0{{</latex>}}，那么  
{{<latex display="true">}}  
a + b = a + 0 = a  
{{</latex>}}  
显然是正的，从而{{<latex display="false">}}b = 0{{</latex>}}时的结论得证。

现在归纳性地假设{{<latex display="false">}}a + b{{</latex>}}是正的。那么根据公理 2.3 (0 不是任何自然数的后继)可知，  
{{<latex display="true">}}  
a + (b++) = (a + b)++  
{{</latex>}}  
不等于零，从而{{<latex display="false">}}a + (b++){{</latex>}}是正的。至此归纳法结束。  
{{<latex display="false">}}  
\Box  
{{</latex>}}

**推论 2.2.9**  
如果 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 是自然数并且满足 {{<latex display="false">}}a + b = 0{{</latex>}}，那么 {{<latex display="false">}}a = 0{{</latex>}} 且 {{<latex display="false">}}b = 0{{</latex>}}。

**证明**：  
假设结论的反面 {{<latex display="false">}}a \neq 0{{</latex>}} 或 {{<latex display="false">}}b \neq 0{{</latex>}} 成立。如果 {{<latex display="false">}}a \neq 0{{</latex>}}，那么 {{<latex display="false">}}a{{</latex>}} 是正的，从而根据 **命题 2.2.8** 可知，{{<latex display="false">}}a + b{{</latex>}} 是正的，这显然与已知条件 {{<latex display="false">}}a + b = 0{{</latex>}} 相矛盾。类似地，如果 {{<latex display="false">}}b \neq 0{{</latex>}}，那么 {{<latex display="false">}}b{{</latex>}} 是正的，同样根据 **命题 2.2.8** 可知，{{<latex display="false">}}a + b{{</latex>}} 是正的，这与 {{<latex display="false">}}a + b = 0{{</latex>}} 相矛盾。于是 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 必须同时为 {{<latex display="false">}}0{{</latex>}}。□

**引理 2.2.10**  令 {{<latex display="false">}}a{{</latex>}} 表示一个正自然数，那么恰存在一个自然数 {{<latex display="false">}}b{{</latex>}} 使得 {{<latex display="false">}}b++ = a{{</latex>}}。

**证明**：
根据皮亚诺公理 3 （0 不是任何自然数的后继）和 4（不同自然数的后继互不相同）有
{{<latex display="true">}}
\forall m, n \in \mathbb{N}, S(m) = S(n) \implies m = n.
{{</latex>}}
则，
{{<latex display="true">}}
\begin{align}
S(b)=a\\
\forall n \in \mathbb{N},\text{if} S(n)=S(b)=a \implies n = b.
\end{align}
{{</latex>}}
至此命题成立。

**定义 2.2.11 （自然数的序）**  
令{{<latex display="false">}}n{{</latex>}}和{{<latex display="false">}}m{{</latex>}}表示任意两个自然数。我们称{{<latex display="false">}}n{{</latex>}}大于等于{{<latex display="false">}}m{{</latex>}}，并且记作{{<latex display="false">}}n \geq m{{</latex>}}或者{{<latex display="false">}}m \leq n{{</latex>}}，当且仅当存在自然数{{<latex display="false">}}a{{</latex>}}使得{{<latex display="false">}}n = m + a{{</latex>}}。我们称{{<latex display="false">}}n{{</latex>}}大于{{<latex display="false">}}m{{</latex>}}，并且记作{{<latex display="false">}}n > m{{</latex>}}或者{{<latex display="false">}}m < n{{</latex>}}，当且仅当{{<latex display="false">}}n \geq m{{</latex>}}且{{<latex display="false">}}n \neq m{{</latex>}}。  

于是，例如由于{{<latex display="false">}}8 = 5 + 3{{</latex>}}并且{{<latex display="false">}}8 \neq 5{{</latex>}}，所以{{<latex display="false">}}8 > 5{{</latex>}}。另外注意，对任意的{{<latex display="false">}}n{{</latex>}}均有{{<latex display="false">}}n++ > n{{</latex>}}；因此不存在最大的自然数{{<latex display="false">}}n{{</latex>}}，这是因为下一个数{{<latex display="false">}}n++{{</latex>}}总是更大。  

**命题 2.2.12 （自然数的序的基本性质）**  
令{{<latex display="false">}}a, b, c{{</latex>}}为任意自然数，那么：  
(a) （序是自反的）{{<latex display="false">}}a \geq a{{</latex>}}。  
(b) （序是可传递的）如果{{<latex display="false">}}a \geq b{{</latex>}}并且{{<latex display="false">}}b \geq c{{</latex>}}，那么{{<latex display="false">}}a \geq c{{</latex>}}。  
(c) （序是反对称的）如果{{<latex display="false">}}a \geq b{{</latex>}}并且{{<latex display="false">}}b \geq a{{</latex>}}，那么{{<latex display="false">}}a = b{{</latex>}}。
(d) （加法保持序不变）{{<latex display="false">}}a \geq b{{</latex>}}，当且仅当{{<latex display="false">}}a + c \geq b + c{{</latex>}}。  
(e) {{<latex display="false">}}a < b{{</latex>}}，当且仅当{{<latex display="false">}}a++ \leq b{{</latex>}}。  
(f) {{<latex display="false">}}a < b{{</latex>}}，当且仅当存在正自然数{{<latex display="false">}}d{{</latex>}}使得{{<latex display="false">}}b = a + d{{</latex>}}。

**证明：**

**(a)**{{<latex display="false">}}a \geq a{{</latex>}}
{{<latex display="true">}}a + 0 = a \rightarrow a \geq a{{</latex>}}

**(b)**{{<latex display="false">}}a \geq b,b \geq c{{</latex>}}，那么{{<latex display="false">}}a \geq c{{</latex>}}
{{<latex display="true">}}
\begin{align}
a \geq b \rightarrow a = b + n,  n \in \mathbb{N}\\
b \geq c \rightarrow b = c + m,  m \in \mathbb{N}\\
\end{align}
{{</latex>}}
因此，
{{<latex display="true">}}
a = b + n = c + m + n
{{</latex>}}
显然就可得结论，{{<latex display="false">}}a \geq c{{</latex>}}
**(c)**{{<latex display="false">}}a \geq b，b \geq a{{</latex>}}，则{{<latex display="false">}}a = b{{</latex>}}
{{<latex display="true">}}
\begin{align}
a \geq b \rightarrow a = b + n,  n \in \mathbb{N}\\
b \geq a \rightarrow b = a + m,  m \in \mathbb{N}\\
\end{align}
{{</latex>}}
即
{{<latex display="true">}}
a = a + m + n
{{</latex>}}
显然，{{<latex display="false">}}m = 0，n = 0{{</latex>}}，则{{<latex display="false">}}a = b{{</latex>}}。

**(d)**{{<latex display="false">}}a \geq b{{</latex>}} if and only if {{<latex display="false">}}a + c \geq b + c{{</latex>}}.
{{<latex display="true">}}
\begin{align}
(a \geq b) &\iff a = b + m, \, m \in \mathbb{N} \\
          &\iff a + c = b + m + c = b + c + m, \, m \in \mathbb{N} \\
          &\iff a + c \geq b + c.
\end{align}
{{</latex>}}

**(e)** {{<latex display="false">}}a < b{{</latex>}} if and only if {{<latex display="false">}}a++ \leq b{{</latex>}}.

We have

{{<latex display="true">}}
\begin{align}
(a < b) &\iff ((a \leq b) \land (a \neq b)) \\
        &\iff ((a + m = b, \, m \in \mathbb{N}) \land (a \neq b)) \\
        &\iff m \neq 0 \\
        &\iff \exists n \in \mathbb{N}, \, n++ = m \\
        &\iff a + (n++) = b, \, n \in \mathbb{N} \\
        &\iff (a++) + n = b, \, n \in \mathbb{N} (引理 2.2.3)\\
        &\iff a++ \leq b.
\end{align}
{{</latex>}}

**(f)** {{<latex display="false">}}a < b{{</latex>}} if and only if {{<latex display="false">}}b = a + d{{</latex>}} for some positive number {{<latex display="false">}}d{{</latex>}}.

We have

{{<latex display="true">}}
\begin{align}
(a < b) &\iff ((a \leq b) \land (a \neq b)) \\
        &\iff (a + d = b, \, d \in \mathbb{N}) \land (d \neq 0) \\
        &\iff a + d = b, \, d \text{ is positive.}
\end{align}
{{</latex>}}

**命题 2.2.13 （自然数的序的三歧性）**  
令 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 表示任意两个自然数，那么在下面三种表述中恰有一种表述为真：{{<latex display="false">}}a < b{{</latex>}}，{{<latex display="false">}}a = b{{</latex>}}，{{<latex display="false">}}a > b{{</latex>}}。

**证明**：

首先我们证明 {{<latex display="false">}}a < b{{</latex>}}，{{<latex display="false">}}a = b{{</latex>}} 以及 {{<latex display="false">}}a > b{{</latex>}} 这三种表述中同时为真的表述个数不超过一个。如果 {{<latex display="false">}}a < b{{</latex>}}，那么根据定义可知 {{<latex display="false">}}a \neq b{{</latex>}}；同样，如果 {{<latex display="false">}}a > b{{</latex>}}，根据定义可知 {{<latex display="false">}}a \neq b{{</latex>}}。如果 {{<latex display="false">}}a > b{{</latex>}} 并且 {{<latex display="false">}}a < b{{</latex>}}，那么根据命题 2.2.12 可知 {{<latex display="false">}}a = b{{</latex>}}，这显然与 {{<latex display="false">}}a \neq b{{</latex>}} 相矛盾。因此同时为真的表述个数不超过一个。

现在我们证明至少有一个表述为真。

保持 {{<latex display="false">}}b{{</latex>}} 固定不变，对 {{<latex display="false">}}a{{</latex>}} 进行归纳。当 {{<latex display="false">}}a = 0{{</latex>}} 时，对所有的 {{<latex display="false">}}b{{</latex>}} 均有 {{<latex display="false">}}0 \leq b{{</latex>}} （为什么？）因此我们得到 {{<latex display="false">}}0 = b{{</latex>}} 或者 {{<latex display="false">}}0 < b{{</latex>}}，从而 {{<latex display="false">}}a = 0{{</latex>}} 时的结论得证。

现在归纳性地假设关于 {{<latex display="false">}}a{{</latex>}} 的命题已经被证明是成立的，下面我们要证明 {{<latex display="false">}}a++{{</latex>}} 也同样成立。

从关于 {{<latex display="false">}}a{{</latex>}} 的三歧性中可知，存在三种可能的情况：{{<latex display="false">}}a < b{{</latex>}}，{{<latex display="false">}}a = b{{</latex>}} 以及 {{<latex display="false">}}a > b{{</latex>}}。如果 {{<latex display="false">}}a > b{{</latex>}}，那么有 {{<latex display="false">}}a++ > b{{</latex>}}。（为什么？）如果 {{<latex display="false">}}a = b{{</latex>}}，那么 {{<latex display="false">}}a++ > b{{</latex>}}。（为什么？）现在假设 {{<latex display="false">}}a < b{{</latex>}}，那么根据命题 2.2.12 可知 {{<latex display="false">}}a++ \leq b{{</latex>}}。于是我们得到要么 {{<latex display="false">}}a++ = b{{</latex>}}，要么 {{<latex display="false">}}a++ < b{{</latex>}}，其中任何一种情况都符合我们的要求。至此归纳法结束。

**Why 1:** When {{<latex display="false">}}a = 0{{</latex>}}, we have {{<latex display="false">}}0 \leq b{{</latex>}} for all {{<latex display="false">}}b{{</latex>}}.  

{{<latex display="true">}}
(0 + b = b, b \in \mathbb{N}) \Rightarrow (0 \leq b, b \in \mathbb{N})
{{</latex>}}

---

**Why 2:** If {{<latex display="false">}}a > b{{</latex>}}, then {{<latex display="false">}}a++ > b{{</latex>}}.

{{<latex display="true">}}
(a > b) \Rightarrow (a = b + m, m \in \mathbb{N}) \land (a \neq b) \\  
\Rightarrow a++ = b + (m++) \Rightarrow a++ > b  
{{</latex>}}

---

**Why 3:** If {{<latex display="false">}}a = b{{</latex>}}, then {{<latex display="false">}}a++ > b{{</latex>}}.

{{<latex display="true">}}
(a = b) \Rightarrow a++ = b++ = (b + 0)++ = b + (0++) = b + 1 \\  
\Rightarrow a++ > b  
{{</latex>}}

**命题 2.2.14 （强归纳法原理）**  
令 {{<latex display="false">}}m_0{{</latex>}} 表示一个自然数，{{<latex display="false">}}P(m){{</latex>}} 表示与任意自然数 {{<latex display="false">}}m{{</latex>}} 有关的性质。假设对任意满足 {{<latex display="false">}}m \geq m_0{{</latex>}} 的自然数 {{<latex display="false">}}m{{</latex>}}，均有如下内容成立：若 {{<latex display="false">}}P(m'){{</latex>}} 对任意满足 {{<latex display="false">}}m_0 \leq m' < m{{</latex>}} 的自然数 {{<latex display="false">}}m'{{</latex>}} 均为真，那么 {{<latex display="false">}}P(m){{</latex>}} 也为真。（特别地，这意味着 {{<latex display="false">}}P(m_0){{</latex>}} 为真，因为当 {{<latex display="false">}}m = m_0{{</latex>}} 时，前提中的 {{<latex display="false">}}m'{{</latex>}} 取值范围为空。）于是我们能够断定，对于任意满足 {{<latex display="false">}}m \geq m_0{{</latex>}} 的自然数 {{<latex display="false">}}m{{</latex>}}，{{<latex display="false">}}P(m){{</latex>}} 为真。

---

**注 2.2.15** 在应用强归纳法原理的时候，我们通常令 {{<latex display="false">}}m_0 = 0{{</latex>}} 或者 {{<latex display="false">}}m_0 = 1{{</latex>}}。

**证明：**
设 {{<latex display="false">}}P(m){{</latex>}} 是一个与自然数 {{<latex display="false">}}m{{</latex>}} 相关的命题。如果满足以下条件：

1. **基础情况**：当 {{<latex display="false">}}m = m_0{{</latex>}} 时，{{<latex display="false">}}P(m_0){{</latex>}} 为真。
2. **归纳假设**：对于任意 {{<latex display="false">}}m > m_0{{</latex>}}，如果 {{<latex display="false">}}P(m'){{</latex>}} 对所有 {{<latex display="false">}}m_0 \leq m' < m{{</latex>}} 都成立，则 {{<latex display="false">}}P(m){{</latex>}} 也为真。

则结论是：{{<latex display="false">}}P(m){{</latex>}} 对所有 {{<latex display="false">}}m \geq m_0{{</latex>}} 成立。

**证明过程**

**1. 用普通归纳法重新定义问题**

设 {{<latex display="false">}}Q(n){{</latex>}} 表示如下命题：

>对于所有 {{<latex display="false">}}m{{</latex>}} 满足 {{<latex display="false">}}m_0 \leq m < m_0 + n{{</latex>}}，命题 {{<latex display="false">}}P(m){{</latex>}} 都为真。

我们的目标是证明：对于所有正整数 {{<latex display="false">}}n{{</latex>}}，{{<latex display="false">}}Q(n){{</latex>}} 成立。这等价于强归纳原理，因为 {{<latex display="false">}}Q(n){{</latex>}} 的结论覆盖了 {{<latex display="false">}}P(m){{</latex>}} 在 {{<latex display="false">}}m \geq m_0{{</latex>}} 的所有情况。

**2. 验证基础情况**

当 {{<latex display="false">}}n = 1{{</latex>}} 时，{{<latex display="false">}}Q(1){{</latex>}} 的含义是：对于所有 {{<latex display="false">}}m{{</latex>}} 满足 {{<latex display="false">}}m_0 \leq m < m_0 + 1{{</latex>}}，{{<latex display="false">}}P(m){{</latex>}} 为真。

因为能满足 {{<latex display="false">}}m_0 \leq m < m_0 + 1{{</latex>}} 的自然数 {{<latex display="false">}}m{{</latex>}} 只有{{<latex display="false">}}m_0{{</latex>}}，因此此情况下性质仅涉及 {{<latex display="false">}}P(m_0){{</latex>}}，而强归纳原理假设，{{<latex display="false">}}P(m_0){{</latex>}} 为真，因此 {{<latex display="false">}}Q(1){{</latex>}} 为真。

**3. 验证归纳步骤**

假设 {{<latex display="false">}}Q(n){{</latex>}} 为真，即：  
对于所有 {{<latex display="false">}}m{{</latex>}} 满足 {{<latex display="false">}}m_0 \leq m < m_0 + n{{</latex>}}，{{<latex display="false">}}P(m){{</latex>}} 为真。

需要证明 {{<latex display="false">}}Q(n+1){{</latex>}} 为真，即：  
对于所有 {{<latex display="false">}}m{{</latex>}} 满足 {{<latex display="false">}}m_0 \leq m < m_0 + n + 1{{</latex>}}，{{<latex display="false">}}P(m){{</latex>}} 为真。

根据 {{<latex display="false">}}Q(n){{</latex>}}，我们已经知道：
- {{<latex display="false">}}P(m'){{</latex>}} 对于所有 {{<latex display="false">}}m_0 \leq m' < m_0 + n{{</latex>}} 都成立。

我们现在需要证明 {{<latex display="false">}}P(m_0 + n){{</latex>}} 为真。这与基础情况的逻辑是相同的。

因为 {{<latex display="false">}}Q(n+1){{</latex>}} 的定义是
{{<latex display="true">}}
Q(n+1) := \forall m(m_0 < m < m_0 + n + 1 \rightarrow P(m) \text{为真})
{{</latex>}}

根据归纳假设，{{<latex display="false">}}Q(n){{</latex>}} 为真，即
{{<latex display="true">}}
P(m) \text{对于所有的} m_0 \le m < m_0 + n \text{都为真}
{{</latex>}}

所以我们有待验证的范围还剩下
{{<latex display="true">}}
m_0 + n \le m < m_0 + n + 1
{{</latex>}}

而满足上述范围的自然数{{<latex display="false">}}m{{</latex>}} 只有{{<latex display="false">}}m_0 + n{{</latex>}}。

综上，我们只需要证明 {{<latex display="false">}}P(m_0 + n){{</latex>}} 为真，即可得到 {{<latex display="false">}}Q(n+1){{</latex>}} 为真。

根据强归纳原理假设，若 {{<latex display="false">}}P(m'){{</latex>}} 对所有 {{<latex display="false">}}m_0 \leq m' < m{{</latex>}} 都成立，则 {{<latex display="false">}}P(m){{</latex>}} 为真。  
将 {{<latex display="false">}}m = m_0 + n{{</latex>}} 代入，这里 {{<latex display="false">}}P(m'){{</latex>}} 对所有 {{<latex display="false">}}m_0 \leq m' < m_0 + n{{</latex>}} 已经成立（由归纳假设 {{<latex display="false">}}Q(n){{</latex>}}），因此 {{<latex display="false">}}P(m_0 + n){{</latex>}} 为真。

结合归纳假设，我们得出 {{<latex display="false">}}Q(n+1){{</latex>}} 为真。

**4. 归纳完成**

通过普通数学归纳法，我们证明了 {{<latex display="false">}}Q(n){{</latex>}} 对所有正整数 {{<latex display="false">}}n{{</latex>}} 都成立。这意味着：

- 对于所有 {{<latex display="false">}}m \geq m_0{{</latex>}}，{{<latex display="false">}}P(m){{</latex>}} 为真。

**逆向归纳法原理**

令 {{<latex display="false">}}n{{</latex>}} 表示一个自然数，{{<latex display="false">}}P(m){{</latex>}} 是关于自然数的一个性质并且满足：只要 {{<latex display="false">}}P(m++){{</latex>}} 为真，{{<latex display="false">}}P(m){{</latex>}} 就为真。假设 {{<latex display="false">}}P(n){{</latex>}} 也为真，证明：{{<latex display="false">}}P(m){{</latex>}} 对任意满足 {{<latex display="false">}}m \leq n{{</latex>}} 的自然数 {{<latex display="false">}}m{{</latex>}} 均为真；这被称为**逆向归纳法原理**。（提示：对变量 {{<latex display="false">}}n{{</latex>}} 使用归纳法。）

**证明：**
Induction on {{<latex display="false">}}n{{</latex>}}, let {{<latex display="false">}}Q(n){{</latex>}} represent:  
{{<latex display="true">}}  
Q(n) := \{ P(m) \text{ is true, } \forall m \leq n \}  
{{</latex>}}  

**Case 0**: {{<latex display="false">}}Q(0){{</latex>}} is true.

If {{<latex display="false">}}Q(k){{</latex>}} is true, then consider {{<latex display="false">}}Q(k++){{</latex>}}:  
{{<latex display="false">}}Q(k++) = \{ P(m) \text{ is true, } \forall m \leq k++ \}{{</latex>}},  
as {{<latex display="false">}}P(k++){{</latex>}} is true. Hence, {{<latex display="false">}}Q(k++){{</latex>}} is true.

The induction is valid.




