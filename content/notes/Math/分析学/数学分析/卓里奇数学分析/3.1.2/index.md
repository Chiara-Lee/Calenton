---
title: 3.1.2  序列极限的性质
date: 2024-12-16
lastmod: 2024-12-16
tags: [数学分析]
toc: true
---

##  a.一般性质

我们在这里总结数列的一组性质，但将来可以看到，这些性质并非数列所独有。只取一个值的数列称为常数列。

**定义 4.** 数列 {{<latex display="false">}} \{x_n\} {{</latex>}} 称为 **最终常数列**，如果存在数 {{<latex display="false">}} A {{</latex>}} 与序号 {{<latex display="false">}} N {{</latex>}}，使得对于任意 {{<latex display="false">}} n > N {{</latex>}}，均有 {{<latex display="false">}} x_n = A {{</latex>}}。

> **1. ε-接近性 (ε-approximation)：**  
> 定义 4.3.4 中表述的是：给定 {{<latex display="false">}} \epsilon > 0 {{</latex>}}，两个实数 {{<latex display="false">}} x, y {{</latex>}} 当 {{<latex display="false">}} |x - y| \leq \epsilon {{</latex>}} 时称为 ε-接近的。  
> 这一层面只有两点之间的距离概念，是最基本的“接近”定义。  
>
> **2. ε-稳定性 (ε-stability)：**  
> 定义 5.1.3 中谈到序列 {{<latex display="false">}} (a_n)_{n=0}^\infty {{</latex>}} 的 ε-稳定。序列是 ε-稳定的，意味着该序列中的任意两个元素 {{<latex display="false">}} a_j, a_k {{</latex>}}（无论下标多大），都有 {{<latex display="false">}} |a_j - a_k| \leq \epsilon {{</latex>}}。  
> 换句话说，一个 ε-稳定的序列整体上“被压缩在一个 ε-宽度的间隔中”。不仅仅是相邻项或者后期的项接近，而是**整数序列的任意两项**都足够接近。这是一个很强的条件，通常只有非常特殊的序列才能全局达到这一点（例如常数序列）。  
> 注意：ε-稳定性并没有提及“从某项开始”或“最终”这种概念，它是对整个序列的要求。  
>
> **3. 最终ε-稳定性 (eventual ε-stability)：**  
> 定义 5.1.6 提到了最终 ε-稳定的概念。一个序列最终 ε-稳定是指：存在某个 {{<latex display="false">}} N {{</latex>}} 使得序列从第 {{<latex display="false">}} N {{</latex>}} 项开始（即尾部子序列 {{<latex display="false">}} a_N, a_{N+1}, a_{N+2}, \dots {{</latex>}}）是 ε-稳定的。  
> 这和上一个定义的差别在于，上一个定义要求整数序列对任意两项都接近，这里则放宽为：前面几项不管，但从某一个固定起点之后，序列的尾部内部达到 ε-稳定。  
> 换言之，“最终ε-稳定”说的是：虽然序列开始可能比较散，但在序列走得够远之后，其任意两项都挤在一条宽度为 {{<latex display="false">}} \epsilon {{</latex>}} 的间隔中。这个概念实际上与 **Cauchy 序列** 的定义很接近：Cauchy 序列要求对任意 {{<latex display="false">}} \epsilon {{</latex>}}，都有这样一个 {{<latex display="false">}} N {{</latex>}}，使得 {{<latex display="false">}} N {{</latex>}} 后的所有两项都很接近。  
>
> **Tao 的逻辑梯度：**  
> - 首先定义点与点之间的 ε-接近性，从而获得一个度量空间中的基本接近概念。  
> - 接着将该概念推广到序列上，看序列全局是否 ε-稳定，这是一个强烈的条件，但有助于理解“接近”是如何在无限集合（序列的值集）中推广。  
> - 最后放宽要求到“最终 ε-稳定”，这里接近序列逼近某个值的本质概念，虽然这里还没有直接引入一个具体的极限点 {{<latex display="false">}} A {{</latex>}}，但是要求从某项之后序列内部各项间越来越接近，已经为 **Cauchy 序列** 与极限定义铺平了道路。

**最终常数列 vs. 最终ε-稳定：**

