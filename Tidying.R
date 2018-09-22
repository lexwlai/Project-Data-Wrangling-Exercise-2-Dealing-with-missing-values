library(tidyverse)
library(magrittr)
library(dplyr)
library(tidyr)
library(stringr)

##Importing Dataset
library(readxl)
titanic3 <- read_excel("C:/Users/lexla/Desktop/titanic3.csv")

titanic <- tbl_df(titanic3)

##Port of Embarkation
is.na(titanic$embarked)
titanic$emabarked <-
  titanic$embarked %>% 
    replace_na("S")

View(titanic$embarked)
      