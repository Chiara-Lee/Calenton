---
title: 3.1  序列的极限
date: 2024-12-13
lastmod: 2024-12-13
tags: [数学分析]
toc: true
---

**定义 1.（序列）** 定义域为自然数集的函数 {{<latex display="false">}} f : \mathbb{N} \to X {{</latex>}} 称为序列。  

函数 {{<latex display="false">}} f(n) {{</latex>}} 的值 {{<latex display="false">}} f(n) {{</latex>}} 称为 **序列的项**。通常用集合 {{<latex display="false">}} X {{</latex>}} 的元素所对应的符号来表示序列的项，并让自变量对应的符号作为其下标：{{<latex display="false">}} x_n := f(n) {{</latex>}}。因此，我们用符号 {{<latex display="false">}} \{ x_n \} {{</latex>}} 来表示序列本身，有时也把它写为 {{<latex display="false">}} x_1, x_2, \dots, x_n, \dots {{</latex>}} 的形式，并称之为 **集合 {{<latex display="false">}} X {{</latex>}} 中的序列** 或 **集合 {{<latex display="false">}} X {{</latex>}} 的元素序列**。

**元素 {{<latex display="false">}} x_n {{</latex>}} 称为序列的第 {{<latex display="false">}} n {{</latex>}} 项。**

在下面几节中，我们只讨论实数列 {{<latex display="false">}} f : \mathbb{N} \to \mathbb{R} {{</latex>}}。

**定义 2.（序列的极限）** 数{{<latex display="false">}} A\in \mathbb{R} {{</latex>}}数列 {{<latex display="false">}} \{ x_n \} {{</latex>}} 的极限，如果对于点 {{<latex display="false">}} A {{</latex>}} 的任何一个领域 {{<latex display="false">}} V(A) {{</latex>}}，都存在序号 {{<latex display="false">}} N {{</latex>}} （其选取与 {{<latex display="false">}} V(A) {{</latex>}} 有关），使得数列中所有序号大于 {{<latex display="false">}} N {{</latex>}} 的项都包含在点 {{<latex display="false">}} A {{</latex>}} 的上述邻域 {{<latex display="false">}} V(A) {{</latex>}} 中。

我们将在下面给出这个定义的形式逻辑写法，这里首先指出数列极限定义的另一种常见的表达。

**数列 {{<latex display="false">}} A \in \mathbb{R} {{</latex>}} 称为数列 {{<latex display="false">}} \{ x_n \} {{</latex>}} 的极限，如果对于任何 {{<latex display="false">}} \epsilon > 0 {{</latex>}}，都存在序号 {{<latex display="false">}} N {{</latex>}}，使得对于一切 {{<latex display="false">}} n > N {{</latex>}}，都有 {{<latex display="false">}} | x_n - A | < \epsilon {{</latex>}}。**

如果注意到点 {{<latex display="false">}} A {{</latex>}} 的任何一个领域 {{<latex display="false">}} V(A) {{</latex>}} 都包含该点的某个 {{<latex display="false">}} \epsilon {{</latex>}} 邻域，就容易验证这两种表达的等价性。

现在我们来验证以上两种说法的等价性：

**1.“领域”定义的极限和{{<latex display="false">}} \varepsilon -\delta {{</latex>}}定义的极限的等价性证明**

这种定义的本质在于，实数系 {{<latex display="false">}} \mathbb{R} {{</latex>}} 上的拓扑是由度量诱导的，每个点 {{<latex display="false">}} A {{</latex>}} 的邻域可以用适当的 {{<latex display="false">}} \epsilon {{</latex>}} 邻域来描述。这意味着“对于每个邻域 {{<latex display="false">}} V(A) {{</latex>}}”与“对于任意 {{<latex display="false">}} \epsilon > 0 {{</latex>}}”在实数轴上是等价的表达方式。证明的关键在于：

1. 任意给定的 {{<latex display="false">}} \epsilon {{</latex>}} -邻域 {{<latex display="false">}} (A - \epsilon, A + \epsilon) {{</latex>}} 都是 {{<latex display="false">}} A {{</latex>}} 的一个邻域。

2. 对于给定的任一邻域 {{<latex display="false">}} V(A) {{</latex>}}，都可以找到一个 {{<latex display="false">}} \epsilon {{</latex>}} -邻域 {{<latex display="false">}} (A - \epsilon, A + \epsilon) {{</latex>}} 使得该 {{<latex display="false">}} \epsilon {{</latex>}} 邻域包含在所给的 {{<latex display="false">}} V(A) {{</latex>}} 中。

通过这两个事实，可以从“邻域”定义的极限转换为“{{<latex display="false">}} \epsilon - \delta {{</latex>}}”定义的极限，反之亦然，从而证明三者等价。

