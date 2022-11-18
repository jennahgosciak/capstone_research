library(tidyverse)
library(DBI)
library(sf)
library(fs)

########################################
# Downloading spatial data from CDFI
########################################

zipurl <- "https://www.cdfifund.gov/sites/cdfi/files/documents/opportunity-zones=8764.-9-10-2019.zip"
zipdir <- str_glue("../00_data")
zipname <- "opportunity_zones.zip"
fname <- "opportunity_zones"

# write to drive
download.file(zipurl, str_glue("{zipdir}/{zipname}"))

# unzip
unzip(str_glue("{zipdir}/{fname}"),
  exdir = str_glue("{zipdir}/{fname}/")
)

########################################
# Loading spatial data
########################################

shpfile <- dir_ls(str_glue("{zipdir}/{fname}/"), regexp = "[.]shp$")
oz_shp <- st_read(shpfile)
