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