详细证明过程：
>
> (1) 从邻域定义推得 {{<latex display="false">}} \epsilon {{</latex>}} -定义：
>
> 设 {{<latex display="false">}} A {{</latex>}} 是数列 {{<latex display="false">}} (x_n) {{</latex>}} 的极限，满足邻域版本的定义：
>
>> 对于点 {{<latex display="false">}} A {{</latex>}} 的任意一个邻域 {{<latex display="false">}} V(A) {{</latex>}}，存在在 {{<latex display="false">}} n > N {{</latex>}} 时，{{<latex display="false">}} x_n \in V(A) {{</latex>}}。
>
> 现在取任意 {{<latex display="false">}} \epsilon > 0 {{</latex>}}。考虑 {{<latex display="false">}} \epsilon {{</latex>}} -邻域 {{<latex display="false">}} (A - \epsilon, A + \epsilon) {{</latex>}} 作为 {{<latex display="false">}} V(A) {{</latex>}} 的一个具体选择。由邻域定义的极限性质可知，存在 {{<latex display="false">}} N {{</latex>}} 使得当 {{<latex display="false">}} n > N {{</latex>}} 时，{{<latex display="true">}} x_n \in (A - \epsilon, A + \epsilon) {{</latex>}}。
>
> 这等价于 {{<latex display="false">}} | x_n - A | < \epsilon {{</latex>}}。这样就由邻域定义得到了标准的 {{<latex display="false">}} \epsilon - \delta {{</latex>}} 定义。
>
> (2) 从 {{<latex display="false">}} \epsilon {{</latex>}} -定义推得邻域定义：
>
> 现在假设 {{<latex display="false">}} A {{</latex>}} 是数列 {{<latex display="false">}} (x_n) {{</latex>}} 的极限，满足 {{<latex display="false">}} \epsilon {{</latex>}} -定义：
>
>> 对于任意 {{<latex display="false">}} \epsilon > 0 {{</latex>}}，存在在 {{<latex display="false">}} n > N {{</latex>}} 时 {{<latex display="false">}} | x_n - A | < \epsilon {{</latex>}}。
>
> 给定任意邻域 {{<latex display="false">}} V(A) {{</latex>}}，由于在实数轴上邻域都可以用开区间描述，即对于点 {{<latex display="false">}} A {{</latex>}} 存在 {{<latex display="false">}} \delta > 0 {{</latex>}} 使得 {{<latex display="false">}} (A - \delta, A + \delta) \subset V(A) {{</latex>}}。
>
> 依据于 {{<latex display="false">}} \epsilon {{</latex>}} -定义的极限定义，取 {{<latex display="false">}} \delta = \epsilon {{</latex>}}，便存在在 {{<latex display="false">}} n > N {{</latex>}} 时 {{<latex display="false">}} | x_n - A | < \delta {{</latex>}}，即 {{<latex display="false">}} x_n \in (A - \delta, A + \delta) \subset V(A) {{</latex>}}。这样就从 {{<latex display="false">}} \epsilon {{</latex>}} -定义的极限转换为邻域定义的极限。

极限定义的后一种表达的意思是，在用数列 {{<latex display="false">}} (x_n) {{</latex>}} 去逼近数 {{<latex display="false">}} A {{</latex>}} 时，无论我们给出怎样的精度 {{<latex display="false">}} \epsilon > 0 {{</latex>}}，总能够找到序号 {{<latex display="false">}} N {{</latex>}}，使得绝对误差在 {{<latex display="false">}} n > N {{</latex>}} 时小于 {{<latex display="false">}} \epsilon {{</latex>}}。

现在用逻辑符号写出极限定义的以上表达，并约定用符号 {{<latex display="true">}} \lim_{n \to \infty} x_n = A {{</latex>}} 表示数列 {{<latex display="false">}} (x_n) {{</latex>}} 的极限。于是，

{{<latex display="true">}}
\boxed{\left( \lim_{n \to \infty} x_n = A \right) := \forall V(A) \exists N \in \mathbb{N} \forall n > N ( x_n \in V(A) )}
{{</latex>}}

相应地，

{{<latex display="true">}}
\boxed{\left( \lim_{n \to \infty} x_n = A \right) := \forall \epsilon > 0 \exists N \in \mathbb{N} \forall n > N ( | x_n - A | < \epsilon )}.
{{</latex>}}

**定义 3.（收敛、发散数列）** 如果 {{<latex display="false">}} \lim_{n \to \infty} x_n = A {{</latex>}}，我们就说数列 {{<latex display="false">}} \{ x_n \} {{</latex>}} 收敛于 {{<latex display="false">}} A {{</latex>}} 或趋近于 {{<latex display="false">}} A {{</latex>}}，并记作：

