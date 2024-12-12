---
title: 3.1  基础知识
date: 2024-12-07
lastmod: 2024-12-07
tags: [数学分析]
toc: true
---

**定义 3.1.1（非正式的）**（集合）

我们把  **集合 A**  定义为任意的一堆没有次序的对象。例如，{{<latex display="false">}}\{3,8,5,2\}{{</latex>}}是一个集合。如果{{<latex display="false">}}x{{</latex>}}是这堆对象中的一个，那么我们称  **{{<latex display="false">}}x{{</latex>}}是{{<latex display="false">}}A{{</latex>}}中的一个元素** ，记作{{<latex display="false">}}x\in A{{</latex>}}，否则，记作{{<latex display="false">}}x\notin A{{</latex>}}。

这个定义相当直观，但是它无法回答诸如下面这些问题：什么样的一堆对象可以被看作集合？什么样的集合与另外的集合相等？如何定义集合上的运算，比如并集、交集等？同时，我们还没有给出关于集合或者集合中元素的公理。本节剩余内容的主要目的就是给出这些公理并定义集合上的运算。

首先阐明一个观点：我们把集合本身看作一类对象。

**公理 3.1（集合是对象）** 如果 {{<latex display="false">}}A{{</latex>}} 是一个集合，那么 {{<latex display="false">}}A{{</latex>}} 也是一个对象。特别地，给定两个集合 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}}，问 {{<latex display="false">}}A{{</latex>}} 是不是 {{<latex display="false">}}B{{</latex>}} 中的元素是有意义的。

到目前为止，总的来说，在数学里学到的所有对象当中，有些对象恰好是集合。而且如果 {{<latex display="false">}}x{{</latex>}} 是一个对象，{{<latex display="false">}}A{{</latex>}} 是一个集合，那么 {{<latex display="false">}}x \in A{{</latex>}} 要么为真，要么为假。（如果 {{<latex display="false">}}A{{</latex>}} 不是集合，则我们认为 {{<latex display="false">}}x \in A{{</latex>}} 是无定义的。例如，{{<latex display="false">}}3 \in 4{{</latex>}} 既非真也非假，该命题是无意义的，因为 {{<latex display="false">}}4{{</latex>}} 不是一个集合。）

接下来我们定义相等的概念：什么情况下可以认为两个集合是相等的？我们认为一个集合中元素的次序并不重要，因此我们把集合 {{<latex display="false">}}\{3, 8, 5, 2\}{{</latex>}} 与 {{<latex display="false">}}\{2, 3, 5, 8\}{{</latex>}} 看作同一个集合。另外，{{<latex display="false">}}\{3, 8, 5, 2\}{{</latex>}} 与 {{<latex display="false">}}\{3, 8, 5, 2, 1\}{{</latex>}} 是两个不同的集合，这是因为后者中的一个元素不包含在前者里，即元素 {{<latex display="false">}}1{{</latex>}}。基于类似的原因，{{<latex display="false">}}\{3, 8, 5, 2\}{{</latex>}} 与 {{<latex display="false">}}\{3, 8, 5\}{{</latex>}} 也是不同的集合。我们把这部分内容作为一个定义。

**定义 3.1.4（集合的相等）** 称两个集合 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}} 是相等的，即 {{<latex display="false">}}A = B{{</latex>}}，当且仅当 {{<latex display="false">}}A{{</latex>}} 中的每个元素都是 {{<latex display="false">}}B{{</latex>}} 中的元素并且 {{<latex display="false">}}B{{</latex>}} 中的每一个元素也都是 {{<latex display="false">}}A{{</latex>}} 中的元素。也就是说，{{<latex display="false">}}A = B{{</latex>}}，当且仅当 {{<latex display="false">}}A{{</latex>}} 中的任一元素 {{<latex display="false">}}x{{</latex>}} 属于 {{<latex display="false">}}B{{</latex>}}，同时 {{<latex display="false">}}B{{</latex>}} 中的任一元素 {{<latex display="false">}}y{{</latex>}} 也属于 {{<latex display="false">}}A{{</latex>}}，这记为{{<latex display="false">}}(\forall x \in A, x \in B),(\forall y \in B, y \in A){{</latex>}}