- 最终ε-稳定性 (eventual ε-stability) 要求的是，从某个 {{<latex display="false">}} N {{</latex>}} 开始，序列中任意两项的差都不超过 {{<latex display="false">}} \epsilon {{</latex>}}。换句话说，序列的尾部所有项都挤在一个 {{<latex display="false">}} \epsilon {{</latex>}}-长度的区间中，但它们不一定是完全相等的。
- 最终常数列要求从某个 {{<latex display="false">}} N {{</latex>}} 开始，序列中所有后继项都完全等于某个固定数 {{<latex display="false">}} A {{</latex>}}，也就是尾部部分不但靠得很近，而是完全重合在一个点上。

最终常数列是一种特别强的最终ε-稳定性：如果从 {{<latex display="false">}} N {{</latex>}} 开始所有项都等于 {{<latex display="false">}} A {{</latex>}}，那么显然它们任意两项之间的距离为 0，不管 {{<latex display="false">}} \epsilon {{</latex>}} 多小，都轻松满足最终ε-稳定性。这说明最终常数列是最终ε-稳定序列的一种特殊情况，且是最强的一种，因为你不用控制 {{<latex display="false">}} \epsilon {{</latex>}} 的大小，序列尾部都已经缩成了一个点。

**与极限的关系：**

一个最终常数列对任何给定的 {{<latex display="false">}} A {{</latex>}} 来说，都显然有极限 {{<latex display="false">}} A {{</latex>}}。而且它比有极限还要强烈：从某项以后，序列根本没有变化。

而最终ε-稳定性只是保证了序列后半段的内部紧凑性，但不一定指向某个固定的极限值，也不要求序列像常数列那样凝固在一个点上。最终ε-稳定性是走向极限存在的中间概念之一，**如果在收敛序列的定义中引入一个候选极限值，那么最终ε-稳定性加上序列接近该值才能给出极限定义。**

而前文开头给出的数列极限定义（邻域版）就满足了以上的这些条件：数列中所有序号大于 {{<latex display="false">}} N {{</latex>}} 的项都包含在点{{<latex display="false">}} A {{</latex>}}的邻域{{<latex display="false">}} V(A) {{</latex>}}中。

1. {{<latex display="false">}} n>N {{</latex>}}时所有项都落在邻域内，这保证了后半段内部的紧凑性。
2. 包含在点{{<latex display="false">}} A {{</latex>}}的邻域{{<latex display="false">}} V(A) {{</latex>}}中，这表明存在一个确定的极限值。

因此，这就是我们需要的极限定义。

但是请注意，一个数列收敛到极限 {{<latex display="false">}} A {{</latex>}} 的定义并没有要求数列的项只在 {{<latex display="false">}} A {{</latex>}} 的一侧趋近 {{<latex display="false">}} A {{</latex>}}，也没有要求数列的项永远不会“越过” {{<latex display="false">}} A {{</latex>}} 所在的位置。在数轴上，接近 {{<latex display="false">}} A {{</latex>}} 是一个关于**距离**的概念，而不是关于**朝向**的概念。也就是说，当我们谈论 {{<latex display="false">}} |x_n - A| < \epsilon {{</latex>}} 时，我们指的是 {{<latex display="false">}} x_n {{</latex>}} 距离 {{<latex display="false">}} A {{</latex>}} 很小，而不管 {{<latex display="false">}} x_n {{</latex>}} 比 {{<latex display="false">}} A {{</latex>}} 大还是小。

让我们更系统地来看：

**1. 极限定义的中立性（不关心方向）：**

定义中说：“对于点 {{<latex display="false">}} A {{</latex>}} 的任意邻域 {{<latex display="false">}} V(A) {{</latex>}}——如果我们在实数轴上用 {{<latex display="false">}} \epsilon {{</latex>}}-邻域来表达它，那么是对于任意 {{<latex display="false">}} \epsilon > 0 {{</latex>}}，存在 {{<latex display="false">}} N {{</latex>}} 使得当 {{<latex display="false">}} n > N {{</latex>}} 时，{{<latex display="false">}} |x_n - A| < \epsilon {{</latex>}}。”  
这个不等式对 {{<latex display="false">}} x_n {{</latex>}} 是**对称**的，它只要求 {{<latex display="false">}} x_n {{</latex>}} 距离 {{<latex display="false">}} A {{</latex>}} 的绝对值小于 {{<latex display="false">}} \epsilon {{</latex>}}，并没有要求 {{<latex display="false">}} x_n \leq A {{</latex>}} 或 {{<latex display="false">}} x_n \geq A {{</latex>}}。

