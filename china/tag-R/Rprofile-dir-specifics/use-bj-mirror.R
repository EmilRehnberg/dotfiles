#!/usr/bin/env R
# sets default repo to beijing
getOption("repos") %T>%
  { .["CRAN"] <- "http://mirror.bjtu.edu.cn/cran/" } %>%
  { options(repos = .) }
