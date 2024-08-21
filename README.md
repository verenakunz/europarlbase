
<!-- README.md is generated from README.Rmd. Please edit that file -->

# europarlbase

The goal of europarlbase is to …

## Installation

You can install the development version of {europarlbase} from
[GitHub](https://github.com/verenakunz/europarlbase) with:

``` r
# install.packages("remotes")
remotes::install_github("verenakunz/europarlbase")
```

Note that if you don’t have the {remotes} package installed on your
machine, you have to install it before being able to install the
europarlbase package.

To use {europarlbase}, load the package with:

``` r
library(europarlbase)
```

## Accessing EuroParlBase

To access EuroParlBase you currently need an access token. To be able to
access the database, specify the access token as follows before calling
any {europarlbase} functions:

``` r
## Specify access token
access_token <- "<insert access token>"
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(europarlbase)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
