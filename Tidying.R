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
summary(titanic$age)
sum(is.na(titanic$age))
##There are 263 NA's in the age column

avg_age <- titanic$age %>%
  mean(na.rm = TRUE)
titanic$age <- replace_na(titanic$age, avg_age)
summary(titanic$age)


##Lifeboat
summary(titanic$boat)
is.na(titanic$boat)
sum(is.na(titanic$boat))
titanic$boat <- replace_na(titanic$boat, "NA")

##Cabin
titanic <- 
  titanic$cabin %>%
  mutate(has_cabin_number = 
           (ifelse(is.na(titanic$cabin) == 0, "0", "1")))


View(titanic)
      