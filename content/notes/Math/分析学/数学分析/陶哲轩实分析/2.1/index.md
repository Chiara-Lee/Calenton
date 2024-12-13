---
title: 3.1  基础知识
date: 2024-12-07
lastmod: 2024-12-07
tags: [数学分析]
toc: true
---

##  1.摘要

本文公理一览：
- 公理 3.1（集合是对象）
- 相等公理、替换公理
- 公理 3.2 (空集) 
- 公理 3.3（单元素集与双元素集）
- 公理 3.4（两集合并集）
- 公理 3.5（分类公理）
- 公理 3.6 (替代) 
- 公理 3.7 (无穷大) 

##  2.正文

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
> - 如果 {{<latex display="false">}}x \in B{{</latex>}}，显然 {{<latex display="false">}}x \in A \cup B{{</latex>}}（因为 {{<latex display="false">}}x \in B{{</latex>}}）。
>
> 因此，{{<latex display="false">}}x \in A \cup B{{</latex>}}。从而，我们得出 {{<latex display="false">}}A' \cup B \subseteq A \cup B{{</latex>}}。
>
> 结论:
>
> 由步骤 1 和步骤 2，我们得出 {{<latex display="false">}}A \cup B = A' \cup B{{</latex>}}。{{<latex display="false">}}\square{{</latex>}}

虽然以上证明显式的写出了尚未定义的集合之间的属于关系，但实际上，我们完全可以删掉这些属于号，而只使用{{<latex display="false">}}(\forall x \in A, x \in B),(\forall y \in B, y \in A){{</latex>}}这种写法，上述证明过程仍然成立，因此，该证明过程使用到的只有集合相等定义和并集公理。

类似地，如果 {{<latex display="false">}}B'{{</latex>}} 是与 {{<latex display="false">}}B{{</latex>}} 相等的集合，那么 {{<latex display="false">}}A \cup B{{</latex>}} 等于 {{<latex display="false">}}A \cup B'{{</latex>}}。因此，求并运算遵守替换公理，从而该运算在集合上是定义明确的。

现在我们给出并集的一些基本性质。

**引理 3.1.13** 如果 {{<latex display="false">}}a{{</latex>}} 和 {{<latex display="false">}}b{{</latex>}} 都是对象，那么 {{<latex display="false">}}\{a, b\} = \{a\} \cup \{b\}{{</latex>}}。如果 {{<latex display="false">}}A{{</latex>}}、{{<latex display="false">}}B{{</latex>}} 和 {{<latex display="false">}}C{{</latex>}} 都是集合，那么求并运算是可交换的（即 {{<latex display="false">}}A \cup B = B \cup A{{</latex>}}），而且也是可结合的（即 {{<latex display="false">}}(A \cup B) \cup C = A \cup (B \cup C){{</latex>}}）。另外，我们有 {{<latex display="false">}}A \cup A = A \cup \emptyset = \emptyset \cup A = A{{</latex>}}。

**证明：** 首先证明 **结合律 {{<latex display="false">}}(A \cup B) \cup C = A \cup (B \cup C){{</latex>}}**。

根据定义 3.1.4 （集合的相等）可知，我们需要证明 {{<latex display="false">}}(A \cup B) \cup C{{</latex>}} 中的任意一个元素 {{<latex display="false">}}x{{</latex>}} 都是集合 {{<latex display="false">}}A \cup (B \cup C){{</latex>}} 中的元素，反之亦然。

于是，首先假设 {{<latex display="false">}}x{{</latex>}} 是 {{<latex display="false">}}(A \cup B) \cup C{{</latex>}} 中的一个元素，那么根据公理 3.4 （两集合并集）可知，这意味着 {{<latex display="false">}}x \in A \cup B{{</latex>}} 和 {{<latex display="false">}}x \in C{{</latex>}} 中至少有一个为真。现在我们分两种情况来讨论。

如果 {{<latex display="false">}}x \in C{{</latex>}}，则根据公理 3.4 可知 {{<latex display="false">}}x \in B \cup C{{</latex>}}，进而再次利用公理 3.4 可得，{{<latex display="false">}}x \in A \cup (B \cup C){{</latex>}}。

现在假设 {{<latex display="false">}}x \in A \cup B{{</latex>}}，那么由公理 3.4 可知 {{<latex display="false">}}x \in A{{</latex>}} 或 {{<latex display="false">}}x \in B{{</latex>}}。一方面，如果 {{<latex display="false">}}x \in A{{</latex>}}，从公理 3.4 中可得 {{<latex display="false">}}x \in A \cup (B \cup C){{</latex>}}；另一方面，如果 {{<latex display="false">}}x \in B{{</latex>}}，通过连续应用公理 3.4 可得 {{<latex display="false">}}x \in B \cup C{{</latex>}}，进而有 {{<latex display="false">}}x \in A \cup (B \cup C){{</latex>}}。

因此我们得到，在所有可能的情况中，{{<latex display="false">}}(A \cup B) \cup C{{</latex>}} 中的每一个元素均包含在 {{<latex display="false">}}A \cup (B \cup C){{</latex>}} 中。同理可以推出 {{<latex display="false">}}A \cup (B \cup C){{</latex>}} 中的每一个元素也都包含在 {{<latex display="false">}}(A \cup B) \cup C{{</latex>}} 中，于是我们证明了 {{<latex display="false">}}(A \cup B) \cup C = A \cup (B \cup C){{</latex>}}。□

第二，对于求并运算的可交换性，**{{<latex display="false">}}A \cup B=B \cup A{{</latex>}}**.

1. 证明 {{<latex display="false">}}A \cup B \subseteq B \cup A{{</latex>}}:

假设 {{<latex display="false">}}x \in A \cup B{{</latex>}}。根据并集的定义，此时存在两种可能：
- {{<latex display="false">}}x \in A{{</latex>}}
- {{<latex display="false">}}x \in B{{</latex>}}

无论是上述哪种情况，都意味着 {{<latex display="false">}}x \in B \cup A{{</latex>}}（因为 {{<latex display="false">}}B \cup A{{</latex>}} 定义与 {{<latex display="false">}}A \cup B{{</latex>}} 相同，只是 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}} 的位置对调，不影响“或”的逻辑关系）。

因此，当 {{<latex display="false">}}x \in A \cup B{{</latex>}} 时，必有 {{<latex display="false">}}x \in B \cup A{{</latex>}}。由此得到 {{<latex display="false">}}A \cup B \subseteq B \cup A{{</latex>}}。

2. 证明 {{<latex display="false">}}B \cup A \subseteq A \cup B{{</latex>}}:

该部分的证明与上面完全对称。

假设 {{<latex display="false">}}x \in B \cup A{{</latex>}}。根据并集的定义，这意味着：
- {{<latex display="false">}}x \in B{{</latex>}}
- 或者 {{<latex display="false">}}x \in A{{</latex>}}

无论是哪种情况，都必然有 {{<latex display="false">}}x \in A \cup B{{</latex>}}。

