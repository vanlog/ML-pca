require(tidyverse)

#--- Count different type of variables
check_variable_class <- function(data){
  table(sapply(data, class))  
}

#---- Count Na turned into function
count_na <- function(data){
  data %>%
    summarise_all(list(na = ~sum(is.na(.)))) %>%
    gather("Variable", "Missing")  
}

#---- Checks

# nutrition <- read.csv("data/food-nutritional-values.csv")
# check_variable_class(nutrition)
# count_na(nutrition)


