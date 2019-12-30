# requires `R_HISTFILE` env variable
# `.Last` function is invoked in `q`/`quit` if `runLast` is `TRUE`
# from `?savehistory` and http://stackoverflow.com/questions/1189759/expert-r-users-whats-in-your-rprofile
if (!"--no-readline" %in% commandArgs()) {
  .rprofile_env <- new.env(parent = emptyenv())
  .Last <- function() try(utils::savehistory(Sys.getenv("R_HISTFILE")))
  attach(.rprofile_env)
}