因此，当 {{<latex display="false">}}x \in B \cup A{{</latex>}} 时，必有 {{<latex display="false">}}x \in A \cup B{{</latex>}}。由此得到 {{<latex display="false">}}B \cup A \subseteq A \cup B{{</latex>}}。

4. 合并结果：

综合上述两个包含关系，我们有：

{{<latex display="true">}}
A \cup B \subseteq B \cup A \quad \text{且} \quad B \cup A \subseteq A \cup B
{{</latex>}}

根据集合相等的判定标准（互相包含），得到：

{{<latex display="true">}}
A \cup B = B \cup A
{{</latex>}}

第三，对于  **{{<latex display="false">}}A \cup A = A \cup \emptyset = \emptyset \cup A = A.{{</latex>}}**，使用与上两式同样的证明思路易得。

因为有了上面这个引理，我们就不需要利用括号来表示多个并集运算了。例如，我们可以用 {{<latex display="false">}}A \cup B \cup C{{</latex>}} 来代替 {{<latex display="false">}}(A \cup B) \cup C{{</latex>}} 和 {{<latex display="false">}}A \cup (B \cup C){{</latex>}}。类似地，对于四个集合求并，我们可以写成 {{<latex display="false">}}A \cup B \cup C \cup D{{</latex>}}，等等。

这个公理使得我们可以定义三元素集、四元素集，以此类推。如果 {{<latex display="false">}}a, b, c{{</latex>}} 是三个对象，那么定义 {{<latex display="false">}}\{a, b, c\} := \{a\} \cup \{b\} \cup \{c\}{{</latex>}}；如果 {{<latex display="false">}}a, b, c, d{{</latex>}} 是四个对象，那么定义 {{<latex display="false">}}\{a, b, c, d\} := \{a\} \cup \{b\} \cup \{c\} \cup \{d\}{{</latex>}}，以此类推。另外，对任意给定的自然数 {{<latex display="false">}}n{{</latex>}}，我们目前尚无法定义由 {{<latex display="false">}}n{{</latex>}} 个对象构成的集合；这需要把上述结构迭代 “{{<latex display="false">}}n{{</latex>}} 次”，然而 {{<latex display="false">}}n{{</latex>}} 次迭代的概念还没有被严格定义。基于类似的原因，我们还无法定义由无穷多个对象所构成的集合概念，因为这需要对两集合并集公理迭代无穷多次，而且目前能否确保整个过程的严谨性尚不清楚。后面我们会介绍集合论的一些其他公理，这些公理将使我们能够构造出任意大甚至是无穷大的集合。

显然，某些集合看起来比其他集合要大。正式建立这种概念的一种方法是引入子集的概念。

**定义 3.1.15（子集）** 设 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}} 都是集合，我们称 {{<latex display="false">}}A{{</latex>}} 是 {{<latex display="false">}}B{{</latex>}} 的子集，并记作 {{<latex display="false">}}A \subseteq B{{</latex>}}，当且仅当 {{<latex display="false">}}A{{</latex>}} 的每一个元素都是 {{<latex display="false">}}B{{</latex>}} 中的元素，即

{{<latex display="true">}}
\text{对任意的对象} x，x \in A \implies x \in B
{{</latex>}}

如果 {{<latex display="false">}}A \subseteq B{{</latex>}} 并且 {{<latex display="false">}}A \neq B{{</latex>}}，那么我们称 {{<latex display="false">}}A{{</latex>}} 是 {{<latex display="false">}}B{{</latex>}} 的真子集，记作 {{<latex display="false">}}A \subsetneq B{{</latex>}}。

注 3.1.16 因为上面的定义中只包含了相等的概念以及“是……的元素”的关系，而这两者都遵守替换公理，所以子集的概念也自动地遵守替换公理。于是，譬如若 {{<latex display="false">}}A \subseteq B{{</latex>}} 并且 {{<latex display="false">}}A = A'{{</latex>}}，那么 {{<latex display="false">}}A' \subseteq B{{</latex>}}。

例 3.1.17 我们有 {{<latex display="false">}}\{1, 2, 4\} \subseteq \{1, 2, 3, 4, 5\}{{</latex>}}，这是因为 {{<latex display="false">}}\{1, 2, 4\}{{</latex>}} 中的每一个元素都是 {{<latex display="false">}}\{1, 2, 3, 4, 5\}{{</latex>}} 中的元素。事实上，我们也可以得到 {{<latex display="false">}}\{1, 2, 4\} \subsetneq \{1, 2, 3, 4, 5\}{{</latex>}}，因为集合 {{<latex display="false">}}\{1, 2, 4\}{{</latex>}} 与 {{<latex display="false">}}\{1, 2, 3, 4, 5\}{{</latex>}} 不相等。给定任意一个集合 {{<latex display="false">}}A{{</latex>}}，我们总有 {{<latex display="false">}}A \subseteq A{{</latex>}}和 {{<latex display="false">}}\varnothing \subseteq A{{</latex>}}。

正如下面这个命题所描述的那样，集合论中的子集概念类似于数系中“小于或等于”的概念（更精确的表述参见定义 8.5.1）。

**命题 3.1.18（集合的包含关系使集合是偏序的）** 设 {{<latex display="false">}}A{{</latex>}}、{{<latex display="false">}}B{{</latex>}}、{{<latex display="false">}}C{{</latex>}} 是集合。如果 {{<latex display="false">}}A \subseteq B{{</latex>}} 并且 {{<latex display="false">}}B \subseteq C{{</latex>}}，那么 {{<latex display="false">}}A \subseteq C{{</latex>}}。如果 {{<latex display="false">}}A \subseteq B{{</latex>}} 并且 {{<latex display="false">}}B \subseteq A{{</latex>}}，那么 {{<latex display="false">}}A = B{{</latex>}}。最后，如果 {{<latex display="false">}}A \subsetneq B{{</latex>}} 并且 {{<latex display="false">}}B \subsetneq C{{</latex>}}，那么 {{<latex display="false">}}A \subsetneq C{{</latex>}}。

**证明：**

**第一个结论**。假设 {{<latex display="false">}}A \subseteq B{{</latex>}} 并且 {{<latex display="false">}}B \subseteq C{{</latex>}}。为了证明 {{<latex display="false">}}A \subseteq C{{</latex>}}，我们必须证明 {{<latex display="false">}}A{{</latex>}} 中的每一个元素都是 {{<latex display="false">}}C{{</latex>}} 中的元素。那么取 {{<latex display="false">}}A{{</latex>}} 中任意一个元素 {{<latex display="false">}}x{{</latex>}}，因为 {{<latex display="false">}}A \subseteq B{{</latex>}}，所以 {{<latex display="false">}}x{{</latex>}} 一定是 {{<latex display="false">}}B{{</latex>}} 中的元素。又因为 {{<latex display="false">}}B \subseteq C{{</latex>}}，所以 {{<latex display="false">}}x{{</latex>}} 是 {{<latex display="false">}}C{{</latex>}} 中的元素。因此 {{<latex display="false">}}A{{</latex>}} 中的每一个元素实际上都是 {{<latex display="false">}}C{{</latex>}} 中的元素，结论得证。

