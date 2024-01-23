
# Libraries ---------------------------------------------------------------
library(tidyverse)
library(wordcloud)
library(wordcloud2)
library(here)

# Data --------------------------------------------------------------------

get_files <- function(path, ...){
  list.files(here("inputs"), pattern = "^[^~]")
}

filename <- get_files(here("inputs"))
jamboard <- readxl::read_xlsx(here("inputs", filename))

