# Healing-Country
Examine the past, present, and likely future climate challenges, and will help communities lead decision-making around climate challenges with relevant agencies and services.

Three states in Australia are considered in study. 
  * Warumungu (Tennant Creek NT)
  * Noongar (Perth WA) and 
  * Bundjalung (Northern Rivers NSW)

    <img width="1536" height="1024" alt="Three sites" src="https://github.com/user-attachments/assets/e60d5c88-0672-4252-b250-2b1880991452" />

    
## Data Input

The climate, health and death rates are considere as input variables. 

### Climate variables 

* File name:
    * agcdBandjalung.csv
    * agcdwarumungu.csv
    * agcdKuana.csv
  
 * URL: [The Bureau of Meteorology](http://opendap.bom.gov.au:8080/thredds)
 * Temporal resolution: Monthly
 * Timespan: 1910 - 2024
 * Columns:
     * rainfall (total precipitation, mm)
     * tmax (Maximum temperature, °C)
     * tmin (Minimum temperature, °C)

  One major objective of this project is to examinae the seasonal variation over the years across Australia and the below plots presents the identified changes graphically.

<img width="1344" height="960" alt="image" src="https://github.com/user-attachments/assets/77e405bd-8f39-4553-8838-204a7a7486b7" />


* File name:SILO - Australian climate data
* URL: [SILO - Australian climate data from 1889 to yesterday](https://www.longpaddock.qld.gov.au/silo/gridded-data/)
* Timespan: 1889 - 2025

Gridded data are available for a range of variables in NetCDF and GeoTiff formats. The NetCDF datasets are arranged in annual blocks where each file contains all of the grids for the selected year and variable.
  
Maximum/Minimum temperature plays a key role in the variation of seasonal changes. 

  <img width="696" height="407" alt="image" src="https://github.com/user-attachments/assets/61ffae56-18c7-4932-a195-539689f19b0c" />

* File name:
     * vapourpre_Kuana.csv
     * vapourpre_Warumungu.csv
     * vapourpre_Bandjulung.csv
   
* URL: [The Bureau of Meteorology](http://opendap.bom.gov.au:8080/thredds)
* Temporal resolution: Monthly
* Timespan: 1971 - 2024
* Columns:
     * vapourpres_h09 (Humidity 9.0 am, hPa)
     * vapourpres_h15 (Humidity 3.0 pm, hPa)
  
* File name:Seal level
  
    * URL: [PSMSL / Australia’s National Tidal Centre](https://psmsl.org/data/obtaining/)
    * Temporal resolution: Monthly
    * Timespan: 1897 - 2024
    * Station code:	471
    * Columns: Level

The figure below shows the increase of the sea level in Kuana and the data is from Fremantle tide gauge. The Fremantle tide gauge is the long-running reference for the Perth area (monthly data from 1897 to  2022). 
  
  <img width="735" height="410" alt="image" src="https://github.com/user-attachments/assets/ff69e9de-af93-40e4-a0d1-2206d2432747" />

* File name:
    * Evap_Perth.csv
    * Evap_Tennant.csv
    * Evap_NSW.csv

* URL: [SILO - Australian climate data from 1889 to yesterday](https://www.longpaddock.qld.gov.au/silo/gridded-data/)
* Temporal resolution: Daily
* Timespan: 1889 - 2025
* Station code:	471
* Columns:
   * evap_comb (Evaporation - combination (synthetic estimate pre-1970, class A pan 1970 onwards, mm))
   * radiation (MJ/m2)

SILO data are not intended for use in climate change detection studies. Small data movements caused by climate change can be easily confounded by changes resulting from instrumental biases and relocating recording stations.

---

### Mortality Data

The relevant environmental causes of death identified as:
   * Asthma
   * Chronic obstructive pulmonary disease (COPD)
   * Cardiovascular disease
   * Ischemic heart disease
   * Cerebrovascular disease
   * COVID-19

* File name:
   * Mortality by Gender 2014-2018.csv
   * Mortality by Gender 2019-2023.csv
   * All course of deaths.csv
  
* URL: [Australian Institute of Health and Welfare(AIHW)](https://www.aihw.gov.au/reports/life-expectancy-deaths/mort-books/contents/mort-books)
* Temporal resolution: Annual
* Timespan: 2014 - 2018 and 2019 - 2023
* Columns: Death count

<img width="1011" height="648" alt="image" src="https://github.com/user-attachments/assets/e8b7c3dc-f763-4dab-8947-44b8ca4e3b10" />

---

### Health Data
  
* File name:Mental health.xlsx
* URL: [Australian Institute of Health and Welfare(AIHW)](https://www.aihw.gov.au/reports/life-expectancy-deaths/mort-books/contents/mort-books)
* Temporal resolution: Annual
* Timespan: 2017 - 2022
* Worksheets: NSW, WA, NT

  <img width="821" height="567" alt="image" src="https://github.com/user-attachments/assets/61a573f2-cee2-4536-8dd6-95fed6a2e740" />