因此，{{<latex display="false">}} x_n {{</latex>}} 可以在 {{<latex display="false">}} A {{</latex>}} 左右两侧来回晃动，只要它最终都进入那个越来越小的区间，就满足极限定义。

**2. 越过极限值的直观解释：**

当你想到“越过 {{<latex display="false">}} A {{</latex>}}”时，你可能有一种单方向的想法：数列像是朝着 {{<latex display="false">}} A {{</latex>}} 前进，然后“超越”了 {{<latex display="false">}} A {{</latex>}} 再从另一边逼近。实际上，这非常正常。例如，考虑数列 {{<latex display="false">}} x_n = A + \frac{(-1)^n}{n} {{</latex>}}。

- 当 {{<latex display="false">}} n {{</latex>}} 是偶数时，{{<latex display="false">}} x_n {{</latex>}} 在 {{<latex display="false">}} A {{</latex>}} 的左侧稍微高于 {{<latex display="false">}} A {{</latex>}}。
- 当 {{<latex display="false">}} n {{</latex>}} 是奇数时，{{<latex display="false">}} x_n {{</latex>}} 在 {{<latex display="false">}} A {{</latex>}} 的左侧稍微低于 {{<latex display="false">}} A {{</latex>}}。

随着 {{<latex display="false">}} n {{</latex>}} 增大，这个数列的项逐渐围绕 {{<latex display="false">}} A {{</latex>}} 摆动，但振幅变得越来越小。  
虽然它不断“越过” {{<latex display="false">}} A {{</latex>}}，一会儿比 {{<latex display="false">}} A {{</latex>}} 大，一会儿比 {{<latex display="false">}} A {{</latex>}} 小，但最终所有项都会在任意小的区间内围绕 {{<latex display="false">}} A {{</latex>}} 摆动。这没有违背极限定义，反而很好地体现了极限定义的宽泛性：极限只在乎最终距离是否足够小，而不在乎你是从左逼近还是从右逼近，或是否“越过”。

**3. 极限的内涵**

极限的哲学内涵是关于潜在无穷性的：“可以无限接近而不一定要真正等于”。数列本身也不要求最终停在 {{<latex display="false">}} A {{</latex>}} 上。实际上，数列项可以有无数次穿过 {{<latex display="false">}} A {{</latex>}} 的点，也可以一次都不等于 {{<latex display="false">}} A {{</latex>}}——极限只管当 {{<latex display="false">}} n {{</latex>}} 越来越大时，{{<latex display="false">}} x_n {{</latex>}} 与 {{<latex display="false">}} A {{</latex>}} 的距离能否变得任意小。

在极限定义中，关键是对于任意的 {{<latex display="false">}} \epsilon {{</latex>}} 都能在足够大的 {{<latex display="false">}} N {{</latex>}} 后实现 {{<latex display="false">}} |x_n - A| < \epsilon {{</latex>}}。“越过”只是表示数列的项出现在 {{<latex display="false">}} A {{</latex>}} 的上方，有时在下方，但足够大的 {{<latex display="false">}} n {{</latex>}}，无论在上方还是下方，数列始终被压缩在任意小的间隔内（两边都接近 {{<latex display="false">}} A {{</latex>}}）。这种逻辑上完全成立，而不需要数列保持单调或不超越。

实际上，当数列项越过极限的时候，即使确实发生了“触碰”，那也是完全不违背极限的定义的，因为，这只是表明数列项与极限之间的距离为零，二者发生了重合，它们的距离仍然是任意小的（事实上，它们之间没有距离），因此，最终常数列是有极限的。



**定义 5.** 数列 {{<latex display="false">}} \{x_n\} {{</latex>}} 称为 **有界数列**，如果存在数 {{<latex display="false">}} M {{</latex>}}，使得对于任意 {{<latex display="false">}} n \in \mathbb{N} {{</latex>}}，均有 {{<latex display="false">}} |x_n| < M {{</latex>}}。

