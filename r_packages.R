
## Base programs I want in a new R install
## last updated: 07/02/2020s
## Alex Bhattacharya

## project managemnet
proj <- c("renv", "pacman", # project version management
          "tidylog", # result changes
          "tictoc", # timekeeping on code
          "reticulate" # run python in R 
          )

install.packages(proj)

## data management
datamgmt <- c("tidyverse",
              "data.table",
              "janitor", # simple data cleaning (names, empty rows/cols; tidyverse+)
              "nanier", # for changing any and all values to NA (tidyverse+)
              "lubridate", # date functions (tidyverse+)
              "skimr", # data browsing, use!
              "visdat", # data exploration
              "sqldf" # allows reading of CSV line by line with SQL queries to filter
              )
install.packages(datamgmt)

## data exploration/summary
exp <- c("arsenal", # powerful table 1 creator
         "tableone" # less flexible but easy to use
         ) 
install.packages(exp)

## multicore processing
multi <- c("foreach", # parallel loops
           "h20", # connects to H20 ML engine
           "future", # evaluations in parallel
           "sparklyr", # Apache Spark interface
           "RHIPE","RHadoop", # Hadoop interface
           "ff","bigmemory", # use disk instead of ram
           "rslurm","flowr" # HPC scheduling
           )
install.packages(multi)

devtools::install_github("tidyverse/multidplyr") # multi-core processing for dplyr

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
inputs <- c("openxlsx","readxl", # read and write XLSX
            "haven","foriegn", # read other data types including STATA files
            "odbc" # allows you to ODBC into databases, faster than RODBC
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

devtools::install_git('https://gitlab.phe.gov.uk/packages/DataLakeR') ## denominator data from PHE DataLake

devtools::install_github("DanielGardiner/EpiFunc", force=T) ## agesex and epicurves
devtools::install_git('https://gitlab.phe.gov.uk/ERD/GIS/rgisws.git', build_vignettes=TRUE) ## arc gis functionality
devtools::install_github("PublicHealthEngland/odsR",
                         build_vignettes = TRUE,
                         dependencies = "suggests")
devtools::install_git('https://gitlab.phe.gov.uk/packages/phecharts') ## PHE branding

devtools::install_github('ukgovdatascience/govstyle') ## GOV UK branding
devtools::install_github("hrbrmstr/hrbrthemes") ## nice ggplot themes for graphs

devtools::install_github("hrbrmstr/nominatim") ## for working with openstreet map geocoding