相等是如何定义的取决于所考察对象的类型，而且从某种程度上来说，这只不过是一个关于下定义的问题而已。然而，从逻辑学的角度来说，我们要求相等遵守下面四条 **相等公理** ：

- **（自反公理）** 给定任意的对象 {{<latex display="false">}}x{{</latex>}}，我们有 {{<latex display="false">}}x = x{{</latex>}}。
- **（对称公理）** 给定任意两个同类型的对象 {{<latex display="false">}}x{{</latex>}} 和 {{<latex display="false">}}y{{</latex>}}，如果 {{<latex display="false">}}x = y{{</latex>}}，那么 {{<latex display="false">}}y = x{{</latex>}}。
- **（传递公理）** 给定任意三个同类型的对象 {{<latex display="false">}}x{{</latex>}}、{{<latex display="false">}}y{{</latex>}} 和 {{<latex display="false">}}z{{</latex>}}，若 {{<latex display="false">}}x = y{{</latex>}} 且 {{<latex display="false">}}y = z{{</latex>}}，则 {{<latex display="false">}}x = z{{</latex>}}。
- **（替换公理）** 给定任意两个同类型的对象 {{<latex display="false">}}x{{</latex>}} 和 {{<latex display="false">}}y{{</latex>}}，如果 {{<latex display="false">}}x = y{{</latex>}}，那么对任意一个函数或者运算 {{<latex display="false">}}f{{</latex>}} 都有 {{<latex display="false">}}f(x) = f(y){{</latex>}}。类似地，对任意一个关于 {{<latex display="false">}}x{{</latex>}} 的性质 {{<latex display="false">}}P(x){{</latex>}}，如果 {{<latex display="false">}}x = y{{</latex>}}，那么 {{<latex display="false">}}P(x){{</latex>}} 和 {{<latex display="false">}}P(y){{</latex>}} 就是等价的命题。

容易验证，定义3.1.4满足自反、对称、传递三个性质。

**自反性（Reflexive）:**
{{<latex display="false">}}(\forall x \in A, x \in A) \Rightarrow A = A{{</latex>}}

**对称性（Symmetric）:**
{{<latex display="false">}}(A = B) \Rightarrow (\forall x \in A, x \in B) \land (\forall x \in B, x \in A) \Rightarrow B = A{{</latex>}}

**传递性（Transitive）:**
{{<latex display="false">}}(A = B) \land (B = C) \Rightarrow (\forall x \in A, x \in B) \land (\forall x \in B, x \in C) \Rightarrow (\forall x \in A, x \in C){{</latex>}}

{{<latex display="false">}}(A = B) \land (B = C) \Rightarrow (\forall x \in B, x \in A) \land (\forall x \in C, x \in B) \Rightarrow (\forall x \in C, x \in A){{</latex>}}

{{<latex display="false">}}\text{以上两种情况同时成立，这意味着 } A = C{{</latex>}}

根据定义 3.1.4 观察可知，如果 {{<latex display="false">}}x \in A{{</latex>}} 并且 {{<latex display="false">}}A = B{{</latex>}}，那么 {{<latex display="false">}}x \in B{{</latex>}}。于是 “是……的元素” 这种 {{<latex display="false">}}\in{{</latex>}} 关系遵守替换公理。正因如此，只要我们能够把定义在集合上的新运算仅用 {{<latex display="false">}}\in{{</latex>}} 的语言来描述，这个新运算就会遵守替换公理。例如，对于本节中剩下的定义，情况就是这样。（另外，在良好的定义方式中，我们不能使用集合中 “第一个” 或者 “最后一个” 元素这样的概念，因为这将违背替换公理。例如，虽然集合 {{<latex display="false">}}\{1, 2, 3, 4, 5\}{{</latex>}} 与 {{<latex display="false">}}\{3, 4, 2, 1, 5\}{{</latex>}} 表示同一个集合，但是它们的第一个元素是不一样的。）

