library(magrittr, quietly = TRUE, warn.conflicts = TRUE)
if(interactive()){
  library(setwidth)
}

# sets default repo to beijing
getOption("repos") %T>%
  { .["CRAN"] <- "http://mirror.bjtu.edu.cn/cran/" } %>%
  { options(repos = .) }

    }

if(!interactive()){
  detach(package:magrittr) # I don't want to load dependancies in Rprofile; load it in the projects instead.
}