**第二结论** 证明显然。

**第三结论** 其证明过程和第一结论的证明是完全相同的。

**习题**：  设 {{<latex display="false">}}A{{</latex>}}, {{<latex display="false">}}B{{</latex>}}, {{<latex display="false">}}C{{</latex>}} 都是集合，

1.  证明 {{<latex display="false">}}A \cap B \subseteq A{{</latex>}} 和 {{<latex display="false">}}A \cap B \subseteq B{{</latex>}}。
2.  更进一步地，证明 {{<latex display="false">}}C \subseteq A{{</latex>}} 且 {{<latex display="false">}}C \subseteq B{{</latex>}}，当且仅当 {{<latex display="false">}}C \subseteq A \cap B{{</latex>}}。
3.  类似地，证明 {{<latex display="false">}}A \subseteq A \cup B{{</latex>}} 和 {{<latex display="false">}}B \subseteq A \cup B{{</latex>}}，
4.  且进一步证明 {{<latex display="false">}}A \subseteq C{{</latex>}} 且 {{<latex display="false">}}B \subseteq C{{</latex>}}，当且仅当 {{<latex display="false">}}A \cup B \subseteq C{{</latex>}}。

**证明**：

1. 证明 {{<latex display="false">}}A \cap B \subseteq A{{</latex>}} 和 {{<latex display="false">}}A \cap B \subseteq B{{</latex>}}

(1) {{<latex display="false">}}A \cap B \subseteq A{{</latex>}}

证明：设任意 {{<latex display="false">}}x \in A \cap B{{</latex>}}。则根据交集的定义，{{<latex display="false">}}x \in A{{</latex>}} 且 {{<latex display="false">}}x \in B{{</latex>}}。由此可见，{{<latex display="false">}}x \in A{{</latex>}}，故 {{<latex display="false">}}A \cap B \subseteq A{{</latex>}}。

(2) {{<latex display="false">}}A \cap B \subseteq B{{</latex>}}

证明与上面类似：设 {{<latex display="false">}}x \in A \cap B{{</latex>}}，则 {{<latex display="false">}}x \in A{{</latex>}} 且 {{<latex display="false">}}x \in B{{</latex>}}，因此 {{<latex display="false">}}x \in B{{</latex>}}，故 {{<latex display="false">}}A \cap B \subseteq B{{</latex>}}。

2. 当且仅当条件：{{<latex display="false">}}C \subseteq A \cap B \iff C \subseteq A \text{ 且 } C \subseteq B{{</latex>}}

(1) 若 {{<latex display="false">}}C \subseteq A \cap B{{</latex>}}，则对任意 {{<latex display="false">}}x \in C{{</latex>}}，有 {{<latex display="false">}}x \in A \cap B{{</latex>}}。由交集定义，{{<latex display="false">}}x \in A{{</latex>}} 且 {{<latex display="false">}}x \in B{{</latex>}}。由于 {{<latex display="false">}}x{{</latex>}} 是 {{<latex display="false">}}C{{</latex>}} 的任意元素，这意味着 {{<latex display="false">}}C \subseteq A{{</latex>}} 且 {{<latex display="false">}}C \subseteq B{{</latex>}}。

(2) 反之，若 {{<latex display="false">}}C \subseteq A{{</latex>}} 且 {{<latex display="false">}}C \subseteq B{{</latex>}}，则对于任意 {{<latex display="false">}}x \in C{{</latex>}}，有 {{<latex display="false">}}x \in A{{</latex>}} 且 {{<latex display="false">}}x \in B{{</latex>}}。由此可得 {{<latex display="false">}}x \in A \cap B{{</latex>}}。因为 {{<latex display="false">}}x{{</latex>}} 是 {{<latex display="false">}}C{{</latex>}} 的任意元素，所以 {{<latex display="false">}}C \subseteq A \cap B{{</latex>}}。

结合(1)和(2)，可得

{{<latex display="false">}}C \subseteq A \cap B \iff C \subseteq A \text{ 且 } C \subseteq B{{</latex>}}.

3. 证明 {{<latex display="false">}}A \subseteq A \cup B{{</latex>}} 和 {{<latex display="false">}}B \subseteq A \cup B{{</latex>}}

(1) {{<latex display="false">}}A \subseteq A \cup B{{</latex>}}

证明：若任意 {{<latex display="false">}}x \in A{{</latex>}}，则根据并集定义 {{<latex display="false">}}x \in A \cup B{{</latex>}}（因为 {{<latex display="false">}}x \in A{{</latex>}} 即满足“或”条件）。由此 {{<latex display="false">}}A \subseteq A \cup B{{</latex>}}。

(2) {{<latex display="false">}}B \subseteq A \cup B{{</latex>}}

证明与上类似：若 {{<latex display="false">}}x \in B{{</latex>}}，则 {{<latex display="false">}}x \in A \cup B{{</latex>}}，故 {{<latex display="false">}}B \subseteq A \cup B{{</latex>}}。

4. 当且仅当条件：{{<latex display="false">}}A \cup B \subseteq C \iff A \subseteq C \text{ 且 } B \subseteq C{{</latex>}}

(1) 若 {{<latex display="false">}}A \cup B \subseteq C{{</latex>}}，则对任意 {{<latex display="false">}}x \in A{{</latex>}}，因为 {{<latex display="false">}}A \subseteq A \cup B{{</latex>}}，所以 {{<latex display="false">}}x \in A \cup B \subseteq C{{</latex>}}，故 {{<latex display="false">}}A \subseteq C{{</latex>}}。同理，对任意 {{<latex display="false">}}x \in B{{</latex>}}，有 {{<latex display="false">}}x \in A \cup B \subseteq C{{</latex>}}，故 {{<latex display="false">}}B \subseteq C{{</latex>}}。综合得到 {{<latex display="false">}}A \subseteq C \text{ 且 } B \subseteq C{{</latex>}}。

(2) 反之，若 {{<latex display="false">}}A \subseteq C \text{ 且 } B \subseteq C{{</latex>}}，则对任意 {{<latex display="false">}}x \in A \cup B{{</latex>}}，必然 {{<latex display="false">}}x \in A \text{ 或 } x \in B{{</latex>}}，进而 {{<latex display="false">}}x \in C{{</latex>}}，因此 {{<latex display="false">}}A \cup B \subseteq C{{</latex>}}。

综上，

{{<latex display="false">}}A \cup B \subseteq C \iff A \subseteq C \text{ 且 } B \subseteq C{{</latex>}}.

