---
title: 1.1 皮亚诺公理
date: 2024-11-25
lastmod: 2024-11-25
tags: [数学分析]
toc: true
---

在学习实数分析之前，我们首先要回溯数的概念以及数的性质。

我们已经和数打了很多年的交道了，我们会熟练的利用代数法则和数进行计算，那么现在请让我们转向一个更基本的问题：为什么代数法则是有效的？例如，对于{{<latex display="false">}}a(b+c)=ab+ac{{</latex>}}为什么总是成立的?

实际上，这些运算法则不是随意给出的，而是通过数系更为原始也更为基本的性质中推演得到的。这推演会使我们获得新的技能，即使用较为简单的性质来推导更加复杂的性质。在这个过程中，请时刻记得怀疑的精神，也就是不要轻易的接受一个结论，要思考一个显然成立的命题**为什么**是显然的。

---

现在，我们要根据皮亚诺公理给出定义自然数的一种标准方法。

##  自然数集定义

**定义 2.1.1 （非正式的）自然数是集合**

{{<latex display="true">}}
N := \{ 0, 1, 2, 3, \cdots \}
{{</latex>}}

的元素。其中，集合是从{{<latex display="false">}}0{{</latex>}}开始的，无休止的往前进行计数所得列的所有元素构成的集合。我们称{{<latex display="false">}}N{{</latex>}}为自然数集。

**注 2.1.2** 在有些教材中，自然数被定义为从{{<latex display="false">}}1{{</latex>}}而不是{{<latex display="false">}}0{{</latex>}}开始的，但这仅仅是一种符号约定罢了。在以后的讨论中，我们定义集合{{<latex display="false">}}\{1, 2, 3, \cdots \}{{</latex>}}为**正整数集**，并记为{{<latex display="false">}}Z^+{{</latex>}}，而不是自然数集。自然数有时候也被称为**完整数**（whole number）。

从某种意义上讲，上述定义给出了什么是自然数这个问题的答案：自然数是集合{{<latex display="false">}}N{{</latex>}}中的元素。然而这个定义并非真正的那么令人满意。因为它带来了一个新的问题：

**{{<latex display="false">}}N{{</latex>}}到底是什么？**“从{{<latex display="false">}}0{{</latex>}}开始，无休止的计数”看起来好像是对{{<latex display="false">}}N{{</latex>}}的足够直观的定义描述，但是这样的叙述尚未解决的可能性问题，例如：如何确定我们不会出现无休止的计数结果循环回到{{<latex display="false">}}0{{</latex>}}的情景？我们应当怎样在上述定义之下构造出一个系列的计算？

我们首先来回答第二个问题：我们应该怎样在上面定义诸如加法、乘法等一系列的计算？

我们使用的方法就是利用较为简单的运算来定义较为复杂的运算。指数运算只不过是对乘法运算的重复迭代：  
{{<latex display="false">}}a^3 = a \cdot a \cdot a{{</latex>}}。  
乘法运算只不过是对加法运算的重复迭代：  
{{<latex display="false">}}3 \cdot a = a + a + a{{</latex>}}。  
（由于减法和除法运算并不完全适用于自然数的运算，因此我们暂不讨论。我们在整数数和有理数对应的章节时，会对这些运算进行讨论。）

## 加法和增量运算

那么**加法**又是怎么定义的呢？加法就是**重复往前计数**或者**不断增加的运算**。

如果你把{{<latex display="false">}}5{{</latex>}}加上{{<latex display="false">}}3{{</latex>}}，也就是使得{{<latex display="false">}}5{{</latex>}}增长了三次。另外，增长看起来是一个基本的运算，它不能再被拆解为更加简单的运算。

于是，为了定义自然数，我们将使用如下两个基本概念：**数{{<latex display="false">}}0{{</latex>}}和增量运算**。我们使用{{<latex display="false">}}n++{{</latex>}}来表示{{<latex display="false">}}n{{</latex>}}的增量或者紧跟在{{<latex display="false">}}n{{</latex>}}后面的数字。例如：  
{{<latex display="false">}}3++ = 4, (3++)++ = 5{{</latex>}}。  
注意，这与计算机的语言不同，在数学中说，我们对一个变量只赋值一次。

