#set up/load packages
packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }
# create a string of package names
packages <- c('tidyverse',
              'rmarkdown',
              'ggthemes',
              'RColorBrewer',
              'viridis',
              'ggdark',
              'plotly',
              'dataRetrieval',
              'snotelr',
              'patchwork',
              'lubridate',
              'lterdatasampler',
              'rstatix',
              'ggpubr',
              'corrplot',
              'usethis')
# use the packageLoad function we created on those packages
packageLoad(packages)

