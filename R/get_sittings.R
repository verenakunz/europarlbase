#' Get plenary sitting data
#'
#' `get_sittings()` gets the plenary sittings data from EuroParlBase.
#' @export

get_sittings <- function(key = access_token) {

  ## Check if access token object exists in environment
  if(exists(access_token) == FALSE) {
    stop ("Have you specified the access token?")
  }

  ## Build URL to sitting data
  url <- paste0("https://dataverse.harvard.edu/api/access/datafile/10247109?key=", key)

  ## Read data
  connect <- url(url)
  on.exit(close(connect))
  data <- readRDS(connect)
  return(data)
}