**定理 1.**  
- a\) 最终常数列收敛。  
- b\) 数列极限的任何一个邻域都包含数列中为数有限的项之外的所有项。  
- c\) 数列不可能有两个不同的极限。  
- d\) 收敛数列有界。

**证明：**

a\) 如果当 {{<latex display="false">}} n > N {{</latex>}} 时 {{<latex display="false">}} x_n = A {{</latex>}}，则对于点 {{<latex display="false">}} A {{</latex>}} 的任何一个邻域 {{<latex display="false">}} V(A) {{</latex>}}，当 {{<latex display="false">}} n > N {{</latex>}} 时 {{<latex display="false">}} x_n \in V(A) {{</latex>}}，即 {{<latex display="false">}} \lim_{n \to \infty} x_n = A {{</latex>}}。

b\) 此结论直接得自数列极限的定义。

c\) 这是定理的重点。设 {{<latex display="false">}} \lim_{n \to \infty} x_n = A_1 {{</latex>}}，{{<latex display="false">}} \lim_{n \to \infty} x_n = A_2 {{</latex>}}。假如 {{<latex display="false">}} A_1 \neq A_2 {{</latex>}}，我们就选定点 {{<latex display="false">}} A_1, A_2 {{</latex>}} 的两个不相交的邻域 {{<latex display="false">}} V(A_1), V(A_2) {{</latex>}}。

例如，可以在 {{<latex display="false">}} \delta < |A_1 - A_2| / 2 {{</latex>}} 时取这两个点的 {{<latex display="false">}} \delta {{</latex>}} 邻域。根据极限的定义，可以求出序号 {{<latex display="false">}} N_1 {{</latex>}} 和 {{<latex display="false">}} N_2 {{</latex>}}，使得 {{<latex display="false">}} \forall n > N_1 (x_n \in V(A_1)) {{</latex>}} 且 {{<latex display="false">}} \forall n > N_2 (x_n \in V(A_2)) {{</latex>}}。于是，当 {{<latex display="false">}} n > \max{N_1, N_2} {{</latex>}} 时，我们得到 {{<latex display="false">}} x_n \in V(A_1) \cap V(A_2) {{</latex>}}。但这是不可能的，因为 {{<latex display="false">}} V(A_1) \cap V(A_2) = \varnothing {{</latex>}}。

d\) 设 {{<latex display="false">}} \lim_{n \to \infty} x_n = A {{</latex>}}。如果在极限的定义中取 {{<latex display="false">}} \epsilon = 1 {{</latex>}}，就可以求出 {{<latex display="false">}} N {{</latex>}}，使得 {{<latex display="false">}} \forall n > N (|x_n - A| < 1) {{</latex>}}。这意味着，当 {{<latex display="false">}} n > N {{</latex>}} 时有 {{<latex display="false">}} |x_n| < |A| + 1 {{</latex>}}。如果现在取
{{<latex display="true">}} M > \max {|x_1|, |x_2|, \dots, |x_n|, |A| + 1}, {{</latex>}}
就得到 {{<latex display="false">}} \forall n (x_n < M) {{</latex>}}。

##  b.极限过程和算术运算

**定义 6.(数列的算术运算)** 如果数列 {{<latex display="false">}} \{x_n\}, \{y_n\} {{</latex>}} 是两个数列，则数列  
{{<latex display="true">}}
\{(x_n + y_n)\}, \{(x_n y_n)\}, \left\{\frac{x_n}{y_n}\right\}
{{</latex>}}  
分别称为这两个数列的和、积与商（与函数的和、积与商的一般定义一致）。  

当然，商仅在 {{<latex display="false">}} y_n \neq 0, \ n \in \mathbb{N} {{</latex>}} 时才有定义。  

**定理 2.** 设 {{<latex display="false">}} \{x_n\}, \{y_n\} {{</latex>}} 是数列。如果 {{<latex display="false">}} \lim_{n \to \infty} x_n = A {{</latex>}}，{{<latex display="false">}} \lim_{n \to \infty} y_n = B {{</latex>}}，则  
- a\) {{<latex display="false">}} \lim_{n \to \infty} (x_n + y_n) = A + B {{</latex>}}；  
- b\) {{<latex display="false">}} \lim_{n \to \infty} x_n \cdot y_n = A \cdot B {{</latex>}}；  
- c\) 当 {{<latex display="false">}} y_n \neq 0 \ (n = 1, 2, \cdots) {{</latex>}} 且 {{<latex display="false">}} B \neq 0 {{</latex>}} 时 {{<latex display="false">}} \lim_{n \to \infty} \frac{x_n}{y_n} = \frac{A}{B} {{</latex>}}。

