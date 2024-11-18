---
title: 1.1  逻辑基础
date: 2024-11-18
lastmod: 2024-11-18
tags: [代数学]
toc: true
---
在学习线性代数之前，我们有必要将数学中有关真假判定等逻辑问题解答的基础性知识规范一下。值得一提的是，冯琦老师的专业方向就是数理逻辑和公理化集合论，冯琦老师所著《数理逻辑导引》和《集合论导引》都是相关领域的不可多得的高质量推荐教材，有兴趣的读者可能自行找书学习。

##  1.1.1 语句真假判定

在数学中，我们总会关注语句的真假，由于数学中的语句都是按照一种确定的规范由简至繁逐渐成形，因而对所关注的语句的真假判定就完全按照其构成方式被规范的归结到对一系列基本事实的真假判定。下面我们就来介绍一下语句的构成规范和真假判定归结规范。

数学中的语句按照分支被分为各自分支中的**基本语句**和**复合语句**。

具体到线性代数这一分支，比较典型的基本语句就是由加法运算和乘法运算所确定的等式。比如{{<latex display="false">}}5\cdot7+2\cdot3=41{{</latex>}}就是一个基本语句。如果还涉及到线性序，例如用{{<latex display="false">}}<{{</latex>}}来表征小于的线性序关系，那么{{<latex display="false">}}1+2<2+3{{</latex>}}、{{<latex display="false">}}5\cdot2<5\cdot3{{</latex>}}就都是基础语句。

复合语句则是将一系列的基本语句经过一系列的逻辑联结词关联起来之后所得，例如

{{<latex display="true">}}\begin{array}{l}
((5 \cdot 2<3 \cdot 2) \rightarrow(0=1)) \\
((5 \cdot 2<3 \cdot 2) \leftrightarrow(0=1)) \\
((5 \cdot 2<3 \cdot 2) \vee(\neg(0=1))) \\
((5 \cdot 2<3 \cdot 2) \wedge(\neg(0=1)))
\end{array}
{{</latex>}}

就都是复合语句。从上面的复合语句中我们可以看到所涉及到的逻辑关联词一共有五个：

{{<latex display="true">}}\neg(非),\rightarrow(蕴含),\leftrightarrow(对等),\vee(或),\wedge(且){{</latex>}}

其中，

1.符号"{{<latex display="false">}}\neg{{</latex>}}"用以表示“否定”：在一个命题之前加上这样的否定词，就得到原命题的否定，这也就是自然语言所用的“并非如何如何”

2.符号"{{<latex display="false">}}\rightarrow{{</latex>}}"用以表征“蕴含”：蕴含关联词将作为前提的命题和作为结论的命题关联起来。也就是自然语言的“如果，那么”

3.符号"{{<latex display="false">}}\leftrightarrow{{</latex>}}"用以表征“对等”：对等关联词将两个命题以逻辑等价的方式联结起来。也就是两个命题互为充要条件，也可以说是当且仅当的意思

4.符号"{{<latex display="false">}}\vee{{</latex>}}"用以表征“析取”“或者”：析取词将两个命题以“至少其中之一”这样的选择析取方式关联起来。也就是自然语言中的“要么，要么”

5.符号"{{<latex display="false">}}\wedge{{</latex>}}"用以表征“合取”“并且”：合取词将两个命题以“两者都成立”的方式联结起来。也就是自然语言中的“不仅，而且”

### 基本语句的真假判定

在判断基本语句的真假之前，我们首先要明确被判定真假的基本语句是关于哪个线性代数学对象的断言。同一个基本语句，在不同的线性代数学对象之中计算出来的结果可以不同。以下述两个基本语句为例：

{{<latex display="true">}}
\begin{array}{l}
5\cdot7+2\cdot3=41\\
5\cdot3=11
\end{array}
{{</latex>}}

