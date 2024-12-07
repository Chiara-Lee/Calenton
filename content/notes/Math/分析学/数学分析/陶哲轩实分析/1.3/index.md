---
title: 2.3  乘法 
date: 2024-12-7
lastmod: 2024-12-7
tags: [数学分析]
toc: true
---

在上一节中，我们已经证明了所知道的所有关于加法和序的基本事实。为了节省篇幅以及避免赘述那些显然的事情，接下来我们将允许使用所熟悉的关于加法和序的代数法则，而不加进一步的说明。于是我们可以写出{{<latex display="false">}}a+b+c=c+b+a{{</latex>}}这样的内容，不需要进一步解释说明。现在我们引入乘法。正如加法是重复的增量运算一样，乘法是重复的加法运算。

**定义 2.3.1（自然数的乘法）**

令{{<latex display="false">}}m{{</latex>}}表示任意一个自然数，

我们定义{{<latex display="false">}}0\times m:= 0{{</latex>}}来表示将 0 乘到 m 上。现在归纳假设我们已经定义了{{<latex display="false">}}n\times m{{</latex>}}（即把 n 乘到 m 上）。

那么，我们可以定义

{{<latex display="true">}}(n++)\times m:= (n\times m)+m{{</latex>}}

以上，我们就定义好了自然数的乘法规则。

**引理 2.3.2 （乘法是可交换的）**  令 n 和 m 表示任意两个自然数，那么有{{<latex display="false">}}n\times m=m\times n{{</latex>}}成立。

**证明：**
使用数学归纳法。

首先我们需要证明{{<latex display="false">}}m\times 0= 0{{</latex>}}。当{{<latex display="false">}}m=0{{</latex>}}时，我们有

{{<latex display="true">}}0\times 0:= 0{{</latex>}}

归纳假设当{{<latex display="false">}}m=m{{</latex>}}时{{<latex display="false">}}m\times 0= 0{{</latex>}}是成立的，那么现在我们来证明{{<latex display="false">}}m=m++{{</latex>}}时等式成立。

{{<latex display="true">}}
\begin{align}
(m++)\times 0&=(m\times 0)+0[(n++)\times m:= (n\times m)+m]\\
&=0
\end{align}
{{</latex>}}

以上，我们就得到了基础情况{{<latex display="false">}}0\times m=m\times 0{{</latex>}}。

接下来，我们需要证明

{{<latex display="true">}}n\times (m++)=(n\times m)+n{{</latex>}}

当{{<latex display="false">}}n=0{{</latex>}}时，{{<latex display="false">}}0\times (m++)=0=0\times m+0{{</latex>}}（第一个等号来源于定义，第二个等号是为了交换形式而拼凑出来的）。假设当{{<latex display="false">}}n=n{{</latex>}}时结论已经成立，即有{{<latex display="false">}}n\times (m++)=(n\times m)+n{{</latex>}}，需证{{<latex display="false">}}(n++)\times (m++)=(n++)\times m+(n++){{</latex>}}

{{<latex display="true">}}
\begin{align}
(n++)\times (m++)&=[n\times(m++)]+(m++)\\
&=n\times m+n+(m++)\\
&=n\times m+m+(n++)\\
&=(n++)\times m+(n++)
\end{align}
{{</latex>}}

其中第三个等号是因为

{{<latex display="true">}}
\begin{align}
&n+(m++)=n+(m+1)\\
&(n++)+m=(n+1)+m\\
&n+(m+1)=(n+1)+m\\
&n+(m++)=(n++)+m
\end{align}
{{</latex>}}

综上,引理得证。

我们将把{{<latex display="false">}}n\times m{{</latex>}}简写为{{<latex display="false">}}nm{{</latex>}}，而且按照惯例，乘法运算优先于加法运算。

**引理 2.3.3（正自然数没有零因子）**  令 n 和 m 表示任意两个自然数，那么{{<latex display="false">}}n\times m=0{{</latex>}}当且仅当{{<latex display="false">}}n{{</latex>}}和{{<latex display="false">}}m{{</latex>}}中至少有一个为{{<latex display="false">}}0{{</latex>}}.