面我们来讨论到底什么样的对象是集合，什么样的对象不是集合。

这与上一章中我们如何定义自然数相类似。我们从单个的自然数 {{<latex display="false">}}0{{</latex>}}开始，利用增量运算从 {{<latex display="false">}}0{{</latex>}}中构造出更多的数。

这里我们将尝试做类似的事情，从单个集合（空集）开始，利用各种运算从空集中构造出更多的集合。我们首先假定空集的存在性。

**公理 3.2 (空集)** 存在一个集合{{<latex display="false">}}\varnothing{{</latex>}}，被称为**空集**，它不包含任何元素。也就是说，对于任意的对象{{<latex display="false">}}x{{</latex>}}均有{{<latex display="false">}}x\notin\varnothing{{</latex>}}。

空集也记作{{<latex display="false">}}{}{{</latex>}}。注意只能有一个空集，如果存在两个集合{{<latex display="false">}}\varnothing{{</latex>}}和{{<latex display="false">}}\varnothing'{{</latex>}}都是空集，那么根据定义3.1.4 （集合的相等）可知，它们必定相等。

如果一个集合不等于空集，那么称该集合是非空的。下面这个命题非常简单，却值得叙述。

**引理 3.1.6（单个选取）** 设 {{<latex display="false">}}A{{</latex>}} 是一个非空集合，那么存在一个对象 {{<latex display="false">}}x{{</latex>}} 使得 {{<latex display="false">}}x \in A{{</latex>}}。

**证明：**  我们用反证法来证明。假设不存在任何对象 {{<latex display="false">}}x{{</latex>}} 使得 {{<latex display="false">}}x \in A{{</latex>}}，那么对任意一个对象 {{<latex display="false">}}x{{</latex>}} 而言，有 {{<latex display="false">}}x \notin A{{</latex>}}。另外根据公理 3.2 (空集)可知：{{<latex display="false">}}x \notin \varnothing{{</latex>}}。于是 {{<latex display="false">}}x \in A \iff x \in \varnothing{{</latex>}}（这两个命题均为假），进而根据定义 3.1.4 (集合的相等)有 {{<latex display="false">}}A = \varnothing{{</latex>}}，显然这与已知条件“{{<latex display="false">}}A{{</latex>}} 是一个非空集合”相矛盾。

注 3.1.7 上述引理断言，给定任意一个非空集合 {{<latex display="false">}}A{{</latex>}}，我们可以“选取”{{<latex display="false">}}A{{</latex>}} 中的一个元素 {{<latex display="false">}}x{{</latex>}}，以此来证实 {{<latex display="false">}}A{{</latex>}} 的非空性。

后面（在引理 3.5.12 中）我们将证明对于给定的任意有限多个非空集合 {{<latex display="false">}}A_1, \cdots, A_n{{</latex>}}，能够从每个集合 {{<latex display="false">}}A_1, \cdots, A_n{{</latex>}} 中分别选取一个元素 {{<latex display="false">}}x_1, \cdots, x_n{{</latex>}}，这称作“有限选取”。**但是如果想要从无穷多个集合中选取元素，我们就需要另一个公理，即选择公理。**关于选择公理的讨论将留到 8.4 节。

如果公理 3.2 （空集）是集合论中唯一一个公理，那么集合论必然相当乏味，因为在这种情况下，只有唯一一个集合存在，那就是空集。现在我们给出更深层次的公理来丰富可用集合的种类。

**公理 3.3（单元素集与双元素集）**

如果 {{<latex display="false">}}a{{</latex>}} 是一个对象，那么存在一个集合 {{<latex display="false">}}\{a\}{{</latex>}} 并且该集合中唯一的一个元素就是 {{<latex display="false">}}a{{</latex>}}。也就是说，对于任意一个对象 {{<latex display="false">}}y{{</latex>}}，我们有 {{<latex display="false">}} y \in \{a\} {{</latex>}}，当且仅当{{<latex display="false">}}y=a{{</latex>}}；我们称 {{<latex display="false">}}\{a\}{{</latex>}} 是元素为 {{<latex display="false">}}a{{</latex>}} 的 **单元素集**。