在自然数范围内，或者在整数范围内，第一个基本语句为真，第二个为假。但如果是在只有两个元素的域{{<latex display="false">}}{0,1}{{</latex>}}上，第二个语句就是真的。因而在线性代数学里，关于语句的真假判定都是在相对于给定的具体的线性代数模型之中实现的。真，是相当于具体对象为真；假，是相对于具体对象为假。
在一个固定的线性代数对象中，一个给定的基本等式的两边事实上就给出了在这个对象（模型）之中分别计算出两个值的计算过程。**若在给定的具体线性代数对象中按照等式两边所描述的计算结果来看，两边结果一致，则认为所给等式为真；否则，所给等式就为假。**

### 复合语句真假判定归结过程

复合语句的真假判定依赖于复合语句的布尔值计算规则。

同基本语句的真假判定一样，复合语句的真假判定也需要在相应的具体的线性代数对象中讨论，其真假是相对于具体的线性代数对象而言的。下面的真值计算表可以看作是系统递归地归结的计算方法。

我们约定用{{<latex display="false">}}1{{</latex>}}来表示真，用{{<latex display="false">}}0{{</latex>}}来表示假。并且{{<latex display="false">}}1\ne 0{{</latex>}}。复合语句的真假赋值必须遵从以下五条计算等式规则：

1.否定词计算规则：‘并非’

如果{{<latex display="false">}}A{{</latex>}}是一个已经被赋值了的较低层次的逻辑命题，那么对于{{<latex display="false">}}A{{</latex>}}的否定式{{<latex display="false">}}(\neg A){{</latex>}}的赋值必须满足下述**背反等式**的要求：

对{{<latex display="false">}}(\neg A){{</latex>}}赋值为{{<latex display="false">}}1{{</latex>}}的充要条件是对{{<latex display="false">}}A{{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}},对{{<latex display="false">}}(\neg A){{</latex>}}赋值为{{<latex display="false">}}0{{</latex>}}的充要条件是对{{<latex display="false">}}A{{</latex>}}的赋值为{{<latex display="false">}}1{{</latex>}}
![](/1.png)

2.蕴含词计算规则：‘如果，那么’

如果{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}是已经被赋值了的较低层级的逻辑命题，那么它们的蕴含式{{<latex display="false">}}(A\rightarrow B){{</latex>}}的真值赋值必须满足下述**蕴含等式要求**：对{{<latex display="false">}}(A\rightarrow B){{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}}的充分必要条件是 “(对{{<latex display="false">}}A{{</latex>}}赋值为{{<latex display="false">}}1{{</latex>}}，对{{<latex display="false">}}B{{</latex>}}赋值为{{<latex display="false">}}0{{</latex>}})”。
![](/2.png)

在蕴含赋值计算表中，我们将蕴含式{{<latex display="false">}}(A \to B){{</latex>}}放于最右侧是因为，{{<latex display="false">}}(A \to B){{</latex>}}命题的层级比{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}都高，对于{{<latex display="false">}}(A \to B){{</latex>}}的真值的赋值依赖于对{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}的真值的赋值。根据赋值表我们可以知道“假可以蕴含假，假可以蕴含真，真不能蕴含假，真可以蕴含真”。

3.析取词计算规则：‘要么，要么’

如果{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}是已经被赋值了的较低层级的逻辑命题，那么它们的析取式{{<latex display="false">}}(A \lor B){{</latex>}}的赋值必须满足下述**析取等式要求**：对{{<latex display="false">}}(A \lor B){{</latex>}}的赋值为{{<latex display="false">}}1{{</latex>}}的充分必要条件是 “（或对{{<latex display="false">}}A{{</latex>}}的赋值为{{<latex display="false">}}1{{</latex>}}，或对{{<latex display="false">}}B{{</latex>}}的赋值为{{<latex display="false">}}1{{</latex>}}）”，对{{<latex display="false">}}(A \lor B){{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}}的充分必要条件是 “（或对{{<latex display="false">}}A{{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}}，并且对{{<latex display="false">}}B{{</latex>}}的赋值也为{{<latex display="false">}}0{{</latex>}}）”。