**证明：** 设{{<latex display="false">}}n、m{{</latex>}}均为正自然数，并且满足{{<latex display="false">}}n=c++、m=d++{{</latex>}}，其中{{<latex display="false">}}c、d{{</latex>}}均为自然数。

{{<latex display="true">}}
\begin{aligned}
& (n \text { is positive }) \wedge(m \text { is positive }) \\
\Rightarrow & \exists c, d \in N, c++=n, d++=m \\
\Rightarrow & n m=(c++) \times(d++)=c \times(d++)+(d++)=(c \times(d++)+d)++ \\
\Rightarrow & n m \text { is positive }
\end{aligned}
{{</latex>}}

**命题 2.3.4（分配律）**

对于任意自然数{{<latex display="false">}}a,b,c{{</latex>}}

{{<latex display="true">}}
\begin{align}
&a(b+c)=ab+ac\\
&(b+c)a=ba+ca
\end{align}
{{</latex>}}

均成立

**证明：**由于乘法是可交换的，因此只需要证明第一个等式{{<latex display="false">}}a(b+c)=ab+ac{{</latex>}}成立即可。

对{{<latex display="false">}}c{{</latex>}}进行数学归纳。当{{<latex display="false">}}c=0{{</latex>}}时，

{{<latex display="true">}}
\begin{align}
&a(b+0)=ab\\
&ab+a0=ab\\
&a(b+0)=ab+a0
\end{align}
{{</latex>}}

现在我们归纳性地假设{{<latex display="false">}}a(b+c)=ab+ac{{</latex>}}成立，接下来要证明的是{{<latex display="false">}}a(b+(c++))=ab+a(c++){{</latex>}}。

{{<latex display="true">}}
\begin{align}
&a(b+(c++))=a[(b+c)++]\\
&a[(b+c)++]=a(b+c)+a\\
&ab+a(c++)=ab+ac+a
\end{align}
{{</latex>}}

根据{{<latex display="false">}}a(b+c)=ab+ac{{</latex>}}，因此可知{{<latex display="false">}}c++{{</latex>}}的情况亦成立。，那么到这里归纳过程就结束了。

**命题 2.3.5（乘法是可结合的）**

对于任意自然数{{<latex display="false">}}a,b,c{{</latex>}}

{{<latex display="true">}}(a\times b)\times c=a\times(b\times c){{</latex>}}

均成立。

**证明：**

对 b 进行数学归纳 :
对于 0:
{{<latex display="true">}}(a \times 0) \times c=0 \times c=0=a 0=a(0 \times c) {{</latex>}}
如果 b 是正确的，即{{<latex display="false">}} (a\times b)\times c=a\times(b\times c){{</latex>}} , 那么

{{<latex display="true">}}
\begin{array}{l}
(a(b++)) c=(a b+a) c=(a b) c+a c \\
=a(b c)+a c=a(b c+c)=a((b++) c)
\end{array}
{{</latex>}}

**命题 2.3.6（乘法保持序不变）**

如果{{<latex display="false">}}a,b{{</latex>}}是满足{{<latex display="false">}}a<b{{</latex>}}的自然数，并且
{{<latex display="false">}}c{{</latex>}}是正的，那么

{{<latex display="true">}}ac<bc{{</latex>}}

**证明：**因为{{<latex display="false">}}a<b{{</latex>}}，因此存在某个正自然数{{<latex display="false">}}d{{</latex>}}使得

{{<latex display="true">}}b=a+d{{</latex>}}

对上式两端同时乘以{{<latex display="false">}}c{{</latex>}}，然后利用分配律可得

{{<latex display="true">}}bc=ac+dc{{</latex>}}

由于{{<latex display="false">}}c、d{{</latex>}}都是正的，因此{{<latex display="false">}}dc{{</latex>}}显然是正的，于是{{<latex display="false">}}ac<bc{{</latex>}}

**推论 2.3.7（消去律）**

如果{{<latex display="false">}}a,b,c{{</latex>}}均为自然数，且满足{{<latex display="false">}}ac=bc{{</latex>}}，其中{{<latex display="false">}}c{{</latex>}}不为零。那么