因此，这看起来就似乎说明{{<latex display="false">}}N{{</latex>}}是由{{<latex display="false">}}0{{</latex>}}以及所有能通过增量运算由{{<latex display="false">}}0{{</latex>}}得到的数构成的。这就是{{<latex display="false">}}N{{</latex>}}应该如下对象构成的：  

{{<latex display="true">}}
0, 0++, (0++)++, \cdots
{{</latex>}}

如果我们把自然数用上述对象来表示，那么得到了如下关于{{<latex display="false">}}0{{</latex>}}和增量运算的公理。

## 公理2.1 ~ 定义2.1.3 定义自然数集的具体元素

**公理 2.1**  {{<latex display="false">}}0{{</latex>}}是自然数。  

**公理 2.2**  如果{{<latex display="false">}}n{{</latex>}}是自然数，那么{{<latex display="false">}}n++{{</latex>}}也是自然数。  

于是，举例来说，我们能通过公理2.1和公理2.2，可以推的{{<latex display="false">}}(0++)++{{</latex>}}是一个自然数。为了计数书写的方便，我们又有如下的定义。

**定义 2.1.3**  
我们定义1为数{{<latex display="false">}}0++{{</latex>}}，2为数{{<latex display="false">}}(0++)++{{</latex>}}等等。

于是，举例来说，我们有：

**命题 2.1.4**  3 是一个自然数  

**proof**:  
根据公理2.1可知，{{<latex display="false">}}0{{</latex>}}是一个自然数。根据公理2.2，{{<latex display="false">}}0++ = 1{{</latex>}}是一个自然数。又根据公理2.2，{{<latex display="false">}}1++ = 2{{</latex>}}也是自然数，那么再通过依序公理2.2，{{<latex display="false">}}2++ = 3{{</latex>}}自然也是自然数。

目前看来，我们对自然数已经有了充分的描述，但对于{{<latex display="false">}}N{{</latex>}}的性质尚未彻底厘清。

## 公理2.3 ~ 公理2.5 定义自然数系的具体性质

虽然我们定义了{{<latex display="false">}}0{{</latex>}}和增量运算，并打算以此来构建自然数系{{<latex display="false">}}+{{</latex>}}，但是我们并没有对自然数系的性质做出规定。例如我们目前没有方法确定定义的自然数系会不会出现循环的情况，即  

{{<latex display="true">}}
0++ = 1, \, 1++ = 2, \, 2++ = 3, \, 3++ = 0
{{</latex>}}

为了防止以上这种循环情况的产生，我们将引入另外的公理。

**公理 2.3**  
{{<latex display="false">}}0{{</latex>}}不紧跟在任何自然数之后。换言之，对于任意一个自然数{{<latex display="false">}}n{{</latex>}}，{{<latex display="false">}}n++ \neq 0{{</latex>}}均成立。  

如此一来，我们就有防止循环情况出现的工具了。

**命题 2.1.6**  {{<latex display="false">}}4 \neq 0{{</latex>}}  

**proof**:  
根据定义{{<latex display="false">}}4 = 3++{{</latex>}}，根据公理2.1和公理2.2，可知{{<latex display="false">}}3{{</latex>}}是一个自然数，故根据公理2.2，{{<latex display="false">}}4{{</latex>}}也是一个自然数，再根据公理2.3，我们就有{{<latex display="false">}}3++ = 4 \neq 0{{</latex>}}。  

除此之外，我们还需要对其他的性质进行研究和规定，否则我们的数系仍然会存在很多病态的性质。

**例 2.1.7**  
考虑由{{<latex display="false">}}0, 1, 2, 3, 4{{</latex>}}构成的数系。在这个数系里，增量运算在遇到{{<latex display="false">}}4{{</latex>}}时达到了运算的极限。换言之，在这个数系里  
{{<latex display="true">}}
0++ = 1, \, 1++ = 2, \, 2++ = 3, \, 3++ = 4, \, 4++ = 4
{{</latex>}}  
（换言之，也就是{{<latex display="false">}}5 = 4++ = 4, 7 = 4++ = 4{{</latex>}}）。这种情况并不违背我们上面规定的任何公理或者定义，甚至，我们虽然防止了我们的自然数系出现绕回到{{<latex display="false">}}0{{</latex>}}的情况，但它仍然可以绕回到{{<latex display="false">}}1, 2{{</latex>}}等其他自然数。

