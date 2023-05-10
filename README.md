# 2022-2023 Capstone Project (Team 2)

This repository holds all the code used in developing Team 2's Capstone project for the 2022-2023 academic year.

The Project Team: Adelaide Currin [@addiecurrin](https://github.com/addiecurrin), Haowei Wang [@haowei1234](https://github.com/haowei1234), Jennah Gosciak [@jennahgosciak](https://github.com/jennahgosciak), Yiping Zuo [@YipingZuo](https://github.com/YipingZuo)

**Working title:** Opportunity Zones and Crime in NYC

**Purpose:** understand the causal relationship between Opportunities Zones (OZs) and crime (i.e., shootings, arrests, complaints) in NYC.

**Public data sources:**
- HUD spatial data on selected and eligible, non-selected OZ tracts.
- Tract-level characteristics from ACS 5-year estimates.
- Urban Institute data on initial investment and gentrification.  
- Incident-level data on arrests, shootings, and complaints via NYC Open Data and the New York Police Department.

**Proposed methods:** regression discontinuity with a geographic boundary, difference-in-differences

**Folder structure:**
- 00_data: folder created locally to store all relevant data files.
- 01_input: variable lists and documentation.
- 02_programs: data cleaning and analysis code.
  - [00_create_folder_structure.R](02_programs/00_create_folder_structure.R): run to create all non-code folders used in the project
  - [01_download_crimedata.Rmd](02_programs/01_download_crimedata.Rmd): downloads crime incident data from NYC Open Data portal.
  - [01b_download_acs.Rmd](02_programs/01b_download_acs.Rmd): downloads 2013-2017 ACS data using `tidycensus`.
  - [01c_oz_boundary.Rmd](02_programs/01c_oz_boundary.Rmd): generates the boundary of the OZ.
  - [02a_spatial_join.Rmd](02_programs/02a_spatial_join.Rmd): joins files together and performs a spatial join to identify the relevant Census block and tract ID numbers.
  - [02b_create_analysis_file.Rmd](02_programs/02b_create_analysis_file.Rmd): creates the final analysis file in preparation for running analyses
  - [03_report_figures.Rmd](02_programs/03_report_figures.Rmd): generates all report figures and tables to be included in our final write-up.
  - [04_analysis.Rmd](02_programs/04_analysis.Rmd): runs all the regression analyses for the report.
- 03_output: plots and table output
- \_scratch: exploratory work outside the cleaning and analysis pipeline
- \_archive: old programs that no longer are used in the analysis
