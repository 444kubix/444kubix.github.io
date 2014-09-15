30. Постановка краевых задач для уравнения теплопроводности. Метод разделения переменных для решения 1-ой краевой задачи.
--------------

$\left\{\matrix{{u_{tt} =a^{2} u_{xx} } \cr {u(x,0)=\varphi (x)} \cr {u_{t} (x,0)=\psi (x)}}\right. \left(*\right)$  Уравнение характеристики: $dx^{2} -a^{2} dt^{2} =0\Rightarrow $ $\left\{\matrix{{dx-adt=0} \cr {dx+adt=0}}\right. \Rightarrow $ $\left\{\matrix{{x-at=C1} \cr {x+at=C2}}\right. $
 
Сделаем замену переменных:
 
$\left\{\matrix{{\xi =x-at} \cr {\eta =x+at}}\right. \Rightarrow u_{\xi \eta } =0$
$${\partial u\over \partial x} ={\partial u\over \partial \xi } {\partial \xi \over \partial x} +{\partial u\over \partial \eta } {\partial \eta \over \partial x} ={\partial u\over \partial \xi } +{\partial u\over \partial \eta } ; {\partial u\over \partial t} =a({\partial u\over \partial \xi } +{\partial u\over \partial \eta } )$$ 
$${\partial ^{2} u\over \partial x^{2} } ={\partial ^{2} u\over \partial \xi ^{2} } +2{\partial ^{2} u\over \partial \xi \partial \eta } +{\partial ^{2} u\over \partial \eta ^{2} } ;   {\partial ^{2} u\over \partial t^{2} } =a^{2} ({\partial ^{2} u\over \partial \xi ^{2} } -2{\partial ^{2} u\over \partial \xi \partial \eta } +{\partial ^{2} u\over \partial \eta ^{2} } )$$ 
$\forall $ решение  $u_{\eta } (\xi ,\eta )=f^{*} (\eta )\Rightarrow u(\xi ,\eta )=\int f^{*} (\eta ) d\eta +f_{1} (\xi )=f_{1} (\xi )+f_{2} (\eta )\left(**\right)$

Т.о. $\forall $ решение уравнения $u_{\xi \eta } $= 0 м.б. представлено в виде (**), т.е. есть функции $f_{1} ,f_{2} \Rightarrow \left(**\right)$ - общий интеграл уравнения $u_{\xi \eta } =0\Rightarrow $Найдем функции $f_{1} ,f_{2} $:
$$\left\{\matrix{{u(x,t)=f_{1} (x+at)+f_{2} (x-at)} \cr {u(x,0)=f_{1} (x)+f_{2} (x)=\varphi (x)} \cr {u_{t} (x,0)=af_{1} ^{{'} } (x)-af_{2} ^{{'} } (x)=\psi (x)}}\right. \Rightarrow f_{1} (x)-f_{2} (x)={1\over a} \int _{x_{0} }^{x}\psi (\alpha )d\alpha +C \Rightarrow $$ 
$$f_{1} (x)={1\over 2} \varphi (x)+{1\over 2a} \int _{x0}^{x}\psi (\alpha )d\alpha +{C\over 2}  ;f_{2} (x)={1\over 2} \varphi (x)-{1\over 2a} \int _{x_{0} }^{x}\psi (\alpha )d\alpha -{C\over 2}  \Rightarrow $$ 
$u(x,t)=f_{1} (x+at)+f_{2} (x-at)={\varphi (x+at)+\varphi (x-at)\over 2} +{1\over 2a} [\int _{x_{0} }^{x+at}\psi (\alpha )d\alpha  -\int _{x_{0} }^{x-at}\psi (\alpha )d\alpha  ]=$ ${\varphi (x+at)+\varphi (x-at)\over 2} +{1\over 2a} \int _{x-at}^{x+at}\psi (\alpha )d\alpha  $ - формула Даламбера

Если в формуле Даламбера $\varphi $- дважды непрерывно дифференцируема, $\psi $- непрерывно дифференцируема, удовлетворяют уравнению и краевым условиям $\left(*\right)\Rightarrow \exists !$ решение, определяемое формулой Даламбера.

<hr>

[Закон Гука](http://ru.wikipedia.org/wiki/%D0%97%D0%B0%D0%BA%D0%BE%D0%BD_%D0%93%D1%83%D0%BA%D0%B0):

> Сила упругости, возникающая в теле при его деформации, прямо пропорциональна величине этой деформации: $F = k \Delta l$