**证明：**

我们已经知道如何在近似值的算术运算中估计绝对误差（见第二章 §2 第 4 小节）。作为练习，我们来运用这些估计。

令 {{<latex display="false">}} |A - x_n| = \Delta(x_n), \ |B - y_n| = \Delta(y_n) {{</latex>}}

**则对于 a\)**，我们有：

{{<latex display="true">}}
|(A + B) - (x_n + y_n)| \leq \Delta(x_n) + \Delta(y_n).
{{</latex>}}

> 此处使用了 **三角不等式** （Triangle Inequality）的性质：  
>  
> 对于实数（或更一般的度量空间）中的任意两个数 {{<latex display="false">}} u {{</latex>}} 和 {{<latex display="false">}} v {{</latex>}}，有：  
>  
> {{<latex display="true">}}  
> |u + v| \leq |u| + |v|.  
> {{</latex>}}  
>  
> 在这个例子中，将 {{<latex display="false">}} u = (A - x_n) {{</latex>}} 和 {{<latex display="false">}} v = (B - y_n) {{</latex>}}，则有：  
>  
> {{<latex display="true">}}  
> |(A - x_n) + (B - y_n)| \leq |A - x_n| + |B - y_n|.  
> {{</latex>}}  
>  
> 因此得到不等式：  
>  
> {{<latex display="true">}}  
> |(A + B) - (x_n + y_n)| \leq |A - x_n| + |B - y_n|.  
> {{</latex>}}  
>  
> 之所以是“小于等于”而非“等于”，是因为三角不等式的典型形式就是不等式，而不等式只有在特定的情况下（例如 {{<latex display="false">}} u {{</latex>}} 和 {{<latex display="false">}} v {{</latex>}} 同向且为非负实数时）才会退化为等式。对于绝大多数情况，这仅能保证一个“不超过”的关系，而不是严格的等价关系。

设数 {{<latex display="false">}} \varepsilon > 0 {{</latex>}} 是给定的。因为 {{<latex display="false">}} \lim_{n \to \infty} x_n = A {{</latex>}}，所以可以找到序号 {{<latex display="false">}} N' {{</latex>}}，使得 {{<latex display="false">}} \forall n > N' \ (\Delta(x_n) < \varepsilon / 2) {{</latex>}}。类似地，因为 {{<latex display="false">}} \lim_{n \to \infty} y_n = B {{</latex>}}，所以可以找到序号 {{<latex display="false">}} N'' {{</latex>}}，使得 {{<latex display="false">}} \forall n > N'' \ (\Delta(y_n) < \varepsilon / 2) {{</latex>}}。

于是，当 {{<latex display="false">}} n > \max\{N', N''\} {{</latex>}} 时，我们有：

{{<latex display="true">}}
|(A + B) - (x_n + y_n)| < \varepsilon.
{{</latex>}}

根据极限的定义，这就证明了命题 a\)。

**b) 我们知道，**

{{<latex display="true">}}
|A \cdot B - x_n \cdot y_n| \leq |x_n| \Delta(y_n) + |y_n| \Delta(x_n) + \Delta(x_n) \cdot \Delta(y_n).
{{</latex>}}