![](/3.png)

4.合取词计算规则：‘不仅，而且’

如果{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}是已经被赋值了的较低层级的逻辑命题，那么他们的合取式{{<latex display="false">}}(A \land B){{</latex>}}的赋值必须满足以下**合取等式要求**：对{{<latex display="false">}}(A \land B){{</latex>}}的赋值为{{<latex display="false">}}1{{</latex>}}的充分必要条件是 “（对{{<latex display="false">}}A{{</latex>}}的赋值为{{<latex display="false">}}1{{</latex>}}，并且对{{<latex display="false">}}B{{</latex>}}的赋值也为{{<latex display="false">}}1{{</latex>}}）”，对{{<latex display="false">}}(A \land B){{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}}的充分必要条件是 “（或对{{<latex display="false">}}A{{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}}，或对{{<latex display="false">}}B{{</latex>}}的赋值为{{<latex display="false">}}0{{</latex>}}）”。

![](/4.png)

5.对等词计算规则：‘当且仅当’

如果{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}B{{</latex>}}是已经被赋值了的较低层级的逻辑命题，那么它们的对等式{{<latex display="false">}}(A \leftrightarrow B){{</latex>}}的赋值必须满足以下**对等等式要求**：对{{<latex display="false">}}(A \leftrightarrow B){{</latex>}}赋值为{{<latex display="false">}}1{{</latex>}}的充分必要条件是 “（对{{<latex display="false">}}A{{</latex>}}和对{{<latex display="false">}}B{{</latex>}}的赋值是相等的）”，对{{<latex display="false">}}(A \leftrightarrow B){{</latex>}}赋值为{{<latex display="false">}}0{{</latex>}}的充分必要条件是 “（对{{<latex display="false">}}A{{</latex>}}和对{{<latex display="false">}}B{{</latex>}}的赋值是不相等的）”。

![](/5.png)

从上面的逻辑真值计算规则，我们可以注意到下面的基本逻辑规律：（所述等价，即是说它们有相同的真值表）

{{<latex display="true">}}
\begin{array}{l}
1. \, A \, \text{与} \, (\neg(\neg A)) \, \text{等价} \\
2. \, (A \to B) \, \text{与} \, ((\neg B) \to (\neg A)) \, \text{等价} \\
3. \, (A \lor B) \, \text{与} \, (B \lor A) \, \text{等价} \\
4. \, (A \land B) \, \text{与} \, (B \land A) \, \text{等价} \\
5. \, (A \leftrightarrow B) \, \text{与} \, (B \leftrightarrow A) \, \text{等价}
\end{array}
{{</latex>}}

另外两条规律也值得注意：

{{<latex display="true">}}
\begin{array}{l}
6. \, \text{如果} \, (A \to B) \, \text{并且} \, (B \to C), \, \text{则} \, (A \to C) \\
7. \, \text{如果} \, (A \leftrightarrow B) \, \text{并且} \, (B \leftrightarrow C), \, \text{则} \, (A \leftrightarrow C)
\end{array}
{{</latex>}}

在数学逻辑中，我们实际上可以只要一条基本的推导规则：由{{<latex display="false">}}A{{</latex>}}和{{<latex display="false">}}(A \to B){{</latex>}}导出{{<latex display="false">}}B{{</latex>}}来。这是数学推演中默认的推理法则，这在许多的推理中都有广泛应用，比如在数学归纳法证明定理时就有明显的运用。

另外还需要注意，人们时常使用{{<latex display="false">}}\Leftarrow{{</latex>}}代替{{<latex display="false">}}\leftarrow{{</latex>}}，{{<latex display="false">}}\Rightarrow{{</latex>}}代替{{<latex display="false">}}\rightarrow{{</latex>}}，{{<latex display="false">}}\Leftrightarrow{{</latex>}}代替{{<latex display="false">}}\leftrightarrow{{</latex>}}。

