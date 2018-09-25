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
#Test 1
is.na(titanic$embarked)
any(is.na(titanic$embarked))
sum(is.na(titanic$embarked))
summary(titanic$embarked)
titanic$embarked[which(is.na(titanic$embarked))] <- "S" 
sum(is.na(titanic$embarked))

#Test 2 with replace_na
titanic$embarked <- replace_na(titanic$embarked, "S")
is.na(titanic$embarked)
sum(is.na(titanic$embarked))


##Age




View(titanic)
      