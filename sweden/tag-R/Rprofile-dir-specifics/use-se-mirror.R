#!/usr/bin/env R
# sets default repo to Sweden
getOption("repos") %T>%
  { .["CRAN"] <- "https://ftp.acc.umu.se/mirror/CRAN/" } %>%
  { options(repos = .) }