##  1.1.2 表达式及其语义解释
### 基本表达式及其语义解释

一般而言，在现代数学中，使用变量来抽象的表达一般性已经是一种最为基础的行为。人们不再关心具体的量之间的等价关系，取而代之的是对于等式所揭示的一般的普遍性的密切关注。

比如，你想要表达自然数加法运算具有可交换性和可结合性，最自然的方法就是使用类似下面的有两个变量或三个变量的等式：

{{<latex display="true">}}x+(y+z)=(x+y)+z\\{{</latex>}}

当变量引入，人们可以方便的表达关于所研究的对象的种种的一般性质。

前面我们论证过，任何具体的量之间的等式都是基本语句。因而也就可以通过等式两边经过的具体的运算所得到的结果的比对来判断等式成立与否。可是诸如，{{<latex display="false">}}x+y=y+x{{</latex>}}这样的等式是否也具有真假判定问题呢？或者说，这个等式在什么时候表达了一种真相，什么时候表达了一种假象?

在展开讨论之前，有一点需要明确，即，当我们使用一个表达式来表达一种性质的时候，如果表达式存在变量，我们必须明确当前关注对象的具体范围，也就是变量变化的范围，我们将这个范围称为**论域**。后面，我们将看到许多论域的例子，因为具体的论域、论域之上的加法、乘法运算所组成的**结构**就是线性代数的基本对象。

因为我们关注的是线性代数学，因而我们不妨以给定论域上的加法、乘法运算为例来解释这样的表达式的真假判定问题。

第一，我们首先规定：任何一个被用来标识特殊个体对象的常量（符号），比如

{{<latex display="true">}}1，2，3\cdots2024\cdots\\{{</latex>}}

为一个**项**。

任何一个被用来表示任意个体的变量（符号），比如

{{<latex display="true">}}x,y,z,A,B,C\cdots \\{{</latex>}}

也是一个**项**。

然后，由任意两个已有的项{{<latex display="false">}}t_1{{</latex>}}和{{<latex display="false">}}t_2{{</latex>}}经过加法、乘法运算就可以得到新的项

{{<latex display="true">}}t_1+t_2,t_1\cdot t_2 \\{{</latex>}}

最后，只有从常量或者变量出发，经过有限次加法、乘法迭代方可得到一个项。比如

{{<latex display="true">}}
\begin{array}{l}
a_1x_1+a_2x_2+\cdots+a_nx_n\\
x^m+b_1x^m+\cdots+b_{m-1}x_1
\end{array}
{{</latex>}}

就是两个项。

第二，我们规定，任何一个**基本表达式**无非就是由两个项所组成的一个等式，比如

{{<latex display="true">}}
\begin{array}{l}
a_1x_1+a_2x_2+\cdots a_nx_n=1,\\
x_m+\cdots+b_m=0\\
\end{array}
{{</latex>}}

如果我们还关心诸如实数的线性序（例如{{<latex display="false">}}<{{</latex>}}就是被用来表达线性序的符号），那么任何一个涉及**线性序的基本表达式**就是由两个项所组成的不等式。比如 

{{<latex display="true">}}
\begin{array}{l}
a_1x_1+\cdots+a_nx_n<0,\\
b_1m_1+\cdots+b_2m_2>x_1+\cdots+x_n\\
\end{array}
{{</latex>}}

不妨假设我们需要涉及大小的比较，因而我们有必要使用线性序的关系。这样一来，我们就有两种**基本表达式**：**项之间的等式、项之间的不等式**。以上两种基本表达式我们就分别称之为基本等式和基本不等式。

第三，我们固定一个线性代数学的具体对象。比如：实数与实数的加法、乘法运算，以及它们的线性序关系。这样一来，每个项就是关于实数的一个对象，或者关于实数的一种计算过程。任何一个基本等式也是关于实数的等式，同理不等式就是关于实数的不等式。

