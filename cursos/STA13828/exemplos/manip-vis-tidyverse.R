#-----------------------------------------------------------------------
# Arquivos de dados reais para praticar manipulação e visualização.

# url <- "http://leg.ufpr.br/~walmes/data/coberturas-venda-cwb-26Jan2018.txt"
# fl <- file.exists(basename(url))
# if (!fl) {
#     download.file(url = url, destfile = basename(url))
# }

# url <- "http://leg.ufpr.br/~walmes/data/triathlon.txt"
# fl <- file.exists(basename(url))
# if (!fl) {
#     download.file(url = url, destfile = basename(url))
# }

url <- "http://leg.ufpr.br/~walmes/data/euro_football_players.txt"
fl <- file.exists(basename(url))
if (!fl) {
    download.file(url = url, destfile = basename(url))
}

url <- "http://leg.ufpr.br/~walmes/data/ap_venda7bairros_cwb_210314.txt"
fl <- file.exists(basename(url))
if (!fl) {
    download.file(url = url, destfile = basename(url))
}

# url <- "http://leg.ufpr.br/~walmes/data/carros_venda_webmotors_270314.txt"
# fl <- file.exists(basename(url))
# if (!fl) {
#     download.file(url = url, destfile = basename(url))
# }

# url <- "http://leg.ufpr.br/~walmes/data/saosilvestre_fwf.txt"
# fl <- file.exists(basename(url))
# if (!fl) {
#     download.file(url = url, destfile = basename(url))
# }

# url <- "http://leg.ufpr.br/~walmes/data/aval_carros_nota.txt"
# fl <- file.exists(basename(url))
# if (!fl) {
#     download.file(url = url, destfile = basename(url))
# }

#-----------------------------------------------------------------------
# Instala e carrega o tidyverse.

# Define globalmente na sessão o repositório R (use no seu ~/.Rprofile).
options(repos = "http://cran-r.c3sl.ufpr.br/")

# Instalar se não possuir o pacote.
install.packages(tidyverse, dependencies = TRUE)

# Carrega o pacote para a sessão.
library(tidyverse)

packageVersion("tidyverse")

#-----------------------------------------------------------------------
# Importação das tabelas.

# Dados dos apartamentos.
ap <- read_tsv(file = "ap_venda7bairros_cwb_210314.txt",
               col_names = TRUE)
ap

ft <- read_tsv(file = "euro_football_players.txt",
               col_names = TRUE,
               comment = "#")
ft

#-----------------------------------------------------------------------
# Resumo das funcionalidades para manipulação.

# filter()    : filtra registros (subconjunto de linhas).
# arrange()   : ordena os registros pelas variáveis.
# select()    : seleciona variáveis (subconjunto de colunas).
# mutate()    : modifica/cria variáveis.
# group_by()  : realiza agrupamento para realização de agregações.
# summarize() : aplica agregrações (e.g. médias por grupo).
# spread()    : passa de formato longo para amplo (long -> wide).
# gather()    : passa de formato amplo para longo (wide -> long).

# Mais recursos, veja a folha de cola:
browseURL("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/Tidyverse+Cheat+Sheet.pdf")

# Os guias rápidos de consulta.
browseURL("https://www.rstudio.com/resources/cheatsheets/")

# Os principais são esses.
browseURL("https://github.com/rstudio/cheatsheets/raw/master/data-import.pdf")
browseURL("https://github.com/rstudio/cheatsheets/raw/master/data-transformation.pdf")
browseURL("https://github.com/rstudio/cheatsheets/raw/master/data-visualization-2.1.pdf")
browseURL("https://rworkshop.uni.lu/lectures/img/02/tidyr_cheatsheet.jpg")

#-----------------------------------------------------------------------
# Visualização com ggplot2.

# Modelo.
#
# ggplot(data = <dados>, ...) +
#     geom_<grafico>(mapping = aes(...), ...) +
#
# em que <dados> indica um data.frame e <grafico> indica um tipo de
# representação geométrica das informação dos dados.

# ls("package:ggplot2")

# Funções no `ggplot2` que começam com "geom".
grep(x = ls("package:ggplot2"),
     pattern = "^geom_",
     value = TRUE)

# Funções no `ggplot2` que começam com "stat".
grep(x = ls("package:ggplot2"),
     pattern = "^stat_",
     value = TRUE)

# Funções no `ggplot2` que começam com "scale" ou "coord".
grep(x = ls("package:ggplot2"),
     pattern = "^(scale|coord)_",
     value = TRUE)

# Funções no `ggplot2` que começam com "theme".
grep(x = ls("package:ggplot2"),
     pattern = "^theme_",
     value = TRUE)

#-----------------------------------------------------------------------
#-----------------------------------------------------------------------
# Dados sobre os jogadores de futebol (`ft`).

ft

#  1. Total de jogadores por país de origem.
#  2. Total de jogadores por equipe.
#  3. Total de gols por equipe.
#  4. Total de cartões amarelos por equipe.
#  5. Total de cartões amarelos e vermelhos por equipe.
#  6. Distribuição das alturas/pesos dos jogadores.
#  7. Distribuição das idades.
#  8. Distribuição das alturas por país de origem.
#  9. Distribuição das alturas por posição em campo.
# 10. Relação do peso com altura.
# 11. Relação do peso com altura por posição em campo.
# 12. Relação do peso com altura por país de origem.

#-----------------------------------------------------------------------
#-----------------------------------------------------------------------
# Dados sobre os apartamentos.

ap

#  1. Total de imóveis por bairro.
#  2. Distribuição do número de quartos/suites por imóvel.
#  3. Distribuição preço/área dos imóveis.
#  4. Distribuição preço/área dos imóveis por bairro.
#  5. Relação preço e área dos imóveis.
#  6. Relação preço e área dos imóveis por bairro.

#-----------------------------------------------------------------------
