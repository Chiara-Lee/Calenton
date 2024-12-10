---
title:  1.3.2 泛函导数的操作定义
date: 2024-11-27
lastmod: 2024-11-27
tags: [经典力学]
toc: true
---

##  1.3.2 泛函导数的操作定义

根据上面的讨论，泛函导数归结于计算泛函{{<latex display="false">}}S[f]{{</latex>}}的变分。

换个角度，在泛函{{<latex display="false">}}S[f + \epsilon \delta f]{{</latex>}}中，{{<latex display="false">}}\epsilon{{</latex>}}是一个参数，而泛函{{<latex display="false">}}S{{</latex>}}是一个数，其值依赖于{{<latex display="false">}}\epsilon{{</latex>}}。所以，泛函{{<latex display="false">}}S[f + \epsilon \delta f]{{</latex>}}可以被看作是{{<latex display="false">}}\epsilon{{</latex>}}的普通函数，于是公式：

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \left. \frac{d}{d\epsilon} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \frac{\epsilon^2}{2!} \left. \frac{d^2}{d\epsilon^2} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \cdots
{{</latex>}}

可以视为{{<latex display="false">}}S[f + \epsilon \delta f]{{</latex>}}相对于{{<latex display="false">}}\epsilon{{</latex>}}的普通泰勒展开。

>一般函数在{{<latex display="false">}}x_0{{</latex>}}处以及{{<latex display="false">}}x_0 = 0{{</latex>}}的泰勒展开