第四，在前述的基础上，我们来解决基本表达式的真假判定问题。

给定一个基本表达式，令{{<latex display="false">}}t_1(x_1, \cdots, x_n){{</latex>}}、{{<latex display="false">}}t_2(x_1, \cdots, x_n){{</latex>}}为所涉及的两个项，并且约定，无论是{{<latex display="false">}}t_1{{</latex>}}还是{{<latex display="false">}}t_2{{</latex>}}，在项中出现的所有自变量都出自变量{{<latex display="false">}}x_1, \cdots, x_n{{</latex>}}中。那么这{{<latex display="false">}}n{{</latex>}}个变量就可以彼此独立地在实数范围内取任何值。

我们规定任何一个实数的{{<latex display="false">}}n{{</latex>}}-元组{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}就是上述{{<latex display="false">}}n{{</latex>}}个变量的一组取值。我们称{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}为{{<latex display="false">}}x_1, \cdots, x_n{{</latex>}}的一组**赋值**或者**解释**。

并且，我们规定，记号{{<latex display="false">}}t_1(a_1, \cdots, a_2){{</latex>}}和{{<latex display="false">}}t_2(a_1, \cdots, a_2){{</latex>}}分别用来标识由计算过程{{<latex display="false">}}t_i (i=1, 2){{</latex>}}以数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}为输入所计算出来的结果，并且称{{<latex display="false">}}t_i{{</latex>}}在数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}处的**赋值**或者**解释**。

在此基础上，我们称数值等式

{{<latex display="true">}}
\begin{array}{l}
t_1(a_1, \cdots, a_2) = t_2(a_1, \cdots, a_2)
\end{array}
{{</latex>}}

为基本等式{{<latex display="false">}}t_1 = t_2{{</latex>}}在数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}处的**语义解释**。

类似的我们称数值不等式

{{<latex display="true">}}
\begin{array}{l}
t_1(a_1, \cdots, a_2) < t_2(a_1, \cdots, a_2)
\end{array}
{{</latex>}}

为基本不等式{{<latex display="false">}}t_1 < t_2{{</latex>}}在数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}处的**语义解释**。

现在，我们就规定：

1. 基本等式{{<latex display="false">}}t_1 = t_2{{</latex>}}相对于数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}为真，当且仅当数值等式

{{<latex display="true">}}
\begin{array}{l}
t_1(a_1, \cdots, a_2) = t_2(a_1, \cdots, a_2)
\end{array}
{{</latex>}}

的确成立。

2. 基本等式{{<latex display="false">}}t_1 = t_2{{</latex>}}相对于数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}为假，当且仅当数值等式

{{<latex display="true">}}
\begin{array}{l}
t_1(a_1, \cdots, a_2) = t_2(a_1, \cdots, a_2)
\end{array}
{{</latex>}}

的确不成立。

3. 基本不等式{{<latex display="false">}}t_1 < t_2{{</latex>}}相对于数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}为真，当且仅当数值不等式

{{<latex display="true">}}
\begin{array}{l}
t_1(a_1, \cdots, a_2) < t_2(a_1, \cdots, a_2)
\end{array}
{{</latex>}}

的确成立。

4. 基本不等式{{<latex display="false">}}t_1 < t_2{{</latex>}}相对于数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}为假，当且仅当数值不等式

{{<latex display="true">}}
\begin{array}{l}
t_1(a_1, \cdots, a_2) < t_2(a_1, \cdots, a_2)
\end{array}
{{</latex>}}

的确不成立。

### 量词与表达式

前面我们看到对于基本表达式而言，它们在不同的输入数据处可能表现出不同的真假状态；也有的对输入数据表现得毫无差别，那么，这样的现象又怎样在表达式中被合适的表达出来？这就涉及到当代数学在逻辑学领域的一大里程碑式的突破——在数学中引入**量词**。

既然有变量，就有量词。这是将含有自由变量的表达式转换成没有二义性的语句的需要。

