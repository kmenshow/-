---
# Front matter
title: "Лабораторная работа 4"
author: "Меньшов Константин Эдуардович, НФИбд-02-19"

# Generic otions
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

<h1 align="center">
<p>РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ 
<p>Факультет физико-математических и естественных наук  
<p>Кафедра прикладной информатики и теории вероятностей
<p>ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №4
<br></br>
<h2 align="right">
<p>дисциплина: Математическое моделирование
<p>Преподователь: Кулябов Дмитрий Сергеевич
<p>Студент: Меньшов Константин Эдуардович 
<p>Группа: НФИбд-02-19
<br></br>
<br></br>
<h1 align="center">
<p>МОСКВА
<p>2022 г.
</h1>

# **Цель работы**

Построение модели гармонических колебаний - фазового портрета гармонического осциллятора

# **Теоретическое введение**

Движение грузика на пружинке, маятника, заряда в электрическом контуре, а также эволюция во времени многих систем в физике, химии, биологии и других науках при определенных предположениях можно описать одним и тем же дифференциальным уравнением, которое в теории колебаний выступает в качестве основной модели. Эта модель называется линейным гармоническим осциллятором.

Уравнение свободных колебаний гармонического осциллятора имеет следующий вид:

![photo1. ур-е свободных колебаний гармонического осциллятора](photo/3_1.png "уравнениее свободных колебаний гармонического осциллятора")

где x – переменная, описывающая состояние системы (смещение грузика, заряд конденсатора и т.д.), гамма – параметр, характеризующий потери энергии (трение в механической системе, сопротивление в контуре), омега0 – собственная частота колебаний, t – время.

Уравнение есть линейное однородное дифференциальное уравнение
второго порядка и оно является примером линейной динамической системы.

# **Условия задачи**

Вариант 43

Постройте фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для следующих случаев:

1. Колебания гармонического осциллятора без затуханий и без действий внешней силы
![photo2. случай 1](photo/3_2.png "случай 1")
2. Колебания гармонического осциллятора c затуханием и без действий внешней силы
![photo3. случай 2](photo/3_3.png "случай 2")
3. Колебания гармонического осциллятора c затуханием и под действием внешней силы
![photo4. случай 3](photo/3_4.png "случай 3")

На интервале t принадлежащему [0; 60] (шаг 0.05) с начальными условиями x0 = 2, y0 = -1

# **Выполнение лабораторной работы**

**_1 Колебания гармонического осциллятора без затуханий и без действий внешней силы_**

Уравнение гармонического осциллятора без затуханий и без действий внешней силы:

![photo5. Уравнение гармонического осциллятора без затуханий и без действий внешней силы в варианте](photo/3_2.png "Уравнение гармонического осциллятора без затуханий и без действий внешней силы в варианте")

Чтобы построить фазовый портрет гармонического осциллятора, я написал следующий код:

![photo6. код для фазового портрета гармонического осциллятора в варианте](photo/1.png "код для фазового портрета гармонического осциллятора в варианте")

и получил фазовый портрет:

![photo7. фазовый портрет гармонического осциллятора в варианте](photo/2_1.png "фазовый портрет гармонического осциллятора в варианте")

**_2 Колебания гармонического осциллятора c затуханием и без действий внешней силы_**

Уравнение гармонического осциллятора с затуханием и без действий внешней силы:

![photo8. Уравнение гармонического осциллятора с затуханием и без действий внешней силы в варианте](photo/3_3.png "Уравнение гармонического осциллятора с затуханием и без действий внешней силы в варианте")

Чтобы построить фазовый портрет гармонического осциллятора, я написал следующий код:

![photo9. код для фазового портрета гармонического осциллятора в варианте](photo/2.png "код для фазового портрета гармонического осциллятора в варианте")

и получил фазовый портрет:

![photo10. фазовый портрет гармонического осциллятора в варианте](photo/2_2.png "фазовый портрет гармонического осциллятора в варианте")

**_3 Колебания гармонического осциллятора c затуханием и под действием внешней силы_**

Уравнение гармонического осциллятора c затуханием и под действием внешней силы:

![photo11. Уравнение гармонического осциллятора c затуханием и под действием внешней силы в варианте](photo/3_4.png "Уравнение гармонического осциллятора c затуханием и под действием внешней силы в варианте")

Чтобы построить фазовый портрет гармонического осциллятора, я написал следующий код:

![photo12. код для фазового портрета гармонического осциллятора в варианте](photo/3.png "код для фазового портрета гармонического осциллятора в варианте")

и получил фазовый портрет:

![photo13. фазовый портрет гармонического осциллятора в варианте](photo/2_3.png "фазовый портрет гармонического осциллятора в варианте")

# Выводы

После завершения данной лабораторной работы - я научился выполнять построение модели гармонических колебаний: фазового портрета гармонического осциллятора без затуханий и без действий внешней силы, фазового портрета гармонического осциллятора c затуханием и без действий внешней силы, фазового портрета гармонического осциллятора c затуханием и под действием внешней силы в OpenModelica.

# Список литературы

1. Кулябов, Д.С. - Модель гармонических колебаний 
https://esystem.rudn.ru/pluginfile.php/1343889/mod_resource/content/2/Лабораторная%20работа%20№%203.pdf
