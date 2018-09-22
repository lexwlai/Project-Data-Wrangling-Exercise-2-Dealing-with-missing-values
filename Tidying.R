<<<<<<< HEAD
library(tidyverse)
library(magrittr)
library(dplyr)
library(tidyr)
library(stringr)
=======
library(dplyr)
library(tidyr)
>>>>>>> bfeba4d999ae94f5baa6b703ef5bd75bb0864071

##Importing Dataset
library(readxl)
titanic3 <- read_excel("C:/Users/lexla/Desktop/titanic3.csv")

<<<<<<< HEAD
titanic <- tbl_df(titanic3)

##Port of Embarkation
is.na(titanic$embarked)
titanic$emabarked <-
  titanic$embarked %>% 
    replace_na("S")

View(titanic$embarked)
      
=======
>>>>>>> bfeba4d999ae94f5baa6b703ef5bd75bb0864071
