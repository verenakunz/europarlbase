#' Get debate contributions
#'
#' `get_debate_contributions()` gets debate contributions from EuroParlBase.
#' @export

get_debate_contributions <- function(access_token = NULL) {

  ## Check if access token object exists in user's global environment
  if (is.null(access_token)) {
    if (exists("access_token", envir = .GlobalEnv)) {
      access_token <- get("access_token", envir = .GlobalEnv)
    } else {
      stop("\n\nAccess token is missing. Have you specified the access token correctly? Check the package documentation for information on how to specify the access token.")
    }
  }

  ## Build URL to sitting data
  url <- paste0("https://dataverse.harvard.edu/api/access/datafile/10676840?key=", access_token)

  ## Read data
  connect <- url(url)
  on.exit(close(connect))
  data <- readRDS(connect)

  data <- filter(data, corpus == "original")

  ## Return data
  return(data)

}
