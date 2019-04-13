library(magrittr, quietly = TRUE, warn.conflicts = TRUE)
if(interactive()) library(setwidth)

# sets default repo to beijing
getOption("repos") %T>%
  { .["CRAN"] <- "http://mirror.bjtu.edu.cn/cran/" } %>%
  { options(repos = .) }

options( devtools.desc.author =
          utils::person("Emil", "Rehnberg"
                        ,email = "emil.rehnberg@gmail.com"
                        ,role = c("aut", "cre"))
        ,devtools.desc.license = "GPL-3 | file LICENCE")

# saves r history
# requires `export R_HISTFILE=~/.Rhistory` in shell loading
# `.Last` function is invoked in `q`/`quit` if `runLast` is `TRUE`
# from `?savehistory` and http://stackoverflow.com/questions/1189759/expert-r-users-whats-in-your-rprofile
.Last <-
  function() {
    if (!any(commandArgs()=='--no-readline') && interactive()){
      library(magrittr)
      "R_HISTFILE" %>%
        Sys.getenv %>%
        utils::savehistory(.) %>%
        try
    }
  }

# I don't want to load dependancies in Rprofile; load it in the projects instead.
if(!interactive()) detach(package:magrittr)