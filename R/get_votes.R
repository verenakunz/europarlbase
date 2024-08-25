#' Get individual roll-call voting decisions
#'
#' `get_votes()` gets MEPs' roll-call voting decisions from EuroParlBase.
#' @export

get_votes <- function(access_token = NULL, term = NULL) {

  ## Check if access token object exists in user's global environment
  if (is.null(access_token)) {
    if (exists("access_token", envir = .GlobalEnv)) {
      access_token <- get("access_token", envir = .GlobalEnv)
    } else {
      stop("\n\nAccess token is missing. Have you specified the access token correctly? Check the package documentation for information on how to specify the access token.")
    }
  }

}
