## Base programs I want in a new R install
## last updated: 15/05/2020
## Alex Bhattacharya

## ensure you have the updated version
install.packages("devtools")

## project managemnet
proj <- c('renv', 'pacman', # project version management
          'tidylog', # result changes
          'tictoc', # timekeeping on code
          'reticulate' # run python in R
)
install.packages(proj)

## data management
datamgmt <- c('tidyverse', # package of common tools using the same syntax format
              'data.table', # alternative to tidyverse
              'janitor', # simple data cleaning (names, empty rows/cols; tidyverse+)
              'nanier', # for changing any and all values to NA (tidyverse+); NOT SUPPORT YET ON R4.0
              'lubridate', # date functions (tidyverse+)
              'skimr', # data browsing, use!
              'visdat', # data exploration
              'sqldf' # allows reading of CSV line by line with SQL queries to filter
)
install.packages(datamgmt)

## epi/stats packages
epi <- c('epitools', # basic epi functions
         'epiR', # even more epi tools, including sample size
         'icd', ## REMOVED FROM CRAN, NOT SUPOPRTED ON R4.0
         'comorbidity', # ICD 10 comorbiditiy scores
         'ICC.Sample.Size', # nested and cluster sample size calculations
         'samplingbook', # calculations for sampling
         'surveillance', # lots of surveillance functions, including exceedance algorithms
         'epiDisplay', # havent actually used this
         'EpiStats', ## cc/cs inter and stratification tables
         'survival', # survival analysis
         'zoo', # time series analysis
         'TSA', # more time series analysis; NOT SUPPORT YET ON R4.0
         'lme4', # regression modelling
         'multcomp', # glm and ci calculations
         'Hmisc', # power and sample size calculations and lots of other things
         'MASS', # stats package
         'EpiCurve', # plots an epicurve
         'forecast', # tsa forecasting
         'DesignLibary', # model design; ; NOT SUPPORT YET ON R4.0
         'fmsb', # medical stats
         'pwr' # power sample size caluclations
)
install.packages(epi)

## input/output of data
inputs <- c('openxlsx','readxl', # read and write XLSX
            'haven', # read other data types including STATA files
            'foriegn', # read other data types including STATA files; NOT SUPPORT YET ON R4.0
            'odbc' # allows you to ODBC into databases, faster than RODBC
)
install.packages(inputs)

## graphs (ggplot included in tidyverse)
graph <- c('cowplot', # addon to ggplot
           'ggrepel',  # addon to ggplot
           'ggseas', # time series lines w seasonality
           'ggpubr', # plotting normality for checks
           'survminer' # survival package curve plotting
)
install.packages(graph)

## maps for days
maps <- c('ggmap', # ggplot mapping
          'leaflet', # interactive maps
          'sf', # static maps w ggplot again
          'spdplyr', # for manipulating the attribute data inside the spatial data frame,
          'rgdal', # read shapefiles
          'geojsonio', # work with JSON data
          'rmapshaper' # manipulate GeoJSON geometories
)
install.packages(maps)

## publication table 1 summaries
exp <- c('arsenal', # powerful table 1 creator
         'tableone' # less flexible but easy to use
)
install.packages(exp)

## multicore processing
multi <- c('foreach', # parallel loops
           'h20', # connects to H20 ML engine
           'future', # evaluations in parallel
           'sparklyr', # Apache Spark interface
           'RHIPE','RHadoop', # Hadoop interface
           'disk.frame','ff','bigmemory', # use disk instead of ram
           'rslurm','flowr' # HPC scheduling
)
install.packages(multi)

devtools::install_github('tidyverse/multidplyr') # multi-core processing for dplyr

## markdown extras
mrkdwn <- c('htmlwidgets', # plugins
            'knitr', # markdown essential
            'kableExtra', # better tables for HTML markdown
            'pander', # type conversions
            'trelliscopejs', # dashboards for ggplot
            'flexdashboard', # dashboards
            'plotly', # interactive ggplots
            'broom', # regression output cleanup
            'broom.mixed', # for mixed effect model output cleaning
            'captioner' # automate seqential figure and table numbers/captions and citations
)
install.packages(mrkdwn)

## github installs, gitlab ones require network connections
httr::set_config(httr::config(ssl_verifypeer=0L))

## PHE GitLab ####
phe <- c('https://gitlab.phe.gov.uk/packages/DataLakeR',## denominator data from PHE DataLake
         'https://gitlab.phe.gov.uk/ERD/GIS/rgisws.git', ## arc gis functionality
         'https://gitlab.phe.gov.uk/packages/phecharts' ## PHE branding

)
devtools::install_git(phe)

## GitHub ####
github <- c('DanielGardiner/EpiFunc', ## agesex and epicurves
            'PublicHealthEngland/odsR', ## ODS denonimators
            'ukgovdatascience/govstyle', ## GOV UK branding
            'hrbrmstr/hrbrthemes', ## nice ggplot themes for graphs
            'hrbrmstr/nominatim'  ## for working with openstreet map geocoding
            )
devtools::install_github(github)

## Other tools ####
# https://geoportal.statistics.gov.uk/ ## The ONS postcode lookup tables can be found here