更进一步地，如果 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 都是对象，那么存在一个集合 {{<latex display="false">}}\{a, b\}{{</latex>}}，并且该集合的元素只有 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 。换言之，对于任何一个对象{{<latex display="false">}}y{{</latex>}}，有 {{<latex display="false">}} y \in \{a,b\} {{</latex>}}，当且仅当，{{<latex display="false">}}y=a{{</latex>}}或者{{<latex display="false">}}y=b{{</latex>}}，我们称该集合是由{{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}}所组成的**双元素集。**

注 3.1.9 正如只存在唯一一个空集那样，根据定义 3.1.4 （集合的相等）可知，元素为 {{<latex display="false">}}a{{</latex>}} 的单元素集也只有一个。类似地，给定任意两个对象 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}}，那么只存在唯一一个由 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 构成的双元素集。同样，定义 3.1.4 （集合的相等）也能确保 {{<latex display="false">}}\{a, b\} = \{b, a\}{{</latex>}}以及 {{<latex display="false">}}\{a, a\} = \{a\}{{</latex>}}。于是，单元素集公理事实上是多余的，因为它是从双元素集公理中推导出的一个结论。反过来，双元素集公理可以由单元素集公理以及后面的两集合并集公理推出（参见引理 3.1.13）。人们可能会问为什么我们不继续构造三元素集公理、四元素集公理等；然而，一旦我们引入下面的两集合并集公理，就没有必要再去构造这些公理了。

目前为止，我们构造的每一个集合所包含的元素个数都不超过两个。接下来这个公理将让我们能够构造出比之前稍大一些的集合。

**公理 3.4（两集合并集）**  给定任意两个集合 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}}，存在一个集合 {{<latex display="false">}}A \cup B{{</latex>}} 被称为 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}} 的 **并集**，该集合的元素由属于 {{<latex display="false">}}A{{</latex>}} 的或者属于 {{<latex display="false">}}B{{</latex>}} 的或者同时属于 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}} 的所有元素共同构成。换言之，对任意的对象 {{<latex display="false">}}x{{</latex>}}，

{{<latex display="true">}}
x \in A \cup B \iff (x \in A \text{ 或 } x \in B)
{{</latex>}}

回忆一下，“或”在数学中默认表示 **包含**，也可以说，**“{{<latex display="false">}}X{{</latex>}} 或 {{<latex display="false">}}Y{{</latex>}} 为真”**  是指 **“要么 {{<latex display="false">}}X{{</latex>}} 为真，要么 {{<latex display="false">}}Y{{</latex>}} 为真，要么 {{<latex display="false">}}X{{</latex>}} 和 {{<latex display="false">}}Y{{</latex>}} 都为真”。** 参见 A.1 节。

例 3.1.11 集合 {{<latex display="false">}}\{1,2\} \cup \{2,3\}{{</latex>}} 中的元素是由属于 {{<latex display="false">}}\{1,2\}{{</latex>}} 的或者属于 {{<latex display="false">}}\{2,3\}{{</latex>}} 的或者同时属于这两个集合的一切元素共同构成的；换言之，这个集合的元素就是 1、2 和 3。因此，我们把该集合记作 {{<latex display="false">}}\{1,2\} \cup \{2,3\} = \{1,2,3\}{{</latex>}}。

注 3.1.12 如果 {{<latex display="false">}}A{{</latex>}}、{{<latex display="false">}}B{{</latex>}} 和 {{<latex display="false">}}A'{{</latex>}} 都是集合并且 {{<latex display="false">}}A{{</latex>}} 等于 {{<latex display="false">}}A'{{</latex>}}，那么 {{<latex display="false">}}A \cup B{{</latex>}} 等于 {{<latex display="false">}}A' \cup B{{</latex>}}。

**证明：**