> **推导过程：**  
>  
> **1. 开始表达式：**  
> 我们想要给出 {{<latex display="false">}} |A \cdot B - x_n \cdot y_n| {{</latex>}} 的上界。  
>  
> **2. 因式分解：**  
> 将 {{<latex display="false">}} A \cdot B - x_n \cdot y_n {{</latex>}} 分解为易于处理的多项式形式。可以写成：  
> {{<latex display="true">}}  
> A \cdot B - x_n \cdot y_n = (A - x_n)(B - y_n) + x_n(B - y_n) + y_n(A - x_n).  
> {{</latex>}}  
> 这一步是关键，它使得后续应用三角不等式更为直接。  
>  
> **3. 应用三角不等式：**  
> 对上述取绝对值，并使用三角不等式 {{<latex display="false">}} |u + v + w| \leq |u| + |v| + |w| {{</latex>}}：  
> {{<latex display="true">}}  
> |A \cdot B - x_n \cdot y_n| \leq |(A - x_n)(B - y_n)| + |x_n(B - y_n)| + |y_n(A - x_n)|.  
> {{</latex>}}  
>  
> **4. 替换记号与进一步估计：**  
> 已知 {{<latex display="false">}} |A - x_n| = \Delta(x_n) {{</latex>}} 且 {{<latex display="false">}} |B - y_n| = \Delta(y_n) {{</latex>}}。因此：  
> {{<latex display="true">}}  
> |(A - x_n)(B - y_n)| = |A - x_n||B - y_n| = \Delta(x_n)\Delta(y_n).  
> {{</latex>}}  
>  
> 同时：  
> {{<latex display="true">}}  
> |x_n(B - y_n)| = |x_n|\Delta(y_n), \quad |y_n(A - x_n)| = |y_n|\Delta(x_n).  
> {{</latex>}}  
>  
> 将这些代入上式得到：  
> {{<latex display="true">}}  
> |A \cdot B - x_n \cdot y_n| \leq |x_n|\Delta(y_n) + |y_n|\Delta(x_n) + \Delta(x_n)\Delta(y_n).  
> {{</latex>}}

对于给定的 {{<latex display="false">}}\varepsilon > 0{{</latex>}}，可以求出序号 {{<latex display="false">}}N'{{</latex>}} 和 {{<latex display="false">}}N''{{</latex>}}，使得

{{<latex display="true">}}
\forall n > N' \quad \left( \Delta(x_n) < \min \left{ 1, \frac{\varepsilon}{3(|B| + 1)} \right} \right),
{{</latex>}}

{{<latex display="true">}}
\forall n > N'' \quad \left( \Delta(y_n) < \min \left{ 1, \frac{\varepsilon}{3(|A| + 1)} \right} \right).
{{</latex>}}

于是，当 {{<latex display="false">}}n > N = \max{N', N''}{{</latex>}} 时，我们有

{{<latex display="true">}}
|x_n| < |A| + \Delta(x_n) < |A| + 1,
{{</latex>}}

{{<latex display="true">}}
|y_n| < |B| + \Delta(y_n) < |B| + 1,
{{</latex>}}

{{<latex display="true">}}
\Delta(x_n) \cdot \Delta(y_n) < \min \left{ 1, \frac{\varepsilon}{3} \right} \cdot \min \left{ 1, \frac{\varepsilon}{3} \right} < \frac{\varepsilon}{3}.
{{</latex>}}

因此，当 {{<latex display="false">}}n > N{{</latex>}} 时，

{{<latex display="true">}}
|x_n| \Delta(y_n) < (|A| + 1) \cdot \frac{\varepsilon}{3(|A| + 1)} = \frac{\varepsilon}{3},
{{</latex>}}

{{<latex display="true">}}
|y_n| \Delta(x_n) < (|B| + 1) \cdot \frac{\varepsilon}{3(|B| + 1)} = \frac{\varepsilon}{3},
{{</latex>}}

{{<latex display="true">}}
\Delta(x_n) \cdot \Delta(y_n) < \frac{\varepsilon}{3},
{{</latex>}}

所以，当 {{<latex display="false">}}n > N{{</latex>}} 时，{{<latex display="false">}}|AB - x_n y_n| < \varepsilon.{{</latex>}}

> 可见最初设定{{<latex display="false">}}\frac{\varepsilon}{3(|B| + 1)}{{</latex>}}时，就是为了分母能与{{<latex display="false">}}|B| + 1{{</latex>}}粤曲，以凑出{{<latex display="false">}}\frac{\varepsilon}{3}{{</latex>}}，而在{{<latex display="false">}}\Delta(x_n) \cdot \Delta(y_n){{</latex>}}中直接取其小于{{<latex display="false">}}\min \left{ 1, \frac{\varepsilon}{3} \right} \cdot \min \left{ 1, \frac{\varepsilon}{3} \right}{{</latex>}}而忽略之前的复杂分母，也是为了凑出{{<latex display="false">}}\frac{\varepsilon}{3}{{</latex>}}。

**c\) 我们利用估计**