有许多的方法可以阻止这些情况发生，最简单的方法是设定下面的公理成立。

**公理 2.4**  
对于不同的自然数而言，紧跟在它们之后的数字也必然不同。也就是说，如果{{<latex display="false">}}n{{</latex>}}和{{<latex display="false">}}m{{</latex>}}都是自然数，并且{{<latex display="false">}}n \neq m{{</latex>}}，那么{{<latex display="false">}}n++ \neq m++{{</latex>}}。  
等价地说，如果{{<latex display="false">}}n++ = m++{{</latex>}}，则{{<latex display="false">}}n = m{{</latex>}}。

**命题 2.1.8**  6 不等于 2  

**proof**:  
**使用反证法**，假设{{<latex display="false">}}6 = 2{{</latex>}}，那么有{{<latex display="false">}}5++ = 1++{{</latex>}}。根据公理2.4，有{{<latex display="false">}}5 = 1{{</latex>}}，进而有{{<latex display="false">}}4++ = 0++{{</latex>}}。再次利用公理2.4，也就有{{<latex display="false">}}4 = 0{{</latex>}}。在我们的数系中，只有{{<latex display="false">}}0 \sim 4{{</latex>}}这几个数是被定义好的，所有根据我们的规定，{{<latex display="false">}}4 = 0{{</latex>}}与命题2.1.6矛盾，所有我们有结论{{<latex display="false">}}6 \neq 2{{</latex>}}。

规定了上述的公理后，我们还需要考虑这样的自然数系的元素问题，目前来看，好像所有的自然数都是两两不同的，我们已经确定{{<latex display="false">}}0, 1, 2, 3, 4, \cdots{{</latex>}}是自然数系的不同对象，但是它们之间是否有其他形式的数字存在呢？

**例 2.1.9** （非正式的）  
假设我们的数系{{<latex display="false">}}N{{</latex>}}是由如下的整数和半整数共同构成的：  

{{<latex display="true">}}
N := \{0, 0.5, 1, 1.5, 2, 2.5, \cdots\}
{{</latex>}}  

（该例之所以是非正式的是因为，我们提前使用了实数，但我们现在还没有定义实数。）容易验证，这个例子仍然满足公理2.1~公理2.4。  

为此我们希望有这样一个公理，它告诉我们自然数系的所有元素都可以通过对{{<latex display="false">}}0{{</latex>}}进行增量运算来得到，从而能够从{{<latex display="false">}}N{{</latex>}}中排除像{{<latex display="false">}}0.5{{</latex>}}这种形式的元素。幸运的是，我们有一种巧妙的解决办法达到前述要求：  

**公理 2.5 （数学归纳法）**  
令{{<latex display="false">}}P(n){{</latex>}}表示自然数{{<latex display="false">}}n{{</latex>}}满足的一种任意的性质，如果{{<latex display="false">}}P(0){{</latex>}}为真并且{{<latex display="false">}}P(n){{</latex>}}为真时{{<latex display="false">}}P(n++){{</latex>}}也为真，则对于任意的自然数{{<latex display="false">}}n{{</latex>}}，{{<latex display="false">}}P(n){{</latex>}}一定为真。

隐藏在这个公理中的通俗的直观的说明如下：假设{{<latex display="false">}}P(n){{</latex>}}满足以下条件：{{<latex display="false">}}P(0){{</latex>}}为真，且{{<latex display="false">}}P(n){{</latex>}}为真时{{<latex display="false">}}P(n++){{</latex>}}也为真，那么由于{{<latex display="false">}}P(0){{</latex>}}为真，所以{{<latex display="false">}}P(0++) = P(1){{</latex>}}也为真，进而{{<latex display="false">}}P(1++) = P(2){{</latex>}}也为真，以此类推我们可以得到{{<latex display="false">}}P(0), P(1), P(2), P(3), \cdots{{</latex>}}均为真。