比如说考虑基本等式{{<latex display="false">}}x = y{{</latex>}}和基本不等式{{<latex display="false">}}x < y{{</latex>}}，我们知道，它们有的时候为真，有的时候为假，取决于所给定的输入数据。也就是说，存在一组使其为真的数据，也存在使其为假的数据。

我们将“存在”这个词作为一种量词引入数学，并且用符号{{<latex display="false">}}\exists{{</latex>}}来表征“存在”：

{{<latex display="true">}}
\begin{array}{l}
(\exists x (\exists y (x = y))), \\
(\exists x (\exists y (x < y)))
\end{array}
{{</latex>}}

其中{{<latex display="false">}}\exists x, \exists y{{</latex>}}就都被称为一个**存在量词**。一个存在量词由符号{{<latex display="false">}}\exists{{</latex>}}与一个紧随其右的变元符号组成。并且规定紧跟在存在量词右边一定有一对括号{{<latex display="false">}}(){{</latex>}}将这个存在量词的作用范围确定下来，在这个作用范围内，存在量词所涉及的变量被认为是“受约束变量”。

又比如，考虑基本等式{{<latex display="false">}}x + y = y + x{{</latex>}}和基本不等式{{<latex display="false">}}0 < (x + y)^2{{</latex>}}。我们知道它们的真假状态与它们的输入数据无关。也就是说，对于所有数据，这些表达式都为真。

我们将“对于所有”这个短语作为一个量词引入，并且用符号{{<latex display="false">}}\forall{{</latex>}}来表征这个短语：

{{<latex display="true">}}
\begin{array}{l}
(\forall x (\forall y (x + y = y + x)))
\end{array}
{{</latex>}}

其中，{{<latex display="false">}}\forall x, \forall y{{</latex>}}就都被称为一个**全称量词**。一个全称量词由符号{{<latex display="false">}}\forall{{</latex>}}和紧跟其右的变量组成，并且规定紧跟在全称量词右边一定有一对括号{{<latex display="false">}}(){{</latex>}}将这个全称量词的作用范围确定下来，在这个作用范围内，存在量词所涉及的变量被认为是“受约束变量”。

在引进量词的基础上，我们基本上就可以确定线性代数学所关注的表达式一般都是什么模样了仍然假设我们关注的有加法、乘法和大小比较。

第一，每一个基本表达式都是一个表达式：

{{<latex display="true">}}
\begin{array}{l}
(t_1 = t_2), \quad (t_1 < t_2) \quad (\text{为了规范起见，我们加上圆括号})
\end{array}
{{</latex>}}

第二，假设已经得到一个表达式，比如说这个表达式被记作{{<latex display="false">}}\varphi{{</latex>}}，那么这个表达式的否定式{{<latex display="false">}}(\neg \varphi){{</latex>}}也是一个表达式。

第三，假设已经得到两个表达式，比如说它们被记为{{<latex display="false">}}\varphi{{</latex>}}和{{<latex display="false">}}\psi{{</latex>}}，那么

(1) {{<latex display="false">}}(\varphi \lor \psi){{</latex>}} 是一个表达式  
(2) {{<latex display="false">}}(\varphi \land \psi){{</latex>}} 是一个表达式  
(3) {{<latex display="false">}}(\varphi \to \psi){{</latex>}} 是一个表达式  

第四，假设已经得到一个表达式{{<latex display="false">}}\varphi{{</latex>}}，{{<latex display="false">}}x{{</latex>}}是一个变量符号，那么  
(1) {{<latex display="false">}}(\exists x \varphi){{</latex>}} 是一个表达式  
(2) {{<latex display="false">}}(\forall x \varphi){{</latex>}} 是一个表达式  

最后，除了以上的规定，没有获得新的表达式的可能途径。  

关于两个量词的否定，我们规定  