{{<latex display="true">}}
\left| \frac{A}{B} - \frac{x_n}{y_n} \right| \leq \frac{|x_n| \Delta(y_n) + |y_n| \cdot \Delta(x_n)}{y_n^2} \cdot \frac{1}{1 - \delta(y_n)},
{{</latex>}}

其中 {{<latex display="false">}} \delta(y_n) = \Delta(y_n)/|y_n| {{</latex>}}。

> **过程**
>
> 设 {{<latex display="false">}}x = \tilde{x} + \alpha, y = \tilde{y} + \beta{{</latex>}}，则  
> {{<latex display="true">}}
> \Delta \left( \frac{\tilde{x}}{\tilde{y}} \right) = \left| \frac{x}{y} - \frac{\tilde{x}}{\tilde{y}} \right| = \left| \frac{x \tilde{y} - y \tilde{x}}{y \tilde{y}} \right| = \left| \frac{(\tilde{x} + \alpha)\tilde{y} - (\tilde{y} + \beta)\tilde{x}}{\tilde{y}^2} \right| \cdot \left| \frac{1}{1 + \beta / \tilde{y}} \right|
>  {{</latex>}}
> {{<latex display="true">}}
> \leq \frac{|\tilde{x}||\beta| + |\tilde{y}||\alpha|}{\tilde{y}^2} \cdot \frac{1}{1 - \delta(\tilde{y})} = \frac{|\tilde{x}|\Delta(\tilde{y}) + |\tilde{y}|\Delta(\tilde{x})}{\tilde{y}^2} \cdot \frac{1}{1 - \delta(\tilde{y})}.  
> {{</latex>}}

对于给定的 {{<latex display="false">}} \varepsilon > 0 {{</latex>}}，可以求出序号 {{<latex display="false">}} N' {{</latex>}} 和 {{<latex display="false">}} N'' {{</latex>}}，使得

{{<latex display="true">}}
\forall n > N' \quad \left( \Delta(x_n) < \min \left\{ 1, \frac{\varepsilon |B|}{8} \right\} \right),
{{</latex>}}

{{<latex display="true">}}
\forall n > N'' \quad \left( \Delta(y_n) < \min \left\{ \frac{|B|}{4}, \frac{\varepsilon \cdot B^2}{16(|A| + 1)} \right\} \right).
{{</latex>}}

于是，当 {{<latex display="false">}} n > N = \max\{N', N''\} {{</latex>}} 时，我们有

{{<latex display="true">}}
|x_n| < |A| + \Delta(x_n) < |A| + 1,
{{</latex>}}

{{<latex display="true">}}
|y_n| > |B| - \Delta(y_n) > |B| - \frac{|B|}{4} > \frac{|B|}{2},
{{</latex>}}

{{<latex display="true">}}
\frac{1}{|y_n|} < \frac{2}{|B|}, \quad 0 < \delta(y_n) = \frac{\Delta(y_n)}{|y_n|} < \frac{|B|/4}{|B|/2} = \frac{1}{2},
{{</latex>}}

{{<latex display="true">}}
1 - \delta(y_n) > \frac{1}{2}.
{{</latex>}}

所以，

{{<latex display="true">}}
|x_n| \cdot \frac{1}{y_n^2} \Delta(y_n) < (|A| + 1) \cdot \frac{4}{B^2} \cdot \frac{\varepsilon B^2}{16(|A| + 1)} = \frac{\varepsilon}{4},
{{</latex>}}

{{<latex display="true">}}
\left| \frac{1}{y_n} \right| \cdot \Delta(x_n) < \frac{2}{|B|} \cdot \frac{\varepsilon |B|}{8} = \frac{\varepsilon}{4},
{{</latex>}}

{{<latex display="true">}}
0 < \frac{1}{1 - \delta(y_n)} < 2.
{{</latex>}}

从而，当 {{<latex display="false">}} n > N {{</latex>}} 时，

{{<latex display="true">}}
\left| \frac{A}{B} - \frac{x_n}{y_n} \right| < \varepsilon.
{{</latex>}}





