# Healing-Country
Examine the past, present, and likely future climate challenges, and will help communities lead decision-making around climate challenges with relevant agencies and services.

We considered three states in Australia
 
* Warumungu (Tennant Creek NT)
* Noongar (Perth WA) and 
* Bundjalung (Northern Rivers NSW)

Climate variables considered

* File name:agcdBandjalung, agcdwarumungu, agcdKuana
  
      URL: [https://www.longpaddock.qld.gov.au/silo/point-data/](http://opendap.bom.gov.au:8080/thredds)
      Temporal resolution: Monthly
      Timespan: 1910 - 2024
      Columns:rainfall (total precipitation, mm)
               tmax (Maximum temperature, 0C)
               tmin (Minimum temperature, 0C)
     URL: [https://www.longpaddock.qld.gov.au/silo/gridded-data/]
     Timespan: 1889 - 2025
     Access Gridded Data: Gridded data are available for a range of variables in NetCDF and GeoTiff formats. The NetCDF datasets are arranged in annual blocks where each file contains all of the grids for the selected year and variable
  
* File name:vapourpre_Kuana, vapourpre_Warumungu, vapourpre_Bandjulung
   
       URL: [https://www.longpaddock.qld.gov.au/silo/point-data/](http://opendap.bom.gov.au:8080/thredds)
       Temporal resolution: Monthly
       Timespan: 1971 - 2024
       Columns: vapourpres_h09 (Humidity 9.0 am, hPa)
                vapourpres_h15 (Humidity 3.0 pm, hPa)
  
* File name:Seal level
  
       URL: https://psmsl.org/data/obtaining/stations/111.php?utm_source=chatgpt.com
       Temporal resolution: Monthly
       Timespan: 1897 - 2024
       Station code:	471
       Columns: Level
  
* File name:ER_Perth, ER_Tennant, ER_NSW

       URL: [https://psmsl.org/data/obtaining/stations/111.php?utm_source=chatgpt.com]   (https://www.longpaddock.qld.gov.au/silo/point-data/#responseTab2)
       Temporal resolution: Daily
       Timespan: 1889 - 2025
       Station code:	471
       Columns: evap_comb (Evaporation - combination (synthetic estimate pre-1970, class A pan 1970 onwards, mm))
                radiation (MJ/m2)
       Comments: SILO data are not intended for use in climate change detection studies. Small data movements caused by climate change can be easily confounded by changes resulting from instrumental biases and relocating recording stations.