{{<latex display="true">}}
\begin{array}{l}
(\neg (\forall x \varphi)) \text{ 即为 } (\exists x (\neg \varphi))
\end{array}
{{</latex>}}

以及  

{{<latex display="true">}}
\begin{array}{l}
(\neg (\exists x \varphi)) \text{ 即为 } (\forall x (\neg \varphi))
\end{array}
{{</latex>}}

### 自由变元与约束变元

关于表达式，有一点非常重要，就是区分表达式种出现的变量是受约束出现还是自由出现。因为这是对表达式赋予语义内涵的关键。给定一个表达式{{<latex display="false">}}\varphi{{</latex>}}和一个变量符号{{<latex display="false">}}x{{</latex>}}，假设这个{{<latex display="false">}}x{{</latex>}}在表达式中出现若干次。

如果{{<latex display="false">}}x{{</latex>}}在某一处的出现不在任何存在量词或全称量词的作用范围内，就称{{<latex display="false">}}x{{</latex>}}为{{<latex display="false">}}\varphi{{</latex>}}的一个**自由变量**。反之，则被称为**约束变量**。

在涉及变量和量词的表达式中，那些没有自由变量的表达式被称为**语句**。比如  

{{<latex display="true">}}
\begin{array}{l}
(\forall x (\forall y (x + y = y + x)))
\end{array}
{{</latex>}}

就是一个语句。

在应用中，我们常常会使用形如下述的**受囿量词**：

{{<latex display="true">}}
\begin{array}{l}
\forall x \in A, \quad \exists x \in A
\end{array}
{{</latex>}}

这样书写的根本理由就是我们将变量的变化范围限定在一个局限范围{{<latex display="false">}}A{{</latex>}}之中，并且通常{{<latex display="false">}}A{{</latex>}}就是当前所关注的论域，或者论域的一个子集。需要注意的是，这些并非新的量词，更多的是为了强调变量变化的范围。比如  

{{<latex display="true">}}
\begin{array}{l}
(\forall x \in A \varphi(x))
\end{array}
{{</latex>}}

这个表达式实际上是  

{{<latex display="true">}}
\begin{array}{l}
\forall x ((x \in A) \to \varphi(x))
\end{array}
{{</latex>}}

同样的  

{{<latex display="true">}}
\begin{array}{l}
(\exists x \in A \varphi(x)) \iff \exists x ((x \in A) \land \varphi(x))
\end{array}
{{</latex>}}

更多的时候，当我们固定在一个论域上讨论问题时，使用不受局限的量词与使用受限于论域之内的受限量词实际上是同一回事。

### 表达式语义解释与真假判定

仍然以实数加法、乘法和实数的大小比较为我们当前关注的线性代数学的一个对象，我们来解释表达式的语义和真假判定内涵。

