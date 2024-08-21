.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    paste0("Thanks for using the europarlbase R package! ",
           "When using data from EuroParlBase, please make sure to cite the ",
           "the database or the package.",
           "\n\n",
           "You can print the citation for the package including version ",
           "information with the function citation(\"europarlbase\")."))
}
