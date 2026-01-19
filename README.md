# Healing-Country
Examine the past, present, and likely future climate challenges, and will help communities lead decision-making around climate challenges with relevant agencies and services.

Three states in Australia are considered in study. 
  * Warumungu (Tennant Creek NT)
  * Noongar (Perth WA) and 
  * Bundjalung (Northern Rivers NSW)

    <img width="1536" height="1024" alt="Three sites" src="https://github.com/user-attachments/assets/13c27c7d-64ac-491e-ab82-9915f2f6d0c3" />

  
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

  One major objective of this project is to examinae the season variation over the years across Australia and the below plots presents the identified changes graphically (hidden_states.Rmd).

![Image](https://github.com/user-attachments/assets/cb918cf9-8765-4ce7-b51c-6039e5e7fd65)
![Image](https://github.com/user-attachments/assets/74680c0a-abe7-486c-8a57-d58826db17f0)
![Image](https://github.com/user-attachments/assets/93c41499-35ed-4926-a5dd-53c6702212ee)

* File name:SILO - Australian climate data
* URL: [SILO - Australian climate data from 1889 to yesterday](https://www.longpaddock.qld.gov.au/silo/gridded-data/)
* Timespan: 1889 - 2025

Gridded data are available for a range of variables in NetCDF and GeoTiff formats. The NetCDF datasets are arranged in annual blocks where each file contains all of the grids for the selected year and variable.
  
Maximum/Minimum temperature plays a key role in the variation of season changes. Hence, the following figure depicts the heat anomalies across Australia from 1994 to 2024 (Temperature_variation.Rmd). 

  ![temperature_variation](https://github.com/user-attachments/assets/242f7c39-26f2-447a-b7af-76dd57c45379)


  In addition the following plots represents the maximum daily temperature throughtout the year for Lismore, Tennant Creek and Perth regions (climate_temp_circular.Rmd). 

  - **Filenames**:  
  - `LP_lismore_grid.txt`  
  - `PL_perth_grid.txt`  
  - `LP_tennant_grid.txt`
  
- **URL**: [Long Paddock Point Data](https://www.longpaddock.qld.gov.au/silo/point-data/)
  
- **Spatial resolution**: 0.05° x 0.05° (approx. 5.5 km north-south × 5 km east-west)  
- **Temporal resolution**: Daily  
- **Timespan**: 1889 - 2024  
- **Comments**: Interpolated data to avoid missingness and provide estimates closer to cities of interest.  
- **Data source used for AusEn**: Yes

**Columns**:
- `T.Max` (°C; Maximum temperature)
- `T.Min` (°C; Minimum temperature)
- `Rain` (mm; Rainfall)
- `Evap` (mm; Evaporation)
- `Radn` (MJ/m²; Radiation)
- `VP` (hPa; Vapour Pressure)
- `RHmaxT` (%; Estimated Relative Humidity at Temperature T.Max)
- `RHminT` (%; Estimated Relative Humidity at Temperature T.Min)

 ![Tenanat_creek](https://github.com/HLJ44/HealingCountry/blob/main/Climate%20Data/climate_temp_circular_tennant1.gif?raw=true)

The figure below shows the increase of the sea level in Kuana and the data is from Fremantle tide gauge and Yamba is a tide guage representing Bundjalung country. The Fremantle tide gauge is the long-running reference for the Perth area (monthly data from 1897 to  2022). In both regions the sea level appear to be increases over the years (Sea Level.Rmd).
  
* File name: Seal level Fremantle
  
    * URL: [PSMSL / Australia’s National Tidal Centre](https://psmsl.org/data/obtaining/)
    * Temporal resolution: Monthly
    * Timespan: 1897 - 2024
    * Station code:	471
    * Columns: Year, Date, Level

  <img width="1290" height="763" alt="image" src="https://github.com/user-attachments/assets/e9cccf10-6b5b-4e20-a86c-79a7482753e1" />

* File name: Seal level Yamba
  
    * URL: [PSMSL / Australia’s National Tidal Centre](https://psmsl.org/data/obtaining/)
    * Temporal resolution: Monthly
    * Timespan: 1986 - 2024
    * Station code:	310
    * Columns: Year, Date, Level
    * 
  <img width="1290" height="763" alt="image" src="https://github.com/user-attachments/assets/b6db0a51-2863-4b4b-92a8-59f49c32565a" />


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

* File Name:

    * URL: [Atmosphere Data Source](https://ads.atmosphere.copernicus.eu/requests?tab=all)
    * Temporal resolution: Daily (selected time as 00:00 UTC, however 3-hourly is available
    * Timespan:2003-2024
    * Columns:
        * Particulate matter d < 1 µm (PM1)
        * Particulate matter d < 2.5 µm (PM2.5)
        * Particulate matter d < 10 µm (PM10)
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
