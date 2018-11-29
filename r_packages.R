
## Base programs I want in a new R install
## last updated: 07/11/2018
## Alex Bhattacharya

## data management
datamgmt <- c("tidyverse", 
              "data.table",
              "janitor", # simple data cleaning (names, empty rows/cols; tidyverse+)
              "nanier", # for changing any and all values to NA (tidyverse+)
              "lubridate", # date functions (tidyverse+)
              "skimr", # data browsing
              "visdat" # data exploration
              )
install.packages(datamgmt)

## epi/stats packages
epi <- c("epitools", # basic epi functions
         "surveillance", # lots of surveillance functions, including exceedance algorithms
         "epiDisplay", # havent actually used this
         "EpiStats", ## cc/cs inter and stratification tables
         "survival", # survival analysis
         "zoo", # time series analysis
         "lme4", # regression modelling
         "multcomp", # glm and ci calculations
         "Hmisc", # power and sample size calculations and lots of other things
         "MASS", # stats package
         "EpiCurve", # plots an epicurve
         "forecast", # tsa forecasting
         "TSA" # more time series analysis
         )
install.packages(epi)

## input of data
inputs <- c("openxlsx", # read and write XLSX
            "readxl", # similar to open
            "haven", # read other data types including STATA files
            "RODBC" # allows you to ODBC into databases
            )
install.packages(inputs)

## graphs (ggplot included in tidyverse)
graph <- c("cowplot", # addon to ggplot
           "ggrepel",  # addon to ggplot
           "ggseas" # time series lines w seasonality
           )
install.packages(graph)

## maps for days
maps <- c("ggmap", # ggplot mapping
          "leaflet", # interactive maps
          "rgdal", # read shapefiles
          "geojsonio" # work with jSON data
          )
install.packages(maps)

## markdown extras
mrkdwn <- c("htmlwidgets", # plugins
            "kntir", # markdown essential
            "kableExtra", # better tables for HTML markdown
            "pander", # type conversions
            "broom", # regression output cleanup
            "captioner" # automate seqential figure and table numbers/captions and citations
            ) 
install.packages(mrkdwn)

install.packages("tictoc") ## code runtime testing

## github installs, gitlab ones require network connections
install.packages("devtools")

devtools::install_github("DanielGardiner/EpiFunc") ## agesex and epicurves
devtools::install_git('https://gitlab.phe.gov.uk/ERD/GIS/rgisws.git', build_vignettes=TRUE) ## arc gis functionality
devtools::install_github("PublicHealthEngland/odsR",
                         build_vignettes = TRUE,
                         dependencies = "suggests")
devtools::install_git('https://gitlab.phe.gov.uk/packages/phecharts') ## PHE branding

devtools::install_github('ukgovdatascience/govstyle') ## GOV UK branding
devtools::install_github("hrbrmstr/hrbrthemes") ## nice ggplot themes for graphs
  
