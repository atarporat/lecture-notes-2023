 install.packages(c("tidyverse", "kableExtra"))
 library(dplyr)
 library(knitr)
 library(kableExtra)
 library(magrittr)
 data(iris)
 iris %>%
   select(starts_with("Sepal"), Species) %>%
   group_by(Species) %>%
   summarise(Average_Sepal_Length = mean(Sepal.Length)) %>%
   kable() %>%
   kable_styling()
 library(ggplot2)
 
 data("mtcars")
 mtcars %>%
   mutate(cyl = as.factor(cyl)) %>%
   ggplot(aes(x = hp, y = mpg, color = cyl)) +
   geom_point() +
   geom_smooth(method = "lm", size = 1)
 install.packages("usethis")
 
 library(usethis)
 
 use_git_config(
   scope = "project",
   user.name = "atarporat",
   user.email = "atarkotu@gmail.com"
 )
 
x = 1