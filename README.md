<!-- README.md is generated from README.Rmd. Please edit that file -->

# europarlbase

The goal of europarlbase is to facilitate access to EuroParlBase, a linked database of European Parliament data. Note that the package is still in its development version. If you encounter any problems, please reach out.

## Installation

You can install the development version of {europarlbase} from [GitHub](https://github.com/verenakunz/europarlbase) with:

``` r
# install.packages("remotes")
remotes::install_github("verenakunz/europarlbase")
```

Note that if you don't have the {remotes} package installed on your machine, you have to install it before being able to install the europarlbase package.

To use {europarlbase}, load the package with: 

```{r}
library(europarlbase)
```


## Accessing EuroParlBase

To access EuroParlBase you currently need an access token. Please reach out to me for the access token. To be able to access the database, specify the access token as follows before calling any {europarlbase} functions:

```{r}
## Specify access token
access_token <- "<insert access token>"
```


## Getting the data

```{r}
## Get sitting data
sittings <- get_sittings()

## Get socio-demographic MEP data
mep_infos <- get_meps()

## Get political MEP data
mep_political <- get_mep_political()

## Get social MEP data
mep_social <- get_mep_social()

## Get individual voting decisions
rcv_decisions <- get_votes()

## Get roll-call vote infos
rcv_infos <- get_vote_infos()

## Get debate contributions
debate_contributions <- get_debate_contributions() # currently needs to have timeout option set to a sufficiently high level to be able to download full data
```