然而由根据这样的规定，我们根本没有定义{{<latex display="false">}}0.5{{</latex>}}这样的元素，因此公理2.5对{{<latex display="false">}}P(0.5){{</latex>}}是失效的，从而我们就避免了自然数系中出现附带的奇怪对象。

在公理2.5之上，我们将在习题中给出关于它的其他形式，它们分别是：逆向归纳法、强化归纳法和超限归纳法*（这名字好酷对吧）。

公理2.1~公理2.5被称为**皮亚诺公理**，这套公理系统就是定义自然数系的方法之一。为了定义自然数系，我们假设存在一个数系{{<latex display="false">}}N{{</latex>}}，我们称{{<latex display="false">}}N{{</latex>}}中的元素为自然数，而且公理2.1~公理2.5对{{<latex display="false">}}N{{</latex>}}均成立。

根据前面的所有规定，我们可以得到以下的这个结论：现在我们可以**递归**的定义序列。

---

## 递归定义

假设我们通过以下方式来构造数列{{<latex display="false">}}a_0, a_1, a_2, \cdots{{</latex>}}：首先定义{{<latex display="false">}}a_0{{</latex>}}的基值。例如，令{{<latex display="false">}}a_0 = c{{</latex>}}，其中{{<latex display="false">}}c{{</latex>}}是一个固定的数字。然后令{{<latex display="false">}}a_1{{</latex>}}为关于{{<latex display="false">}}a_0{{</latex>}}的某个函数：{{<latex display="false">}}a_1 := f_0(a_0){{</latex>}}，令{{<latex display="false">}}a_2{{</latex>}}为关于{{<latex display="false">}}a_1{{</latex>}}的某个函数：{{<latex display="false">}}a_2 := f_1(a_1){{</latex>}}。以此类推，一般地，我们记{{<latex display="false">}}a_{n++} := f_n(a_n){{</latex>}}，其中{{<latex display="false">}}f_n{{</latex>}}是{{<latex display="false">}}N \to N{{</latex>}}的某个函数。利用前面的公理可以推出，对于任意给定的自然数{{<latex display="false">}}n{{</latex>}}，上述过程将对应数列中的元素{{<latex display="false">}}a_n{{</latex>}}给出唯一的值。

更准确的说：

**命题 2.1.10 （递归定义）**  
假设对于任何自然数{{<latex display="false">}}n{{</latex>}}，都存在从自然数系到自然数系的函数{{<latex display="false">}}f_n: N \to N{{</latex>}}，令{{<latex display="false">}}c{{</latex>}}为某个固定的自然数，那么对于任意的自然数{{<latex display="false">}}n{{</latex>}}，都可以唯一确定自然数{{<latex display="false">}}a_n{{</latex>}}，使得{{<latex display="false">}}a_0 = c{{</latex>}}以及{{<latex display="false">}}a_{n++} = f_n(a_n){{</latex>}}恒成立。

**proof**:  
利用归纳法。首先，根据题设，我们有{{<latex display="false">}}a_0 = c{{</latex>}}。假设，题设的过程对{{<latex display="false">}}a_m{{</latex>}}赋予了单一的值，由于公理2.3（{{<latex display="false">}}n++ \neq 0{{</latex>}}）和公理2.4（{{<latex display="false">}}n++ \neq m++ \iff n \neq m{{</latex>}}），可知上述过程{{<latex display="false">}}a_{n++} := f_n(a_n){{</latex>}}对{{<latex display="false">}}a_n{{</latex>}}来说是不会改变{{<latex display="false">}}a_n{{</latex>}}的赋值的，因此可知上述过程也同样使得{{<latex display="false">}}a_{n++}{{</latex>}}被唯一赋值了。那么根据数学归纳法，对于任意的自然数{{<latex display="false">}}n{{</latex>}}，{{<latex display="false">}}a_n{{</latex>}}都被定义了，并且每个{{<latex display="false">}}a_n{{</latex>}}都赋予了唯一的值。