{{<latex display="true">}}a=b{{</latex>}}

**证明：**利用序的三歧性（命题 2.2.13），我们有如下三种情况：

{{<latex display="true">}}a<b,a=b,a>b{{</latex>}}

若{{<latex display="false">}}a<b{{</latex>}}，那么{{<latex display="false">}}ac<bc{{</latex>}}与题述条件相悖。{{<latex display="false">}}a>b{{</latex>}}情况相同，因此只有{{<latex display="false">}}a=b{{</latex>}}是对的。

**命题 2.3.9（欧几里得算法）** 设{{<latex display="false">}}n{{</latex>}}是一个自然数，{{<latex display="false">}}q{{</latex>}}表示一个正自然数，那么就存在一个自然数{{<latex display="false">}}m{{</latex>}}和{{<latex display="false">}}r{{</latex>}}使得

{{<latex display="true">}}0\le r<q{{</latex>}}

{{<latex display="true">}}n=mq+r{{</latex>}}

也就是说，我们可以用一个正自然数{{<latex display="false">}}q{{</latex>}}去除以一个自然数{{<latex display="false">}}n{{</latex>}}，从而得到商{{<latex display="false">}}m{{</latex>}}和余数{{<latex display="false">}}r{{</latex>}}。

**证明：**

固定{{<latex display="false">}}q{{</latex>}}，对{{<latex display="false">}}n{{</latex>}}进行数学归纳。
对{{<latex display="false">}}n=0{{</latex>}}时，

{{<latex display="true">}}0=0\times q+0{{</latex>}}}

其中{{<latex display="false">}}m=0,r=0<q{{</latex>}}。

假设当{{<latex display="false">}}n=n{{</latex>}}时结论成立，也就是说，我们有{{<latex display="false">}}0\le r<q{{</latex>}}和{{<latex display="false">}}n=mq+r{{</latex>}}，那么

{{<latex display="true">}}(n++)=(mq+r)++=mq+(r++){{</latex>}}
{{<latex display="true">}}r<q\rightarrow (r++)\le q\rightarrow ((r++)<q)\vee((r++)=q){{</latex>}}

其中，{{<latex display="false">}}r<q\rightarrow (r++)\le q{{</latex>}}是因为{{<latex display="false">}}r,q{{</latex>}}都是自然数，因此，若{{<latex display="false">}}r<q{{</latex>}}则{{<latex display="false">}}(r++){{</latex>}}不可能大于{{<latex display="false">}}q{{</latex>}}。

若情况一成立，那么结论就成立。若情况二成立，那么

{{<latex display="true">}}(n++)=mq+q=(m++)q=(m++)q+0{{</latex>}}

如此，结论成立。

正如我们可以用增量运算递归地定义加法运算以及用加法运算递归地定义乘法运算一样，我们也可以用乘法运算递归地定义指数运算。

**定义 2.3.11（自然数的指数运算）**  
设{{<latex display="false">}}m{{</latex>}}是一个自然数。我们定义{{<latex display="false">}}m^0:=1{{</latex>}}来表示把{{<latex display="false">}}m{{</latex>}}升到{{<latex display="false">}}0{{</latex>}}次幂；特别地，定义{{<latex display="false">}}0^0:=1{{</latex>}}。现在递归地假设对于某个自然数{{<latex display="false">}}n{{</latex>}}，{{<latex display="false">}}m^n{{</latex>}}已经被定义了，那么我们定义

{{<latex display="true">}}m^{n++}:=m^n\times m{{</latex>}}

**例 2.3.12**  
于是譬如  
{{<latex display="true">}} x^1 = x^0 \times x = 1 \times x = x {{</latex>}}，  
{{<latex display="true">}} x^2 = x^1 \times x = x \times x \{{</latex>}}，  
{{<latex display="true">}} x^3 = x^2 \times x = x \times x \times x {{</latex>}}，  
以此类推。根据归纳法可知，这种递归的定义把所有自然数{{<latex display="false">}} n {{</latex>}}所对应的{{<latex display="false">}} x^n {{</latex>}}都定义了。