注 3.1.20 子集关系 {{<latex display="false">}}\subsetneq{{</latex>}} 和小于关系 {{<latex display="false">}}<{{</latex>}} 之间存在一个重要的区别。给定任意两个不同的自然数 {{<latex display="false">}}n{{</latex>}} 和 {{<latex display="false">}}m{{</latex>}}，我们知道其中一个会比另外一个小（命题2.2.13 自然数的序的三歧性）；但是给定两个不同的集合，说其中一个是另外一个集合的子集这种命题通常不为真。例如，令 {{<latex display="false">}}A := \{2n : n \in \mathbb{N}\}{{</latex>}} 是由所有偶自然数构成的集合，令 {{<latex display="false">}}B := \{2n + 1 : n \in \mathbb{N}\}{{</latex>}} 是由所有奇自然数构成的集合，那么 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}} 彼此互不为对方的子集。这就是我们为什么说集合仅仅是 **偏序** 的，而自然数却是 **全序** 的（参见定义8.5.1和定义8.5.3）。

注 3.1.21 我们也应该注意到子集关系 {{<latex display="false">}}\subseteq{{</latex>}} 与元素的属于关系 {{<latex display="false">}}\in{{</latex>}} 是不一样的。数字 {{<latex display="false">}}2{{</latex>}} 是集合 {{<latex display="false">}}\{1, 2, 3\}{{</latex>}} 中的一个元素，而不是它的一个子集，因此 {{<latex display="false">}}2 \in \{1, 2, 3\}{{</latex>}}，但是 {{<latex display="false">}}2 \nsubseteq \{1, 2, 3\}{{</latex>}}。事实上，{{<latex display="false">}}2{{</latex>}} 本身就不是一个集合。反过来，{{<latex display="false">}}\{2\}{{</latex>}} 是集合 {{<latex display="false">}}\{1, 2, 3\}{{</latex>}} 的一个子集，而不是元素，所以 {{<latex display="false">}}\{2\} \subseteq \{1, 2, 3\}{{</latex>}}，但是 {{<latex display="false">}}\{2\} \notin \{1, 2, 3\}{{</latex>}}。这里的关键在于数字 {{<latex display="false">}}2{{</latex>}} 和集合 {{<latex display="false">}}\{2\}{{</latex>}} 是不同的对象。

把集合与集合中的元素区分开来非常重要，因为 **集合和元素具有不同的性质**。譬如，能够找到一个含有无穷多个元素的集合，其中每一个元素都是有穷数字（自然数集 {{<latex display="false">}}\mathbb{N}{{</latex>}} 就是这样的例子），也能够找到这样一个集合，它的元素个数是有限的，但是每个元素都是由无穷多个元素构成的集合（例如，考虑集合 {{<latex display="false">}}\{\mathbb{N}, \mathbb{Z}, \mathbb{Q}, \mathbb{R}\}{{</latex>}}，该集合共有四个元素且每一个元素都是由无穷多个元素构成的集合）。

现在我们给出一个公理，它能够让我们轻松地构造出一个较大集合的子集。

**公理 3.5（分类公理）**  设 {{<latex display="false">}}A{{</latex>}} 是一个集合，对任意的 {{<latex display="false">}}x \in A{{</latex>}}，令 {{<latex display="false">}}P(x){{</latex>}} 表示关于 {{<latex display="false">}}x{{</latex>}} 的一个性质（即 {{<latex display="false">}}P(x){{</latex>}} 要么是真命题，要么是假命题）。那么存在一个集合，记作 {{<latex display="false">}}\{x \in A : P(x) \text{ 为真}\}{{</latex>}}（或者简记为 {{<latex display="false">}}\{x \in A : P(x)\}{{</latex>}}），该集合恰好是由 {{<latex display="false">}}A{{</latex>}} 中那些使得 {{<latex display="false">}}P(x){{</latex>}} 为真的元素 {{<latex display="false">}}x{{</latex>}} 构成的。换言之，对任意的对象 {{<latex display="false">}}y{{</latex>}}，

{{<latex display="false">}}y \in \{x \in A : P(x) \text{ 为真}\} \iff (y \in A \text{ 并且 } P(y) \text{ 为真}){{</latex>}}

这个公理也被称为 **分离公理**。注意，{{<latex display="false">}}\{x \in A : P(x) \text{ 为真}\}{{</latex>}} 一定是集合 {{<latex display="false">}}A{{</latex>}} 的一个子集，尽管它可能与 {{<latex display="false">}}A{{</latex>}} 一样大，也可能与空集一样小。我们能够证明替换公理适用于分类，所以如果 {{<latex display="false">}}A = A'{{</latex>}}，则有 {{<latex display="false">}}\{x \in A : P(x)\} = \{x \in A' : P(x)\}{{</latex>}}。（因为，替换公理保证若{{<latex display="false">}}A = A'{{</latex>}}，则我们可以在任意公式中将{{<latex display="false">}}A{{</latex>}}替换为{{<latex display="false">}}A'{{</latex>}}而不改变命题的真值，因此分离公理满足替换公理）

> 另外，我们在此处所述的替换公理，实际上是一阶逻辑中的替换性。
>
> 逻辑中的替换原则（等式替代性）：
>
> 在一阶逻辑中，如果我们知道 {{<latex display="false">}}x = y{{</latex>}}，那么无论在什么性质 {{<latex display="false">}}P(x){{</latex>}} 或函数 {{<latex display="false">}}f(x){{</latex>}} 中，都可以把 {{<latex display="false">}}x{{</latex>}} 换成 {{<latex display="false">}}y{{</latex>}} 而不会改变陈述的真值或函数的值。这是逻辑本身的一个基本定律，也常被翻译为“替换规则”或“替代律”。有时，有些教材或笔记中也会将其称为“替换公理”或“替换规律”，这是在逻辑层面上的用法。这种替换不涉及集合的构造，只是逻辑上允许你将相等的对象互相替代。
>
> 而在 ZF[^1] 公理系统中也存在一个替换公理，其表述为
>
> **替换公理模式（Replacement Schema）** 是 ZF 集合论的一组 **公理模式**，用以保证由函数式定义的类从集合中“替换”元素形成的新类依然是集合。其一般形式如下：
>
> 给定一个公式 {{<latex display="false">}}\phi(x, y, \vec{p}){{</latex>}}，其中 {{<latex display="false">}}\vec{p}{{</latex>}} 是若干参数，{{<latex display="false">}}\phi{{</latex>}} 在集合论语言中构成一个谓词。如果满足下列条件：
>
> 1. 对任意集合 {{<latex display="false">}}x{{</latex>}} 和 {{<latex display="false">}}x'{{</latex>}}，如果对某个 {{<latex display="false">}}\vec{p}{{</latex>}} 有 {{<latex display="false">}}\phi(x, y, \vec{p}){{</latex>}} 且 {{<latex display="false">}}\phi(x', y', \vec{p}){{</latex>}} 成立，那么若 {{<latex display="false">}}x = x'{{</latex>}} 则必定 {{<latex display="false">}}y = y'{{</latex>}}。也就是说，对于固定的参数 {{<latex display="false">}}\vec{p}{{</latex>}} 和每个集合 {{<latex display="false">}}x{{</latex>}}，{{<latex display="false">}}\phi{{</latex>}} 充当一个定义良好的“类函数”——从 {{<latex display="false">}}x{{</latex>}} 唯一确定一个 {{<latex display="false">}}y{{</latex>}}。
>
> 2. 对任意集合 {{<latex display="false">}}A{{</latex>}}，定义 {{<latex display="false">}}B = \{y : \exists x \in A, \phi(x, y, \vec{p})\}{{</latex>}}。那么替换公理断言：{{<latex display="false">}}B{{</latex>}} 也是一个集合。
>
> 简而言之，替换公理模式可以表述为：
>
> 如果 {{<latex display="false">}}\phi{{</latex>}} 定义了从任意集合 {{<latex display="false">}}A{{</latex>}} 到集合的一个类函数（即对 {{<latex display="false">}}A{{</latex>}} 中每个元素 {{<latex display="false">}}x{{</latex>}} 唯一定义一个 {{<latex display="false">}}y{{</latex>}} 使 {{<latex display="false">}}\phi(x, y){{</latex>}} 成立），那么 {{<latex display="false">}}\{y : \exists x \in A, \phi(x, y)\}{{</latex>}} 也是一个集合。

