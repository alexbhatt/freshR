
## Base programs I want in a new R install
## last updated: 14/12/2018
## Alex Bhattacharya

## data management
datamgmt <- c("tidyverse",
              "data.table",
              "janitor", # simple data cleaning (names, empty rows/cols; tidyverse+)
              "nanier", # for changing any and all values to NA (tidyverse+)
              "lubridate", # date functions (tidyverse+)
              "skimr", # data browsing, use!
              "visdat" # data exploration
              )
install.packages(datamgmt)

## data exploration/summary
exp <- c("arsenal", # powerful table 1 creator
         "tableone" # less flexible but easy to use
         ) 
install.packages(exp)

## epi/stats packages
epi <- c("epitools", # basic epi functions
         "epiR", # even more epi tools, including sample size
         "ICC.Sample.Size", # nested and cluster sample size calculations
         "samplingbook", # calculations for sampling
         "surveillance", # lots of surveillance functions, including exceedance algorithms
         "epiDisplay", # havent actually used this
         "EpiStats", ## cc/cs inter and stratification tables
         "survival", # survival analysis
         "zoo", # time series analysis
         "TSA", # more time series analysis
         "lme4", # regression modelling
         "multcomp", # glm and ci calculations
         "Hmisc", # power and sample size calculations and lots of other things
         "MASS", # stats package
         "EpiCurve", # plots an epicurve
         "forecast", # tsa forecasting
         "DesignLibary", # model design
         "fmsb", # medical stats
         "pwr" # power sample size caluclations
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
           "ggseas", # time series lines w seasonality
           "ggpubr", # plotting normality for checks
           "survminer" # survival package curve plotting
           )
install.packages(graph)

## maps for days
maps <- c("ggmap", # ggplot mapping
          "leaflet", # interactive maps
          "sf", # static maps w ggplot again
          "rgdal", # read shapefiles
          "geojsonio" # work with jSON data
          )
install.packages(maps)

## markdown extras
mrkdwn <- c("htmlwidgets", # plugins
            "kntir", # markdown essential
            "kableExtra", # better tables for HTML markdown
            "pander", # type conversions
            "trelliscopejs", # dashboards for ggplot
            "plotly", # interactive ggplots
            "broom", # regression output cleanup
            "broom.mixed", # for mixed effect model output cleaning
            "captioner" # automate seqential figure and table numbers/captions and citations
            )
install.packages(mrkdwn)

install.packages("tictoc") ## code runtime testing

## github installs, gitlab ones require network connections
install.packages("devtools")

httr::set_config(httr::config(ssl_verifypeer=0L))

devtools::install_github("DanielGardiner/EpiFunc", force=T) ## agesex and epicurves
devtools::install_git('https://gitlab.phe.gov.uk/ERD/GIS/rgisws.git', build_vignettes=TRUE) ## arc gis functionality
devtools::install_github("PublicHealthEngland/odsR",
                         build_vignettes = TRUE,
                         dependencies = "suggests")
devtools::install_git('https://gitlab.phe.gov.uk/packages/phecharts') ## PHE branding

devtools::install_github('ukgovdatascience/govstyle') ## GOV UK branding
devtools::install_github("hrbrmstr/hrbrthemes") ## nice ggplot themes for graphs

devtools::install_github("hrbrmstr/nominatim") ## for working with openstreet map geocoding