> 步骤 1: 证明 {{<latex display="false">}}A \cup B \subseteq A' \cup B{{</latex>}}
>
> 假设 {{<latex display="false">}}x \in A \cup B{{</latex>}}。根据并集的定义，{{<latex display="false">}}x \in A \cup B{{</latex>}} 意味着 {{<latex display="false">}}x \in A{{</latex>}} 或者 {{<latex display="false">}}x \in B{{</latex>}}。
>
> - 如果 {{<latex display="false">}}x \in A{{</latex>}}，由于 {{<latex display="false">}}A = A'{{</latex>}}，因此 {{<latex display="false">}}x \in A'{{</latex>}}，所以 {{<latex display="false">}}x \in A' \cup B{{</latex>}}。
> - 如果 {{<latex display="false">}}x \in B{{</latex>}}，显然 {{<latex display="false">}}x \in A' \cup B{{</latex>}}（因为 {{<latex display="false">}}x \in B{{</latex>}}）。
>
> 因此，{{<latex display="false">}}x \in A' \cup B{{</latex>}}。从而，我们得出 {{<latex display="false">}}A \cup B \subseteq A' \cup B{{</latex>}}。
>
> 步骤 2: 证明 {{<latex display="false">}}A' \cup B \subseteq A \cup B{{</latex>}}
>
> 假设 {{<latex display="false">}}x \in A' \cup B{{</latex>}}。根据并集的定义，{{<latex display="false">}}x \in A' \cup B{{</latex>}} 意味着 {{<latex display="false">}}x \in A'{{</latex>}} 或者 {{<latex display="false">}}x \in B{{</latex>}}。
>
> - 如果 {{<latex display="false">}}x \in A'{{</latex>}}，由于 {{<latex display="false">}}A = A'{{</latex>}}，因此 {{<latex display="false">}}x \in A{{</latex>}}，所以 {{<latex display="false">}}x \in A \cup B{{</latex>}}。
- 如果 {{<latex display="false">}}x \in B{{</latex>}}，显然 {{<latex display="false">}}x \in A \cup B{{</latex>}}（因为 {{<latex display="false">}}x \in B{{</latex>}}）。
>
> 因此，{{<latex display="false">}}x \in A \cup B{{</latex>}}。从而，我们得出 {{<latex display="false">}}A' \cup B \subseteq A \cup B{{</latex>}}。
>
> 结论:
>
> 由步骤 1 和步骤 2，我们得出 {{<latex display="false">}}A \cup B = A' \cup B{{</latex>}}。{{<latex display="false">}}\square{{</latex>}}

虽然以上证明显式的写出了尚未定义的集合之间的属于关系，但实际上，我们完全可以删掉这些属于号，而只使用{{<latex display="false">}}(\forall x \in A, x \in B),(\forall y \in B, y \in A){{</latex>}}这种写法，上述证明过程仍然成立，因此，该证明过程使用到的只有集合相等定义和并集公理。

类似地，如果 {{<latex display="false">}}B'{{</latex>}} 是与 {{<latex display="false">}}B{{</latex>}} 相等的集合，那么 {{<latex display="false">}}A \cup B{{</latex>}} 等于 {{<latex display="false">}}A \cup B'{{</latex>}}。因此，求并运算遵守替换公理，从而该运算在集合上是定义明确的。

现在我们给出并集的一些基本性质。

引理 3.1.13 如果 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 都是对象，那么 {{<latex display="false">}}\{a, b\} = \{a\} \cup \{b\}{{</latex>}}。如果 {{<latex display="false">}}A{{</latex>}}、{{<latex display="false">}}B{{</latex>}} 和 {{<latex display="false">}}C{{</latex>}} 都是集合，那么求并运算是可交换的（即 {{<latex display="false">}}A \cup B = B \cup A{{</latex>}}），而且也是可结合的（即 {{<latex display="false">}}(A \cup B) \cup C = A \cup (B \cup C){{</latex>}}）。另外，我们有 {{<latex display="false">}}A \cup A = A \cup \emptyset = \emptyset \cup A = A{{</latex>}}。