> 两者的根本区别在于：替换性保证在逻辑推理中，可自由地在公式中用相等的对象互代，以维持公式的真值不变。这是一种语义上的逻辑规则，用来 **确保逻辑推理的正确性和一致性**。替换公理保证给定某种定义良好的类函数，可以“替换”集合中的每个元素为其对应像值，从而产生新集合的存在性。这是关于 **从集合理论中已有的集合构造出新集合的存在性命题**。因此，在平常的使用中，我们必须区别两者。

有时我们用 {{<latex display="false">}}\{x \in A | P(x)\}{{</latex>}} 来代替 {{<latex display="false">}}\{x \in A : P(x)\}{{</latex>}}，当用冒号 “:” 表示其他含义时，这种新写法就有用了。例如，用冒号来表示一个函数 {{<latex display="false">}}f : X \to Y{{</latex>}} 的值域和定义域。

我们可以利用分类公理去进一步定义集合上的一些运算，即求交集和差集。

**定义 3.1.23（交集）** 两个集合的交集 {{<latex display="false">}}S_1 \cap S_2{{</latex>}} 被定义为下面这样一个集合：

{{<latex display="false">}}S_1 \cap S_2 := \{x \in S_1 : x \in S_2\}{{</latex>}}

即 {{<latex display="false">}}S_1 \cap S_2{{</latex>}} 是由所有同时属于 {{<latex display="false">}}S_1{{</latex>}} 和 {{<latex display="false">}}S_2{{</latex>}} 的元素构成的。于是对任意的对象 {{<latex display="false">}}x{{</latex>}}，

{{<latex display="false">}}x \in S_1 \cap S_2 \iff x \in S_1 \text{ 且 } x \in S_2{{</latex>}}

注 3.1.24  注意，这个定义是明确的（也就是说，该定义遵守替换公理）因为定义中仅仅使用到了属于关系以及更为原始的“满足..的性质”这一概念，因此它是遵循替换公理（替换性）的。

注 3.1.26 顺便提一下，对于词语中的“和”我们要小心使用。根据上下文，它有时候表示并集，而有时候表示交集，非常容易混淆。例如，如果有人谈到“男孩和女孩”的集合，那么他的意思是男孩组成的集合与女孩组成的集合的并集，但是如果有人提到同时满足单身和男性这两个条件的人组成的集合，那么他的意思就是单身人士组成的集合与男性组成的集合的交集。另一个问题是“和”也表示相加，例如，我们可以说“2 与 3 的和是 5”，也可以说“集合 {2} 的元素和集合 {3} 的元素构成了集合 {2, 3}”，还有“在 {2} 和 {3} 中的元素构成了集合 ∅”。这确实容易混淆！原因之一在于我们用数学符号来代替像“和”这样的词语。数学符号总是能够准确清晰地表述意思，而想要真正了解某个词语所表达的涵义，我们必须非常仔细地阅读上下文才行。

**定义 3.1.27（差集）** 给定两个集合 {{<latex display="false">}}A{{</latex>}} 和 {{<latex display="false">}}B{{</latex>}}，我们定义集合 {{<latex display="false">}}A - B{{</latex>}} 或 {{<latex display="false">}}A \setminus B{{</latex>}} 是由 {{<latex display="false">}}A{{</latex>}} 中所有不属于 {{<latex display="false">}}B{{</latex>}} 的元素组成的集合。

{{<latex display="false">}}A \setminus B := \{ x \in A : x \notin B \}{{</latex>}}

例如，{{<latex display="false">}}\{1, 2, 3, 4\} \setminus \{2, 4, 6\} = \{1, 3\}{{</latex>}}。在很多情况下，{{<latex display="false">}}B{{</latex>}} 是 {{<latex display="false">}}A{{</latex>}} 的一个子集，但并非必须如此。

现在我们给出并集、交集和差集的一些基本性质。

**命题 3.1.28（集合构成布尔代数）** 设 {{<latex display="false">}}A{{</latex>}}、{{<latex display="false">}}B{{</latex>}}、{{<latex display="false">}}C{{</latex>}} 都是集合，令 {{<latex display="false">}}X{{</latex>}} 表示包含 {{<latex display="false">}}A{{</latex>}}、{{<latex display="false">}}B{{</latex>}}、{{<latex display="false">}}C{{</latex>}} 作为其子集的集合。

(a)（最小元）我们有 {{<latex display="false">}}A \cup \emptyset = A{{</latex>}} 和 {{<latex display="false">}}A \cap \emptyset = \emptyset{{</latex>}}。

(b)（最大元）我们有 {{<latex display="false">}}A \cup X = X{{</latex>}} 和 {{<latex display="false">}}A \cap X = A{{</latex>}}。

(c)（恒等式）我们有 {{<latex display="false">}}A \cap A = A{{</latex>}} 和 {{<latex display="false">}}A \cup A = A{{</latex>}}。

(d)（交换律）我们有 {{<latex display="false">}}A \cup B = B \cup A{{</latex>}} 和 {{<latex display="false">}}A \cap B = B \cap A{{</latex>}}。

(e)（结合律）我们有 {{<latex display="false">}}(A \cup B) \cup C = A \cup (B \cup C){{</latex>}} 和 {{<latex display="false">}}(A \cap B) \cap C = A \cap (B \cap C){{</latex>}}。

(f)（分配律）我们有 {{<latex display="false">}}A \cap (B \cup C) = (A \cap B) \cup (A \cap C){{</latex>}} 和 {{<latex display="false">}}A \cup (B \cap C) = (A \cup B) \cap (A \cup C){{</latex>}}。

(g)（分拆法）我们有 {{<latex display="false">}}A \cup (X \setminus A) = X{{</latex>}} 和 {{<latex display="false">}}A \cap (X \setminus A) = \emptyset{{</latex>}}。

(h)（德摩根定律）我们有 {{<latex display="false">}}X \setminus (A \cup B) = (X \setminus A) \cap (X \setminus B){{</latex>}} 和 {{<latex display="false">}}X \setminus (A \cap B) = (X \setminus A) \cup (X \setminus B){{</latex>}}。

