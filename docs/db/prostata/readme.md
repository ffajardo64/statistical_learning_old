# Informação de dados da próstata - Hastie, T., Tibshirani, R. and Friedman, J. (2017) Elements of Statistical Learning. 2nd Ed. 12a reimpressão.

Os dados para este exemplo vêm de um estudo de Stamey et al. (1989) que examinou a correlação entre o nível de antígeno específico da próstata (PSA) e uma série de 
medidas clínicas, em 97 homens que estavam prestes a receber uma prostatectomia radical. 
O objetivo é prever o log de PSA (lpsa) a partir de um número de medições, incluindo log do volume do câncer (lcavol), log do peso da próstata, idade, 
log da quantidade de hiperplasia prostática benigna lbph, vesícula seminal em-vasionsvi, log da penetração capsular lcp, Gleason scoregleason e 
porcentagem das pontuações de Gleason 4 ou 5 pgg45. 


**Preditores (colunas 1--8)**
* lcavol
* peso
* era
* lbph
* svi
* lcp
* Gleason

**resultado (coluna 9)**
* lpsa

**indicador de treino / teste (coluna 10)**

Esta última coluna indica quais 67 observações foram usadas como o "*conjunto de treinamento*" (T) e qual 30 como o "*conjunto de teste*" (F).

