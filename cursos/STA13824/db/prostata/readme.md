# Informação de dados da próstata 

### Hastie, T., Tibshirani, R. and Friedman, J. (2017) Elements of Statistical Learning. 2nd Ed. 12a reimpressão.

Os dados para este exemplo vêm de um estudo de [Stamey et al. (1989)](https://bit.ly/3i8eCLL) que examinou a correlação entre o nível de antígeno específico da próstata (PSA) e uma série de 
medidas clínicas, em 97 homens que estavam prestes a receber uma prostatectomia radical. 

**Objetivo**: Prever o log de PSA (lpsa) a partir de um número de medições. 

**Preditores (colunas 1--8)**
* lcavol: log do volume do câncer
* peso: log do peso da próstata
* era: idade
* lbph: log da quantidade de hiperplasia prostática benigna
* svi: vesícula seminal
* lcp: log da penetração capsular
* Gleason: Gleason scoregleason e 
porcentagem das pontuações de Gleason 4 ou 5 pgg45.

**resultado (coluna 9)**
* lpsa: log do nível de antígeno específico da próstata

**indicador de treino / teste (coluna 10)**

Esta última coluna indica quais 67 observações foram usadas como o "*conjunto de treinamento*" (T) e qual 30 como o "*conjunto de teste*" (F).