注 3.1.29 德摩根定律是以逻辑学家奥古斯塔斯·德摩根（1806—1871）的名字来命名的，他把这些定律确定为集合论的基本定律之一。

> 1. 什么是布尔代数 (Boolean Algebra)?
>
> 布尔代数是一种抽象代数结构，用来刻画经典逻辑以及集合运算的代数性质。它由一个带有两个二元运算（通常记为 {{<latex display="false">}}\land{{</latex>}} 和 {{<latex display="false">}}\lor{{</latex>}} 或者 {{<latex display="false">}}\cap{{</latex>}} 和 {{<latex display="false">}}\cup{{</latex>}}）、一个一元运算（补操作），以及特定恒等元所组成的代数系统。满足布尔代数的结构必须符合以下公理特性：
>
> - **交换律 (Commutativity)**：
>  - {{<latex display="false">}}a \land b = b \land a{{</latex>}}
>  - {{<latex display="false">}}a \lor b = b \lor a{{</latex>}}
>
> - **结合律 (Associativity)**：
>  - {{<latex display="false">}}(a \land b) \land c = a \land (b \land c){{</latex>}}
>  - {{<latex display="false">}}(a \lor b) \lor c = a \lor (b \lor c){{</latex>}}
>
> - **分配律 (Distributivity)**：
>  - {{<latex display="false">}}a \land (b \lor c) = (a \land b) \lor (a \land c){{</latex>}}
>  - {{<latex display="false">}}a \lor (b \land c) = (a \lor b) \land (a \lor c){{</latex>}}
>
>   **恒等元存在 (Identity Elements)**：
>   存在两个特殊元素：
> - 单位元 1 以及零元 0，满足：
>  - {{<latex display="false">}}a \land 1 = a{{</latex>}}
>  - {{<latex display="false">}}a \lor 0 = a{{</latex>}}
>
>   **补元存在 (Complements)**：
>   对每个 a 存在补元 a' 使：
> - {{<latex display="false">}}a \land a' = 0{{</latex>}}
> - {{<latex display="false">}}a \lor a' = 1{{</latex>}}
>
> 典型的布尔代数例子包括：
> - 真值代数：\{true, false\} 构成的代数结构
> - 任一集合的幂集（其子集组成的集合），在并集、交集和补集下形成的结构
>
> 2. 为什么“集合构成布尔代数”这个命题重要到成为集合论的基本定律？
>
> 集合论在很大程度上被视为现代数学的基础框架。当我们发现任意集合的幂集在并、交和补这三种操作下构成了一个布尔代数时，这意味着经典命题逻辑的代数结构（逻辑运算：与、或、非）有了一个精确而自然的集合论刻画。换言之，**逻辑命题间的真值结构与集合之间的包含关系及运算结构完全同构**。这种对应为数学基础的统一提供了坚实的理论支撑，让我们能够在集合论基础上讨论逻辑系统的性质，从而使得集合论不仅仅是“描述数学对象的语言”，还是“描述逻辑结构和推理过程的语言”。

虽然现在我们已经积累了有关集合的大量公理和结果，但是还有许多事情没办法做到。关于集合，我们想要做的一件最基本的事就是取出集合中的每一个元素，并按照某种方式把每一个元素都转换成另外的新对象。例如，我们希望从一个数集 {{<latex display="false">}}\{3, 5, 9\}{{</latex>}} 开始，把该集合中的每个元素进行增长，从而构造出一个新集合 {{<latex display="false">}}\{4, 6, 10\}{{</latex>}}。直接利用之前学过的公理是无法做到这件事的，因此我们需要一个新公理。

**公理 3.6 (替代)** 设{{<latex display="false">}}A{{</latex>}}是一个集合，对任意的{{<latex display="false">}}x\in A{{</latex>}}和任意的一个对象{{<latex display="false">}}y{{</latex>}}，假设存在一个关于{{<latex display="false">}}x{{</latex>}}和{{<latex display="false">}}y{{</latex>}}的命题{{<latex display="false">}}P(x,y){{</latex>}}使得对任意的{{<latex display="false">}}x\in A{{</latex>}}，最多能够找到一个{{<latex display="false">}}y{{</latex>}}使得{{<latex display="false">}}P(x,y){{</latex>}}为真。那么存在一个集合{{<latex display="false">}}\{y:P(x,y)对某x\in A为真\}{{</latex>}}使得对任意的对象{{<latex display="false">}}z{{</latex>}}，

{{<latex display="true">}}z\in\{y:P(x,y)对某x\in A为真\}\iff 对某x\in A,P(x,z)为真{{</latex>}}

例 3.1.31 令{{<latex display="false">}}A:=\{3,5,9\}{{</latex>}}，并且设{{<latex display="false">}}P(x,y){{</latex>}}表示命题{{<latex display="false">}}y=x++{{</latex>}}，即{{<latex display="false">}}y{{</latex>}}是紧跟在{{<latex display="false">}}x{{</latex>}}之后的那个数。观察可知，对任意一个{{<latex display="false">}}x\in A{{</latex>}}，只有一个{{<latex display="false">}}y{{</latex>}}使得{{<latex display="false">}}P(x,y){{</latex>}}为真。具体地，就是紧跟在{{<latex display="false">}}x{{</latex>}}之后的那个数。于是，上面的公理断定集合{{<latex display="false">}}\{y:y=x++对某x\in\{3,5,9\}为真\}{{</latex>}}是存在的。此时，上述集合显然就是{{<latex display="false">}}\{4,6,10\}{{</latex>}}。

例 3.1.32 令{{<latex display="false">}}A:=\{3,5,9\}{{</latex>}}，设{{<latex display="false">}}P(x,y){{</latex>}}表示命题{{<latex display="false">}}y=1{{</latex>}}。那么同样，对任意的{{<latex display="false">}}x\in A{{</latex>}}，只有一个{{<latex display="false">}}y{{</latex>}}使得{{<latex display="false">}}P(x,y){{</latex>}}为真。具体地，就是数字1。此时，{{<latex display="false">}}\{y:y=1对某x\in\{3,5,9\}为真\}{{</latex>}}就是单元素集{{<latex display="false">}}\{1\}{{</latex>}}，我们已经把原始集合{{<latex display="false">}}A{{</latex>}}中的每一个元素3、5、9都用同一个元素1来代替。因此，这个相当无聊的例子告诉我们，通过上述公理得到的集合可以比原始集合更"小"。

