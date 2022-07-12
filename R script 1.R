3+3
install.packages("tidyverse")
Yes# example of installing a package
# install.packages("tidyverse")
# example of loading a package
library(tidyverse)

sci_data <- read_csv("data/sci-online-classes.csv", col_names = TRUE)

library(readr)

5>3
sci_data <- read_csv("data/sci-online-classes.csv") |> # read in data
  select(student_id, FinalGradeCEMS, course_id, ) |> # select variables
  rename(final_grade = FinalGradeCEMS) |> # rename FinalGradeCEMS
  filter(final_grade > .5) |> # keep grades higher than 50% 
  drop_na() # remove rows with missing data

add_numbers <- function(number_1, number_2) {
  number_1 + number_2
}

add_numbers(2, 3)

ggplot(sci_data, aes(x = final_grade)) +
  geom_histogram(fill = "blue")