当 {{<latex display="false">}} n \to \infty {{</latex>}} 时 {{<latex display="false">}} x_n \to A {{</latex>}}。

有极限的数列称为收敛数列，没有极限的数列称为发散数列。

讨论一些例子。

例 1. {{<latex display="false">}} \lim_{n \to \infty} \frac{1}{n} = 0 {{</latex>}}，因为当 {{<latex display="false">}} n > N=\left[\frac{1}{\varepsilon}\right] {{</latex>}}[^1] 时：

{{<latex display="false">}} \left| \frac{1}{n} - 0 \right| = \frac{1}{n} < \epsilon {{</latex>}}。

例 2. {{<latex display="false">}} \lim_{n \to \infty} \frac{n + 1}{n} = 1 {{</latex>}}，因为当 {{<latex display="false">}} n > N=\left[\frac{1}{\varepsilon}\right] {{</latex>}} 时：

{{<latex display="false">}} \left| \frac{n + 1}{n} - 1 \right| = \frac{1}{n} < \epsilon {{</latex>}}。

例 3. {{<latex display="false">}} \lim_{n \to \infty} \left( 1 + \frac{(-1)^n}{n} \right) = 1 {{</latex>}}，因为当 {{<latex display="false">}} n > N=\left[\frac{1}{\varepsilon}\right] {{</latex>}} 时，

{{<latex display="false">}} \left| \left( 1 + \frac{(-1)^n}{n} \right) - 1 \right| = \frac{1}{n} < \epsilon {{</latex>}}。

例 4. {{<latex display="false">}} \lim_{n \to \infty} \frac{\sin n}{n} = 0 {{</latex>}}，因为当 {{<latex display="false">}} n > N=\left[\frac{1}{\varepsilon}\right] {{</latex>}} 时，

{{<latex display="false">}} \left| \frac{\sin n}{n} - 0 \right| \leq \frac{1}{n} < \epsilon {{</latex>}}。

例 5. {{<latex display="false">}} \lim_{n \to \infty} \frac{1}{q^n} = 0 {{</latex>}}，如果 {{<latex display="false">}} |q| > 1 {{</latex>}}。

我们根据极限的定义进行验证。对于任意 {{<latex display="false">}} \epsilon > 0 {{</latex>}}，可以找到一个数 {{<latex display="false">}} N \in \mathbb{N} {{</latex>}}，使得 {{<latex display="false">}} \frac{1}{|q|^N} < \epsilon {{</latex>}}。因为 {{<latex display="false">}} |q| > 1 {{</latex>}}，所以对于任意 {{<latex display="false">}} n > N {{</latex>}} 都有：

{{<latex display="false">}} \left| \frac{1}{q^n} - 0 \right| = \frac{1}{|q|^n} < \frac{1}{|q|^N} < \epsilon {{</latex>}}。

从而使极限的定义得到满足。

例 6. 第 {{<latex display="false">}} n {{</latex>}} 项为 {{<latex display="false">}} x_n = n^{(-1)^n} {{</latex>}} （{{<latex display="false">}} n \in \mathbb{N} {{</latex>}}）的数列 {{<latex display="false">}} 1, 2, \frac{1}{3}, 4, \frac{1}{5}, 6, \frac{1}{7}, \dots {{</latex>}} 是发散的。

其实，如果 {{<latex display="false">}} A {{</latex>}} 是数列的极限，则根据极限的定义，在 {{<latex display="false">}} A {{</latex>}} 的任何一个邻域以外只可能有有限的项。

数列 {{<latex display="false">}} A \neq 0 {{</latex>}} 不可能是该数列的极限，因为当 {{<latex display="false">}} \epsilon = \frac{|A|}{2} {{</latex>}} 时，数列中形如 {{<latex display="false">}} \frac{1}{2k + 1} {{</latex>}} 的项在 {{<latex display="false">}} \frac{1}{2k + 1} < \frac{|A|}{2} {{</latex>}} 时位于{{<latex display="false">}} A {{</latex>}}的{{<latex display="false">}} \varepsilon {{</latex>}}邻域之外。

数列 {{<latex display="false">}} 0 {{</latex>}} 也不可能是这个数列的极限，因为，例如，在以 0 为中心的单位邻域之外，显然也有该数列的无穷多项。

例 7. 可以类比地验证，数列 {{<latex display="false">}} 1, -1, 1, -1, \dots {{</latex>}} （{{<latex display="false">}} x_n = (-1)^n {{</latex>}}）没有极限。


[^1]: {{<latex display="false">}}[x]{{</latex>}}表示数{{<latex display="false">}} x {{</latex>}}的整数部分。