{{<latex display="true">}}
f(x) = f(x_0) + \frac{f'(x_0)}{1!}(x-x_0) + \frac{f''(x_0)}{2!}(x-x_0)^2 + \cdots + \frac{f^{(n)}(x_0)}{n!}(x-x_0)^2 + R_n
{{</latex>}}

{{<latex display="true">}}
R_n=o[(x-x_0)^n]
{{</latex>}}

{{<latex display="true">}}
f(x) = f(0) + \frac{f'(0)}{1!}(x) + \frac{f''(0)}{2!}(x)^2 + \cdots + \frac{f^{(n)}(0)}{n!}(x)^2 + R_n
{{</latex>}}

{{<latex display="true">}}
R_n=o[(x)^n]
{{</latex>}}

通过比较

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \left. \frac{d}{d\epsilon} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \frac{\epsilon^2}{2!} \left. \frac{d^2}{d\epsilon^2} S[f + \epsilon \delta f] \right|_{\epsilon=0} + \cdots
{{</latex>}}

{{<latex display="true">}}
S[f + \epsilon \delta f] = S[f] + \epsilon \delta S[f] + \frac{\epsilon^2}{2!} \delta^2 S[f] + \frac{\epsilon^3}{3!} \delta^3 S[f] + \cdots
{{</latex>}}

即可得到一阶泛函导数的形式：

{{<latex display="true">}}
\delta S=\left.\frac{d}{d\epsilon}S[f+\epsilon \delta f]\right|_{\epsilon=0}=\int\limits dt\frac{\delta S}{\delta f(t)}\delta f(t)
{{</latex>}}

{{<latex display="true">}}
\delta S^2=\left.\frac{d^2}{d\epsilon^2}S[f+\epsilon\delta f]\right|_{\epsilon=0}=\int dt_1\int dt_2\frac{\delta ^2S}{\delta f(t_1)\delta f(t_2)}\delta f(t_1)\delta f(t_2)
{{</latex>}}

高阶泛函导数的形式可以类似的写出。

对于下述形式的泛函 

{{<latex display="true">}}
S[f+\epsilon \delta f]=\int\limits_{t_1}^{t_2}dtL(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)
{{</latex>}}

可以联系一阶泛函导数的形式可以得到 

{{<latex display="true">}}
\begin{align}
\delta S&=\left.\int\limits_{t_1}^{t_2}dt\frac{d}{d\epsilon}L(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)\right|_{\epsilon=0}\\  
&\text{其中} f+\epsilon\delta f \text{是关于} \epsilon \text{的函数} f(\epsilon)，f' \text{同理}\\ 
&=\int\limits_{t_1}^{t_2}dt\underbrace{(\frac{\partial L}{\partial f}\delta f+\frac{\partial L}{\partial f'}\delta f'+\frac{\partial L}{\partial f''}\delta f''+\cdots)}_{\equiv\delta L} 
\end{align}
{{</latex>}}

上式的被积函数就是{{<latex display="false">}}L{{</latex>}}的一阶变分{{<latex display="false">}}\delta L{{</latex>}}，与其微分形式{{<latex display="false">}}dL{{</latex>}}全同。只是微分换成了变分。

这意味着

{{<latex display="true">}}
\delta S\equiv\delta(\int\limits_{t_1}^{t_2}dtL)=\int\limits_{t_1}^{t_2}dt\delta L
{{</latex>}}

即是说，变分符号可以移到积分内。

观察一阶泛函导数的形式 

{{<latex display="true">}}
\delta S[f]:=\int\limits dt\frac{\delta S}{\delta f}\delta f
{{</latex>}}

右边只出现了函数的变分{{<latex display="false">}}\delta f{{</latex>}}。但是在

{{<latex display="true">}}
\begin{align} \delta S&=\left.\int\limits_{t_1}^{t_2}dt\frac{d}{d\epsilon}L(t_,f+\epsilon\delta f,f'+\epsilon\delta f',f''+\epsilon\delta f''+\cdots)\right|_{\epsilon=0}\\ &=\int\limits_{t_1}^{t_2}dt\underbrace{(\frac{\partial L}{\partial f}\delta f+\frac{\partial L}{\partial f'}\delta f'+\frac{\partial L}{\partial f''}\delta f''+\cdots)}_{\equiv\delta L} \end{align}\\
{{</latex>}}

中却出现了函数的导数的变分{{<latex display="false">}}\delta f',\delta f'',\cdots{{</latex>}}，在处理这个情况时，我们就需要使用变分法中非常重要的技巧——**分部积分（integration by parts）**。

分部积分的基本思路是：利用变分和求导可以交换顺序的性质，**将作用于{{<latex display="false">}}\delta f{{</latex>}}的导数移除**，代价是产生额外的“全导数”项，然后设定全导数为边界项，并且忽略边界项，使得泛函的变分式中各项的共有项为{{<latex display="false">}}\delta f{{</latex>}}，提出{{<latex display="false">}}\delta f{{</latex>}}后即得一阶泛函导数。

例如，对于正比于{{<latex display="false">}}\delta f'{{</latex>}}的项。

{{<latex display="true">}}
\frac{\partial L}{\partial f'}\delta f'\xlongequal{\text{变分与求导交换顺序}}\frac{\partial L}{\partial f'}\frac{d}{dt}\delta f=\underbrace{\frac{d}{dt}(\frac{\partial L}{\partial f'}\delta f)}_{\text{全导数}}-\frac{d}{dt}(\frac{\partial L}{\partial f'})\delta f
{{</latex>}}

第二个等号是因为

{{<latex display="true">}}
\begin{align} 
&(uv)'=u'v+uv'\\ 
&uv'=(uv)'-u'v 
\end{align}
{{</latex>}}


类似的，

{{<latex display="true">}}
\begin{align} 
\frac{\partial L}{\partial f''}\delta f''&=\frac{\partial L}{\partial f''}\frac{d^2}{dt^2}\delta f={\frac{d}{dt}(\frac{\partial L}{\partial f''}\frac{d}{dt}\delta f)}-\frac{d}{dt}(\frac{\partial L}{\partial f''})\frac{d}{dt}\delta f\\ 
&=\underbrace{\frac{d}{dt}\bigg(\frac{\partial L}{\partial f''}\delta f'-\frac{d}{dt}(\frac{\partial L}{\partial f''})\delta f\bigg)}_{\text{全导数}}+\frac{d^2}{dt^2}(\frac{\partial L}{\partial f''})\delta f 
\end{align}
{{</latex>}}


由此类推，有 

{{<latex display="true">}}
\begin{align} 
\delta S&=\int\limits_{t_1}^{t_2}dt\bigg[\frac{\partial L}{\partial f}\delta f-\frac{d}{dt}(\frac{\partial L}{\partial f'})\delta f+\frac{d^2}{dt^2}(\frac{\partial L}{\partial f''})\delta f+\cdots+\frac{d\mathcal{B}}{dt}\bigg]\\ 
&=\int\limits_{t_1}^{t_2}dt[\frac{\partial L}{\partial f}-\frac{d}{dt}(\frac{\partial L}{\partial f'})+\frac{d^2}{dt^2}(\frac{\partial L}{\partial f''})+\cdots]\delta f+\left.\mathcal{B}\right|_{t_1}^{t_2}
\end{align}
{{</latex>}}

这里{{<latex display="false">}}\frac{d\mathcal{B}}{dt}{{</latex>}}代表全导数项。积分后得到的{{<latex display="false">}}\left.\mathcal{B}\right|_{t_1}^{t_2}{{</latex>}}被称为**边界项（boundary term）**,在积分的端点（边界）处取值。对比

{{<latex display="true">}}
\delta S[f]:=\int\limits dt\frac{\delta S}{\delta f}\delta f
{{</latex>}}

{{<latex display="false">}}\delta S{{</latex>}}在上式中的积分已经具有泛函导数的形式，主要的阻碍来自于边界项。由上面的推导可知，如果泛函的被积函数{{<latex display="false">}}L{{</latex>}}包含{{<latex display="false">}}f(t){{</latex>}}的最高{{<latex display="false">}}n{{</latex>}}阶导数，则边界项{{<latex display="false">}}\mathcal{B}{{</latex>}}就包含{{<latex display="false">}}\delta f(t){{</latex>}}的最高{{<latex display="false">}}n-1{{</latex>}}阶导数。

因此，变分法的一个基本假设就是： **如果泛函的被积函数包含函数的最高{{<latex display="false">}}n{{</latex>}}阶导数，那么在积分的边界处，函数及其直到{{<latex display="false">}}n-1{{</latex>}}阶导数的变分为零。** 即 

{{<latex display="true">}}
\left.\delta f\right|_{t_1}=\left.\delta f\right|_{t_2}=0
{{</latex>}}

{{<latex display="true">}}
\left.\delta f'\right|_{t_1}=\left.\delta f'\right|_{t_2}=0
{{</latex>}}

{{<latex display="true">}}
\vdots
{{</latex>}}

{{<latex display="true">}}
\left.\delta f^{(n-1)}\right|_{t_1}=\left.\delta f^{(n-1)}\right|_{t_2}=0
{{</latex>}}

在这样的假设下，边界项{{<latex display="false">}}\left.\mathcal{B}\right|_{t_1}=\left.\mathcal{B}\right|_{t_2}=0{{</latex>}}恒为零。这也意味着，被积函数可以加上函数{{<latex display="false">}}f(t){{</latex>}}及其直到{{<latex display="false">}}n-1{{</latex>}}阶导数的任意函数{{<latex display="false">}}F=F(t,f,f',\cdots,f^{(n-1)}){{</latex>}}的全导数，而不影响泛函导数。

**两个被积函数相差全导数**，或者两个积分相差边界项，这件事在变分法中非常重要。因此通常使用专门的符号"{{<latex display="false">}}\simeq{{</latex>}}"来表示：

{{<latex display="true">}}
L_1\simeq L_2\Leftrightarrow L_1=L_2+\frac{dF(t,f,f',\cdots)}{dt}
{{</latex>}}

之所以全导数项是{{<latex display="false">}}\frac{dF(t,f,f',\cdots)}{dt}{{</latex>}}是因为上文中的所有函数{{<latex display="false">}}f(t){{</latex>}}都是关于{{<latex display="false">}}t{{</latex>}}的函数，而所有的泛函{{<latex display="false">}}s[f+\epsilon \delta f]{{</latex>}}，则可被视为是{{<latex display="false">}}\epsilon{{</latex>}}的函数。

以及

{{<latex display="true">}}
S_1\simeq S_2\Leftrightarrow S_1=S_2+\left.L\right|_{t_1}^{t_2}
{{</latex>}}

基于以上假设，对于泛函导数的计算来说，边界项不重要。在实际计算中，都是直接丢掉边界项，而无需写出其具体形式的。例如

{{<latex display="true">}}
\frac{\partial L}{\partial f^{\prime}} \delta f^{\prime} \simeq-\frac{\mathrm{d}}{\mathrm{d} t}\left(\frac{\partial L}{\partial f^{\prime}}\right) \delta f, \quad \frac{\partial L}{\partial f^{\prime \prime}} \delta f^{\prime \prime} \simeq \frac{\mathrm{d}^{2}}{\mathrm{d} t^{2}}\left(\frac{\partial L}{\partial f^{\prime \prime}}\right) \delta f
{{</latex>}}

基于同样的理由，泛函积分的上下限也经常被省略，即 

{{<latex display="true">}}
S=\int\limits dtL
{{</latex>}}

##  1.3.3 计算一阶泛函的标准手续

变分原理是整个分析力学的第一原理，而变分法的核心就是计算一阶泛函导数。

对于

{{<latex display="true">}}
S[f] = \int_{t_1}^{t_2} dt L(t, f(t), f'(t), \cdots)
{{</latex>}}

这种形式的泛函，可以总结一下关于一阶泛函导数的计算手续。

(1) 将变分符号 “{{<latex display="false">}}\delta{{</latex>}}” 移到积分号内

{{<latex display="true">}}
\delta S[f] = \int_{t_1}^{t_2} dt \delta L(t, f(t), f'(t), \cdots)
{{</latex>}}

(2) 按照类似复合函数求导的规则来计算 {{<latex display="false">}}\delta L{{</latex>}}
{{<latex display="true">}}
\delta S[f] = \int_{t_1}^{t_2} dt \left( \frac{\partial L}{\partial f} \delta f + \frac{\partial L}{\partial f'} \delta f' + \frac{\partial L}{\partial f''} \delta f'' + \cdots \right)
{{</latex>}}

这里变分和微分的形式全同，只是微分被换成了变分。

(3) 做分部积分，将{{<latex display="false">}}\delta f{{</latex>}}的导数移除，这是计算一阶泛函导数的最关键的一步。 **在实际操作中，只需要不断地将{{<latex display="false">}}\delta f{{</latex>}}的导数移除，并不需要关注全导数项的具体形式。**

(4) 提取{{<latex display="false">}}\delta f{{</latex>}}前的系数，即为一阶泛函导数。

根据以上的手续，经过分部积分，式子

{{<latex display="true">}}
\delta S[f] = \int_{t_1}^{t_2} dt \left( \frac{\partial L}{\partial f} \delta f + \frac{\partial L}{\partial f'} \delta f' + \frac{\partial L}{\partial f''} \delta f'' + \cdots \right)
{{</latex>}}

成为

{{<latex display="true">}}
\delta S \simeq \int_{t_1}^{t_2} dt \left[ \frac{\partial L}{\partial f} - \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) + \frac{d^2}{dt^2} \left( \frac{\partial L}{\partial f''} \right) + \cdots \right] \delta f
{{</latex>}}

从中得到一阶泛函导数

{{<latex display="true">}}
\boxed{\frac{\delta S}{\delta f} = \frac{\partial L}{\partial f} - \frac{d}{dt} \left( \frac{\partial L}{\partial f'} \right) + \frac{d^2}{dt^2} \left( \frac{\partial L}{\partial f''} \right) + \cdots}
{{</latex>}}

需要强调的是，虽然上式在形式上绝对正确， **但是最好不要将偏导数{{<latex display="false">}}\frac{\partial L}{\partial f}{{</latex>}}、{{<latex display="false">}}\frac{\partial L}{\partial f'}{{</latex>}}、{{<latex display="false">}}\frac{\partial L}{\partial f''}{{</latex>}}……先计算出来再代入式子中，而应该按照上面的“变分—分部积分”操作步骤。**

**例 1.1 一阶泛函导数**

考虑泛函{{<latex display="false">}}S[f] = \int dt \left[ (f'(t))^2 - (f(t))^2 \right]{{</latex>}}，有

{{<latex display="true">}}
\begin{align}
\delta S[f] &= \int dt \, \delta \left( f'^2 - f^2 \right) \\
            &= \int dt \left( 2 f' \delta f' - 2 f \delta f \right) \\
            &= \int dt \left( 2 f' \delta f' \right) - \int dt \left( 2 f \delta f \right) \\
\int dt \, f' \delta f' &= \left[ f' \delta f \right] - \int dt \, f'' \delta f \\
\Rightarrow\int dt \, f' \delta f' &= - \int dt \, f'' \delta f \\
\delta S[f] &= - \int dt \, 2 f'' \delta f - \int dt \, 2 f \delta f \\
\delta S[f] &\approx \int dt \left( - 2 f'' - 2 f \right) \delta f(t)
\end{align}
{{</latex>}}

因此一阶泛函导数为

{{<latex display="true">}}
\frac{\delta S}{\delta f(t)} = -2 f''(t) - 2 f(t).
{{</latex>}}

**例 1.2 一阶泛函导数与全导数**

考虑泛函{{<latex display="false">}}S[f] = \int dt \left[ f(t) f'(t) + f'(t) f''(t) \right]{{</latex>}}，有

{{<latex display="true">}}
\begin{align}
\delta S[f] &= \int dt \, \delta \left( f f' + f' f'' \right) \\
            &= \int dt \left( \delta f f' + f \delta f' + \delta f' f'' + f' \delta f'' \right) \\
            &= \int dt \left( \delta f f' \right) + \int dt \left( f \delta f' \right) + \int dt \left( \delta f' f'' \right) + \int dt \left( f' \delta f'' \right) \\
\end{align}
{{</latex>}}

{{<latex display="true">}}
\int dt \, f \delta f' = \left[ f \delta f \right] - \int dt \, f' \delta f 
{{</latex>}}

{{<latex display="true">}}
\int dt \, \delta f' f'' = \left[ \delta f' f' \right] - \int dt \, f' \delta f'' = - \int dt \, f' \delta f'' 
{{</latex>}}

{{<latex display="true">}}
\int dt \, f' \delta f'' = \left[ f' \delta f' \right] - \int dt \, f'' \delta f' = - \int dt \, f'' \delta f' 
{{</latex>}}

{{<latex display="true">}}
\int dt \, f'' \delta f' = \left[ f'' \delta f \right] - \int dt \, f''' \delta f = - \int dt \, f''' \delta f
{{</latex>}}

{{<latex display="true">}}
\int dt \, f' \delta f'' = \left[ f' \delta f' \right] - \int dt \, f'' \delta f' = - \int dt \, f'' \delta f' 
{{</latex>}}
{{<latex display="true">}}
\int dt \, f'' \delta f' = \left[ f'' \delta f \right] - \int dt \, f''' \delta f = - \int dt \, f''' \delta f
{{</latex>}}

最终
{{<latex display="true">}}
\begin{align}
\delta S[f] &= \int dt \left( f' \delta f - f' \delta f - f''' \delta f + f''' \delta f \right) \\
            &= 0
\end{align}
{{</latex>}}

其中，在此例的推导过程中，第一项

{{<latex display="true">}}
\int dt \delta f f'
{{</latex>}}

这一项可以选择直接处理，不需要分部积分，主要是因为{{<latex display="false">}}\delta f{{</latex>}}只是一个变分项，而{{<latex display="false">}}f'{{</latex>}}是一个普通的导数函数，这里没有更高阶的导数存在，所以我们没有对其进行分部积分。

第二项

{{<latex display="true">}}
\int dt f\delta f'
{{</latex>}}

这一项需要分部积分，目的是将{{<latex display="false">}}\delta f'{{</latex>}}变分项中的导数和变分分离开来，通过分部积分后得到

{{<latex display="true">}}
\int dt \, f \delta f' = \left[ f \delta f \right] - \int dt \, f' \delta f 
{{</latex>}}

这里我们将{{<latex display="false">}}\delta{{</latex>}}和{{<latex display="false">}}f'{{</latex>}}分离，避免处理变分的导数项。同时丢弃了边界项。{{<latex display="false">}}\left[ f \delta f \right]{{</latex>}}。

基于同样的理由，第三项和第四项都进行了分部积分丢弃全导数项的过程。因此一阶泛函导数为零。

在这个例子中，出现了泛函导数为零的情况。实际上，观察泛函中的被积函数，{{<latex display="false">}}f f' + f' f'' = \frac{d}{dt} \left( \frac{1}{2} f^2 + \frac{1}{2} f'^2 \right) \equiv \frac{dF}{dt}{{</latex>}}，其自身就是个全导数。而根据上面的讨论，被积函数中的全导数可以自然舍去，所以{{<latex display="false">}}f f' + f' f'' \approx 0{{</latex>}}，难怪其对应的泛函导数为零了。

另外，通过以上两个例子的分析我们可以发现：

1. 我们分部积分的根本目的就是为了分离变分号{{<latex display="false">}}\delta{{</latex>}}和导数{{<latex display="false">}}f'{{</latex>}}，因此，对于任何被变分和求导同时操作的函数项{{<latex display="false">}}f{{</latex>}}，我们都需要对它进行分部积分。
2. 由于分部积分的性质

{{<latex display="true">}}
(uv)'=u'v+uv'
{{</latex>}}

{{<latex display="true">}}
\int u'v=[uv]-\int uv'
{{</latex>}}

因此，我们可以注意要有这样一种便捷的记忆方式，例如对于

{{<latex display="true">}}
f\delta f'
{{</latex>}}

变分和求导同时作用于{{<latex display="false">}}f{{</latex>}}，因此我们需要对此项进行分部积分。而我们可以将该项视为{{<latex display="false">}}u'v{{</latex>}}或者{{<latex display="false">}}uv'{{</latex>}}中的任意一项（它们的区别仅仅只是两个乘数互换一下位置而已），一旦确定好了，那么最终的{{<latex display="false">}}\simeq{{</latex>}}结果就是另外一项。

而事实上，不管我们选择哪个形式，根据两者的形式差异，我们就可以断定，{{<latex display="false">}}\simeq{{</latex>}}结果一定是

{{<latex display="true">}}
f'\detal f
{{</latex>}}

利用这种视角我们来看，

{{<latex display="true">}}
f''\delta f'
{{</latex>}}

另一项的形式一定是两个乘数的导数次数一赠一减，并且由于我们是分离变分和求导，因此变分号里的导数次数一定是减少的，所以最终的结果就是

{{<latex display="true">}}
f'''\delta f
{{</latex>}}

事实上，这相对于是我们将{{<latex display="false">}}f''\delta f'{{</latex>}}看成是{{<latex display="false">}}uv'{{</latex>}}，实际上，我们我们将之看成{{<latex display="false">}}u‘v{{</latex>}}的话，我们就需要经历以下的过程：

{{<latex display="true">}}
f''\delta f'\Rightarrow f'\delta f''
{{</latex>}}

很显然它是需要继续分部积分的，因此

{{<latex display="true">}}
f''\delta f'\Rightarrow f'\delta f''\Rightarrow f''\delta f'
{{</latex>}}

最后再进行一次分部积分得到，

{{<latex display="true">}}
f''\delta f'\Rightarrow f'\delta f''\Rightarrow f''\delta f'\Rightarrow f'''\delta f'
{{</latex>}}

这也就是我们在上面的做法，很显然结果是一样的，而且这样是多此一举。
3. 以及最后，很显然的我们可以发现，每次分部积分的结果都是负的，因此进行奇数次分部积分的结果是负的，偶数次是正的。