我们现在设{{<latex display="false">}}\varphi(x_1, x_2, \cdots, x_n){{</latex>}}是一个表达式，并且{{<latex display="false">}}\varphi{{</latex>}}中出现的任何的自由变元都来自{{<latex display="false">}}(x_1, x_2, \cdots, x_n){{</latex>}}中，设{{<latex display="false">}}(a_1, a_2, \cdots, a_n){{</latex>}}是实数的一个{{<latex display="false">}}n{{</latex>}}元组。我们将{{<latex display="false">}}\varphi{{</latex>}}中出现的自由变元{{<latex display="false">}}x_i{{</latex>}}进行赋值，使得自由变元{{<latex display="false">}}x_i{{</latex>}}被相应的赋值为{{<latex display="false">}}a_i{{</latex>}}，这时{{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}就是对{{<latex display="false">}}(a_1, a_2, \cdots, a_n){{</latex>}}的性质描述，其中没有任何的需要特定赋值的自由变元。

我们将根据表达式{{<latex display="false">}}\varphi(x_1, x_2, \cdots, x_n){{</latex>}}构造中可能存在的结构来规定如何判定

{{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}

的真假。

(1) 如果{{<latex display="false">}}\varphi(x_1, x_2, \cdots, x_n){{</latex>}}是一个基本表达式，那么{{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}的真假已经在前文被确定好了。

(2) 如果{{<latex display="false">}}\varphi(x_1, x_2, \cdots, x_n){{</latex>}}是表达式{{<latex display="false">}}\varphi(x_1, x_2, \cdots, x_n){{</latex>}}的否定式，即{{<latex display="false">}}\varphi = (\neg \varphi){{</latex>}}并且{{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}的真假已经被确定，则  
&emsp;(a) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真当且仅当{{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假  
&emsp;(b) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假当且仅当{{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真  

(3) 如果{{<latex display="false">}}\varphi(x_1, x_2, \cdots, x_n){{</latex>}}是由两个表达式{{<latex display="false">}}\psi_1(x_1, x_2, \cdots, x_n){{</latex>}}和{{<latex display="false">}}\psi_2(x_1, x_2, \cdots, x_n){{</latex>}}通过联结词{{<latex display="false">}}\lor{{</latex>}}联结而成，即{{<latex display="false">}}\varphi = (\psi_1 \lor \psi_2){{</latex>}}，并且{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}和{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}的真假已经确定，那么  
&emsp;(a) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真，当且仅当{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}为真，或者{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}为真  
&emsp;(b) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假，当且仅当{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}为假，并且{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}为假  

(4) 把上述推导的联结词换成{{<latex display="false">}}\land{{</latex>}}，那么
&emsp;(a) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真，当且仅当{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}为真，并且{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}为真  
&emsp;(b) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假，当且仅当{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}为假，或者{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}为假  

(5) 如果{{<latex display="false">}}\varphi = (\psi_1 \to \psi_2){{</latex>}}，则  
&emsp;(a) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真，当且仅当{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}为假，或者{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}为真  
&emsp;(b) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假，当且仅当{{<latex display="false">}}\psi_1[a_1, a_2, \cdots, a_n]{{</latex>}}为真，但是{{<latex display="false">}}\psi_2[a_1, a_2, \cdots, a_n]{{</latex>}}为假  

(6) 如果{{<latex display="false">}}\varphi = (\forall y \psi){{</latex>}}，则  
&emsp;(a) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真，当且仅当对每一个实数{{<latex display="false">}}a{{</latex>}}都有{{<latex display="false">}}\psi[a_1, a_2, \cdots, a_n]{{</latex>}}为真  
&emsp;(b) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假，当且仅当存在一个实数{{<latex display="false">}}a{{</latex>}}使得{{<latex display="false">}}\psi[a_1, a_2, \cdots, a_n]{{</latex>}}为假  

(7) 如果{{<latex display="false">}}\varphi = (\exists y \psi){{</latex>}}，则  
&emsp;(a) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为真，当且仅当存在一个实数{{<latex display="false">}}a{{</latex>}}使得{{<latex display="false">}}\psi[a_1, a_2, \cdots, a_n]{{</latex>}}为真  
&emsp;(b) {{<latex display="false">}}\varphi[a_1, a_2, \cdots, a_n]{{</latex>}}为假，当且仅当对每一个实数{{<latex display="false">}}a{{</latex>}}都有{{<latex display="false">}}\psi[a_1, a_2, \cdots, a_n]{{</latex>}}为假  

当一个表达式在一组数据{{<latex display="false">}}(a_1, \cdots, a_n){{</latex>}}下为真时，我们说这组数据满足表达式。反之则不满足。

比如，下面这三句话在任何地方都是真语句，**只要涉及到等号，下面三个语句就都为真**。

{{<latex display="true">}}
\begin{array}{l}
(\forall x (x = x)) \\
(\forall x (\forall y ((x = y) \to (y = x)))) \\
(\forall x (\forall y (\forall z (((x = y) \land (y = z)) \to (x = z)))))
\end{array}
{{</latex>}}

这三句话称为**基本等号律**，也称**同一律**。