我们经常把形式如  
{{<latex display="true">}}
\{ y : \text{ 对某些 } x \in A \text{ 有 } y = f(x) \}
{{</latex>}}  
的集合简写为 {{<latex display="false">}} \{ f(x) : x \in A \} {{</latex>}} 或者 {{<latex display="false">}} \{ f(x) | x \in A \} {{</latex>}}。例如，若 {{<latex display="false">}} A = \{3, 5, 9\} {{</latex>}}，那么  
{{<latex display="false">}} \{ x++ : x \in A \} {{</latex>}} 就是集合 {{<latex display="false">}} \{4, 6, 10\} {{</latex>}}。我们当然可以把代数和分类公理合并在一起使用。例如，按照下面的过程构造类似  
{{<latex display="false">}} \{ f(x) : x \in A \text{ 且 } P(x) \text{ 为真} \} {{</latex>}} 的集合。  
从集合 A 开始，利用分类公理构造集合 {{<latex display="false">}} \{ x \in A : P(x) \text{ 为真} \} {{</latex>}}，然后使用替代公理构造集合  
{{<latex display="false">}} \{ f(x) : x \in A \text{ 且 } P(x) \text{ 为真} \} {{</latex>}}。于是可以有  
{{<latex display="false">}} \{ n++ : n \in \{3, 5, 9\} \text{ 且 } n < 6\}=\{4,6\} {{</latex>}}。

在我们的许多例子中，都隐含地假设了自然数实际上就是对象。对此我们给出下面的正式叙述。

**公理 3.7 (无穷大)** 存在一个集合 {{<latex display="false">}} \mathbb{N} {{</latex>}}，它的元素被称为自然数。对象 0 在 {{<latex display="false">}} \mathbb{N} {{</latex>}} 中，且每一个自然数 {{<latex display="false">}} n \in \mathbb{N} {{</latex>}} 所指定的满足皮亚诺公理（公理 2.1～2.5）的对象 {{<latex display="false">}} n++ {{</latex>}} 也在 {{<latex display="false">}} \mathbb{N} {{</latex>}} 中。

这是假设 2.6 更加正式的表达。它被称为无穷大公理，因为它引入了无穷大集合一个最基本的例子，也就是自然数集 {{<latex display="false">}} \mathbb{N} {{</latex>}}（我们将在 3.6 节正式阐述有穷大和无穷大的意思）。我们从无穷大公理中能够看到，像 3, 5, 7 等这样的数确实是集合论中的对象，从而（根据双元素集合公理和两集合并集公理）我们的确可以合法构造如 {{<latex display="false">}} \{ 3, 5, 9 \} {{</latex>}} 这样的集合，就像在之前的例子中我们做过的那样。

我们必须区分清楚“集合”的概念以及“集合中元素”的概念。例如，集合 {{<latex display="false">}} \{ n + 3 : n \in \mathbb{N}, 0 \leq n \leq 5 \} {{</latex>}} 与表达式或函数 {{<latex display="false">}} n + 3 {{</latex>}} 并不相同。我们通过下面的例子来强调这一点。

例 3.1.33 （非正式的）这个例子需要用到减法的概念，但是目前我们还没有正式介绍减法。下面两个命题  
{{<latex display="true">}}
\{ n + 3 : n \in \mathbb{N}, 0 \leq n \leq 5 \} = \{ 8 - n : n \in \mathbb{N}, 0 \leq n \leq 5 \} \tag{3.1}
{{</latex>}}  
成立（见下文），尽管对任意的自然数 {{<latex display="false">}} n {{</latex>}}，表达式 {{<latex display="false">}} n + 3 {{</latex>}} 和 {{<latex display="false">}} 8 - n {{</latex>}} 都绝对不可能相等。  
所以当你谈论集合时，记得要使用大括号 {{<latex display="false">}} \{ \} {{</latex>}}，这样可以避免你偶然地把集合与其元素混淆。  
这种看似简单的原因之一是字符 {{<latex display="false">}} n {{</latex>}} 在式 (3.1) 的两端是以两种不同的方式使用的。为了阐明这种情况，我们把字符 {{<latex display="false">}} n {{</latex>}} 替换成字母 {{<latex display="false">}} m {{</latex>}} 来重新书写集合  
{{<latex display="false">}} \{ 8 - n : n \in \mathbb{N}, 0 \leq n \leq 5 \} {{</latex>}}，于是我们得到  
{{<latex display="false">}} \{ 8 - m : m \in \mathbb{N}, 0 \leq m \leq 5 \} {{</latex>}}。它与之前的集合完全相等。因此我们能够把式 (3.1) 重新写成：

{{<latex display="true">}}
\{ n + 3 : n \in \mathbb{N}, 0 \leq n \leq 5 \} = \{ 8 - m : m \in \mathbb{N}, 0 \leq m \leq 5 \}
{{</latex>}}  

现在很容易看出（利用定义 3.1.4）为什么该等式为真：每一个形式如 {{<latex display="false">}} n + 3 {{</latex>}} 的数（其中 {{<latex display="false">}} n {{</latex>}} 表示 0 与 5 之间的自然数）也可以写成 {{<latex display="false">}} 8 - m {{</latex>}} 的形式，其中 {{<latex display="false">}} m := 5 - n {{</latex>}}（注意 {{<latex display="false">}} m {{</latex>}} 也是 0 到 5 之间的自然数）。反过来，每一个形式 {{<latex display="false">}} 8 - m {{</latex>}} 的数（其中 {{<latex display="false">}} m {{</latex>}} 表示 0 到 5 之间的自然数）也可以写成 {{<latex display="false">}} n + 3 {{</latex>}} 的形式，其中 {{<latex display="false">}} n := 5 - m {{</latex>}}（注意 {{<latex display="false">}} n {{</latex>}} 也是 0 到 5 之间的自然数）。观察一下，如果我们没有事先把 {{<latex display="false">}} n {{</latex>}} 替换成 {{<latex display="false">}} m {{</latex>}}，那么上面对式 (3.1) 的解释将会让人困惑！

**原因与分析：**

在最初的写法中，集合通通过类似的表达式构造，例如  
{{<latex display="true">}} \{ n + 3 : n \in \mathbb{N}, 0 \leq n \leq 5 \} = \{ 8 - n : n \in \mathbb{N}, 0 \leq n \leq 5 \} {{</latex>}}。

这里两边都使用了相同的记号 {{<latex display="false">}} n {{</latex>}}，但在左侧和右侧实际上是两次独立引入的【哑变量】（dummy variable）。从逻辑上讲，这些变量在各自的集合构造中是局部的，不应该相互混淆。然而，当两侧同时使用同一个字母 {{<latex display="false">}} n {{</latex>}} 时，该符号可能会被误认为是一个全局的变量，从而产生误解，以为这两个定义式右边一层正用同一个值描述元素。因此会让人困惑：为什么 {{<latex display="false">}} n+3 {{</latex>}} 的元素集会等于 {{<latex display="false">}} 8-n {{</latex>}} 的元素集，难道左边两个表达式中{{<latex display="false">}} n {{</latex>}}是同一回事吗？

**如何解决混淆：**

通过将右侧的 {{<latex display="false">}} n {{</latex>}} 改成 {{<latex display="false">}} m {{</latex>}}，得到  
{{<latex display="true">}} \{ n + 3 : n \in \mathbb{N}, 0 \leq n \leq 5 \} = \{ 8 - m : m \in \mathbb{N}, 0 \leq m \leq 5 \} {{</latex>}}。

