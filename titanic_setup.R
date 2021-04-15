# Load package(s)
library(tidymodels)
library(tidyverse)

# Seed
set.seed(3013)

## load data
titanic <- read_csv("data/titanic.csv") %>%
  janitor::clean_names() %>%
  mutate(
    survived = factor(survived, levels = c("Yes", "No")),
    pclass = factor(pclass)
  )