对于递归定义，我（笔记书写者）的理解是，我们首先固定了{{<latex display="false">}}a_0 = c{{</latex>}}，然后递归的过程是  
{{<latex display="true">}}
\begin{aligned}
a_1 & := f_0(a_0), \\
a_2 & := f_1(a_1), \\
a_3 & := f_2(a_2), \\
\text{也就是 } a_3 & := f_2(f_1(f_0(a_0))).
\end{aligned}
{{</latex>}}

所以它就是固定一个对象，然后通过一系列函数的嵌套运算过程给出另一个对象的唯一赋值，通过对递归定义的重复应用，我们就可以定义出一系列对象，从而组成一个序列。

一个简单的示例就是泰勒展开：  

我们知道导数的定义是  

{{<latex display="true">}}
\frac{dy}{dx} = \lim_{\Delta x \to 0} \frac{\Delta y}{\Delta x} = \lim_{\Delta x \to 0} \frac{f(x_0 + \Delta x) - f(x_0)}{\Delta x}
{{</latex>}}

从图像上讲，也就是说在曲线上的两点{{<latex display="false">}}(x_0, f(x_0)), (x_0 + \Delta x, f(x_0 + \Delta x)){{</latex>}}当横坐标无限靠近时，导数曲线上两点的点成也无限靠近，此时连接两点的直线成为曲线上的切线，两点成为一个切点。在这个切点上，切线与曲线的斜率就是导数的值。

二阶导数是  

{{<latex display="true">}}
\frac{d^2y}{dx^2} = \lim_{\Delta x \to 0} \frac{df(x_0 + \Delta x) - df(x_0)}{\Delta x}.
{{</latex>}}

也就是说对于原函数*曲线*，一阶导组成的曲线在{{<latex display="false">}}(x_0, df(x_0)){{</latex>}}, {{<latex display="false">}}(x_0 + \Delta x, df(x_0 + \Delta x)){{</latex>}}切点处的导数，{{<latex display="false">}}df(x_0){{</latex>}}就是原函数曲线在{{<latex display="false">}}x_0{{</latex>}}和{{<latex display="false">}}x_0 + \Delta x (\Delta x \to 0){{</latex>}}处的导数，{{<latex display="false">}}df(x_0 + \Delta x){{</latex>}}就是原函数曲线在{{<latex display="false">}}x_0 + \Delta x{{</latex>}}和{{<latex display="false">}}x_0 + 2\Delta x (\Delta x \to 0){{</latex>}}处的导数，这在原函数曲线上表现为{{<latex display="false">}}f(x_0) \sim f(x_0 + \Delta x)(\Delta x \to 0){{</latex>}}，{{<latex display="false">}}f(x_0 + \Delta x) \sim f(x_0 + 2\Delta x)(\Delta x \to 0){{</latex>}}。这两段相连的曲线，我们知道因为{{<latex display="false">}}\Delta x \to 0{{</latex>}}所以这两段曲线都缩略了两个点，而二阶导就是对这两点之间曲线段的拟合度的衡量。

以此类推，{{<latex display="false">}}x_0{{</latex>}}处的三阶导、四阶导实际上就是通过对求导这个操作把原函数曲线在{{<latex display="false">}}x_0{{</latex>}}的邻域内的曲线段一遍遍的放大，然后用切线来拟合曲线。

所以泰勒展开  

{{<latex display="true">}}
f(x) = f(x_0) + \frac{f'(x_0)}{1!}(x - x_0) + \frac{f''(x_0)}{2!}(x - x_0)^2 + \cdots + \frac{f^{(n)}(x_0)}{n!}(x - x_0)^n + R_n, \, R_n(x) = o\left((x - x_0)^n\right)
{{</latex>}}

就是函数{{<latex display="false">}}f(x){{</latex>}}在{{<latex display="false">}}x_0{{</latex>}}处，通过{{<latex display="false">}}n{{</latex>}}次求导迭代得到的最终拟合的结果。而根据迭代的定义，我们知道这个迭代的拟合的过程中给出的赋值是唯一的，并且我们可以根据迭代次数来构造一个不同次迭代赋值得到的函数值的序列。