现在，这看一眼就能看出：左边用 {{<latex display="false">}} n {{</latex>}} 来构造集合，右边用 {{<latex display="false">}} m {{</latex>}} 来构造集合，它们是两个独立的参数，各自有独立定义的集合。这样就可以清晰地观察到，左边集合里的每个元素都能通过一个适当的 {{<latex display="false">}} m {{</latex>}}（或在集合里的元素都能通过一个合适的 {{<latex display="false">}} n {{</latex>}}）来匹配上。换句话说，改变了字母作为变量之后，变量不会误地将两侧的集合混为一谈，而能顺利理解两个集合事实上是不同的参数化得到的元集合。

##  3.习题

1. 设 {{<latex display="false">}} A {{</latex>}} 和 {{<latex display="false">}} B {{</latex>}} 是集合，证明 **吸收率**  {{<latex display="false">}} A \cap (A \cup B) = A \quad \text{和} \quad A \cup (A \cap B) = A. {{</latex>}}

证明 {{<latex display="true">}} A \cap (A \cup B) = A {{</latex>}}

1. 证明 {{<latex display="false">}} A \cap (A \cup B) \subseteq A {{</latex>}}:  

设 {{<latex display="false">}} x \in A \cap (A \cup B) {{</latex>}}。  
根据集合定义：{{<latex display="false">}} x \in A {{</latex>}} 且 {{<latex display="false">}} x \in A \cup B {{</latex>}}。  
由于 {{<latex display="false">}} x \in A {{</latex>}}，故有 {{<latex display="false">}} x \in A \cap (A \cup B) \subseteq A {{</latex>}}。

2. 证明 {{<latex display="false">}} A \subseteq (A \cap (A \cup B)) {{</latex>}}:  

设 {{<latex display="false">}} x \in A {{</latex>}}。  
因为 {{<latex display="false">}} x \in A {{</latex>}} 所以显然 {{<latex display="false">}} x \in A \cup B {{</latex>}} （因为 {{<latex display="false">}} x \in A {{</latex>}} 即满足“或”条件）。  
因此 {{<latex display="false">}} x \in A \cap (A \cup B) {{</latex>}}。

综上，两方面的包涵都得证，故有 {{<latex display="false">}} A \cap (A \cup B) = A {{</latex>}}。

证明 {{<latex display="true">}} A \cup (A \cap B) = A {{</latex>}}

1. 证明 {{<latex display="false">}} A \cup (A \cap B) \subseteq A {{</latex>}}:  
设 {{<latex display="false">}} x \in A \cup (A \cap B) {{</latex>}}。  
根据并集定义，{{<latex display="false">}} x \in A {{</latex>}} 或 {{<latex display="false">}} x \in A \cap B {{</latex>}}。  
若 {{<latex display="false">}} x \in A {{</latex>}}，则显然 {{<latex display="false">}} x \in A {{</latex>}} 成立。  
若 {{<latex display="false">}} x \in A \cap B {{</latex>}}，根据交集定义，{{<latex display="false">}} x \in A {{</latex>}} 且 {{<latex display="false">}} x \in B {{</latex>}}。此时依然有 {{<latex display="false">}} x \in A {{</latex>}}。  
故 {{<latex display="false">}} A \cup (A \cap B) \subseteq A {{</latex>}}。

2. 证明 {{<latex display="false">}} A \subseteq (A \cup (A \cap B)) {{</latex>}}:  
设 {{<latex display="false">}} x \in A {{</latex>}}。  
由于 {{<latex display="false">}} x \in A {{</latex>}}，显然有 {{<latex display="false">}} x \in A \cup (A \cap B) {{</latex>}}。  
故 {{<latex display="false">}} A \subseteq (A \cup (A \cap B)) {{</latex>}}。

综上，两方面的包涵都得证，故有 {{<latex display="false">}} A \cup (A \cap B) = A {{</latex>}}。

2. 令 {{<latex display="false">}} A, B, X {{</latex>}} 表示集合，并且它们满足 {{<latex display="false">}} A \cup B = X {{</latex>}} 和 {{<latex display="false">}} A \cap B = \emptyset {{</latex>}}。证明 {{<latex display="false">}} A = X \setminus B {{</latex>}}和{{<latex display="false">}} B = X \setminus A {{</latex>}}

证明 {{<latex display="true">}} A = X \setminus B {{</latex>}}

1. 证明 {{<latex display="false">}} A \subseteq X \setminus B {{</latex>}}:  

任取 {{<latex display="false">}} x \in A {{</latex>}}，因为 {{<latex display="false">}} A \subseteq A \cup B = X {{</latex>}}，可知 {{<latex display="false">}} x \in X {{</latex>}}。  
又因为 {{<latex display="false">}} A \cap B = \emptyset {{</latex>}}，所以 {{<latex display="false">}} x \notin B {{</latex>}}。  
因此 {{<latex display="false">}} x \in X \setminus B {{</latex>}}，故 {{<latex display="false">}} A \subseteq X \setminus B {{</latex>}}。

2. 证明 {{<latex display="false">}} X \setminus B \subseteq A {{</latex>}}:  

任取 {{<latex display="false">}} x \in X \setminus B {{</latex>}}，则 {{<latex display="false">}} x \in X {{</latex>}} 且 {{<latex display="false">}} x \notin B {{</latex>}}。  
已知 {{<latex display="false">}} X = A \cup B {{</latex>}}，且 {{<latex display="false">}} x \in A \cup B {{</latex>}}，则 {{<latex display="false">}} x \in A {{</latex>}} 或 {{<latex display="false">}} x \in B {{</latex>}}。  
由于 {{<latex display="false">}} x \notin B {{</latex>}}，则只能有 {{<latex display="false">}} x \in A {{</latex>}}，故 {{<latex display="false">}} X \setminus B \subseteq A {{</latex>}}。

综上，两方面的包涵都得证，故有 {{<latex display="false">}} A = X \setminus B {{</latex>}}。

证明 {{<latex display="true">}} B = X \setminus A {{</latex>}} 的过程与上完全相同，只需将 {{<latex display="false">}} A {{</latex>}} 和 {{<latex display="false">}} B {{</latex>}} 的角色对调：

1. {{<latex display="false">}} x \in B \Rightarrow x \in X \text{ 且 } x \notin A, \text{ 故 } B \subseteq X \setminus A. {{</latex>}}

2. {{<latex display="false">}} x \in X \setminus A \Rightarrow x \in X \text{ 且 } x \notin A, \text{ 由 } X = A \cup B \text{ 且 } x \notin A, \text{ 得 } x \in B, \text{ 故 } X \setminus A \subseteq B. {{</latex>}}

综上可得 {{<latex display="false">}} B = X \setminus A {{</latex>}}。

其余习题已于正文中给出。

[^1]: 策梅洛-弗兰克尔集合论（英语：Zermelo-Fraenkel Set Theory），是数学基础中最常用的一阶公理化集合论。含选择公理时常简写为ZFC，不含选择公理的则简写为ZF。它是二十世纪早期为了建构一个不会导致类似罗素悖论的矛盾的集合理论所提出的一个公理系统。
