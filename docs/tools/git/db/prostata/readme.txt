Informação de dados da próstata - p. 49

Os dados para este exemplo vêm de um estudo de Stamey et al. (1989) que examinou 
a correlação entre o nível de antígeno específico da próstata (PSA) e uma série de 
medidas clínicas, em 97 homens que estavam prestes a receber uma prostatectomia radical. 
O objetivo é prever o log de PSA (lpsa) a partir de um número de medições, incluindo 
log do volume do câncer (lcavol), log do peso da próstata, idade, 
log da quantidade de hiperplasia prostática benigna lbph, vesícula seminal em-vasionsvi, 
log da penetração capsular lcp, Gleason scoregleason e 
porcentagem das pontuações de Gleason 4 ou 5 pgg45. 


Preditores (colunas 1--8)
lcavol
peso
era
lbph
svi
lcp
Gleason
resultado (coluna 9)
lpsa
indicador de treino / teste (coluna 10)

Esta última coluna indica quais 67 observações foram usadas como o
"conjunto de treinamento" (T) e qual 30 como o conjunto de teste (F).

Houve um erro nestes dados na primeira edição deste
livro. O sujeito 32 teve um valor de 6,1 para peso, o que se traduz em um
449 g de próstata! O valor correto é 44,9 g. Somos gratos a
Prof. Stephen W. Link por nos alertar sobre esse erro.

Os recursos devem primeiro ser escalados para ter média zero e variância 96 (= n)
antes das análises nas Tabelas 3.1 e seguintes. Ou seja, se x for a matriz de 96 por 8
de recursos, calculamos xp <- escala (x, VERDADEIRO, VERDADEIRO)
