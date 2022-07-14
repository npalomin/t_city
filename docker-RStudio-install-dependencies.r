library(ggplot2)
library(tidyverse)
library(knitr)

install.packages("sf")
install.packages("kableExtra")
install.packages("osmextract")
library(kableExtra)
library(sf)
library(osmextract)

remotes::install_github("crazycapivara/h3-r")
library(h3)

# installing dependencies 
# ref: http://jsta.github.io/r-docker-tutorial/03-install-packages.html
# ref: https://stackoverflow.com/questions/67712068/i-am-using-r-in-docker-but-having-error-in-running-libraries
 