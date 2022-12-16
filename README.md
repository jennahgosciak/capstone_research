# 2022-2023 Capstone Project (Team 2)

This repository holds all the code used in developing Team 2's Capstone project for the 2022-2023 academic year.

The Project Team:
- Adelaide Currin
- Haowei Wang
- Jennah Gosciak
- Yiping Zuo

**Working title:** Opportunity Zones and Crime in NYC

**Purpose:** understand the causal relationship between Opportunities Zones (OZs) and crime (i.e., shootings, arrests, complaints) in NYC.

**Public data sources:**
- HUD spatial data on selected and eligible, non-selected OZ tracts.
- Tract-level characteristics from ACS 5-year estimates.
- Urban Institute data on initial investment and gentrification.  
- Incident-level data on arrests, shootings, and complaints via NYC Open Data and the New York Police Department.

**Proposed methods:** regression discontinuity with a geographic boundary, difference-in-differences

**Folder structure:**
- 00_data/
  - Folder should be created locally to store all relevant data files
- 01_input/
  - Input files like varlists, etc.
- 02_programs/
  - Code for data cleaning and analysis
- 03_output/
  - Plots and table output
- _scratch/
  - Exploratory work outside the cleaning and analysis pipeline
