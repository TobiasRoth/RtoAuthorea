# Settings
library(dplyr)
library(kableExtra)

# Create table
tab <- iris %>% 
  group_by(Species) %>% 
    summarise(n = n(),
              `average PL` = mean(Sepal.Length),
              `SD PL` = sd(Sepal.Length),
              `min PL` = sd(Sepal.Length)) %>% 
    kable(caption = "This is a summary table of the famous iris data set.", format = "latex", booktabs = T) %>% 
  kable_styling() %>%
  footnote(general = "\\\\href{https://github.com/TobiasRoth/RtoAuthorea/blob/master/tables/latex_table/latex_table.R}{R-code}", 
           footnote_as_chunk = T, escape = FALSE, general_title = "")
  
# Include table into manuscript
writeLines(tab, "tables/latex_table/latex_table.tex")

