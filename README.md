# Epidemic Data for 2019-Novel Coronavirus (2019-nCov) and Zaire ebolavirus in the DRC



## Contents

`incidence/ncov/data_ncov2019.csv` contains spatiotemporal data from multiple sources pertaining to the outbreak of 2019-nCoV

`incidence/ebola/data_drc2018.csv` contains spatiotemporal data from multiple sources pertaining to the outbreak of ebola outbreak that began in North Kivu in 2018

`incidence/dictionary.csv` contains variable descriptions for data_ncov2019.csv and data_drc2018.csv

`incidence/dictionary_sources.csv` contains source names as coded in the incidence files and example URLs

`R/nationalTimeSeries.R` simple example function filtering data to make a basic plot of the 2019-nCoV outbreak (see Sample Plot below for run instructions)


## Citation

Metabiota (2020) Epidemic Data for 2019-Novel Coronavirus (2019-nCoV) and Zaire ebolavirus in the DRC. Metabiota. San Francisco, California. https://github.com/Metabiota/metabiota-epidemic-data

## Other Resources from Metabiota

[Map of 2019-nCoV](https://www.epidemictracker.com/2019-Novel-Coronavirus-2019-nCoV)

[Map of All Infectious Disease Events Currently Monitored by Metabiota](https://www.epidemictracker.com/)

[Metabiota Company Page](http://metabiota.com/)



## Contact

- [email](info@metabiota.com)
- [twitter](https://twitter.com/metabiota)



## Data Overview

This repository contains spatiotemporal data from many official sources for the following infectious disease events:

1.  Zaire ebolavirus beginning 2018 in North Kivu, DRC ("EbolaDRC_2018")
2.  2019-Novel Coronavirus beginning 2019 in Hubei, China ("nCoV_2019")

The incidence data are in two CSV files - one file for each event - and are located in pathogen-specific subfolders in the `incidence/` folder. One row in an incidence file contains a piece of epidemiological data extracted from the specified source.

Each file contains data from multiple sources at multiple spatial resolutions in cumulative and non-cumulative formats by confirmation status. To select a single time series of case or death data, filter the incidence dataset by source, spatial resolution, location, confirmation status, and cumulative flag. This is illustrated in the example script `R/nationalTimeSeries.R`.

Data are collected, structured, and validated by Metabiota’s digital surveillance experts. The data structuring process is designed to produce the most reliable estimates of reported cases and deaths over space and time. The data are cleaned and provided in a uniform format such that information can be compared across multiple sources. Data are collected at the time of publication in the highest geographic and temporal resolutions available in the original report. 

This repository is intended to provide a single access point for data from a wide range of data sources. Data will be updated periodically with the latest epidemiological data. Metabiota maintains a database of epidemiological information for over two thousand high-priority infectious disease events. Please contact us (info@metabiota.com) if you are interested in licensing the complete dataset.



### Cumulative vs. Non-Cumulative Incidence

Reporting sources provide either cumulative incidence, non-cumulative incidence, or both. If the source only provides a non-cumulative incidence value, the cumulative values are inferred using prior reports from the same source. Use the CUMULATIVE FLAG variable to subset the data to cumulative (TRUE) or non-cumulative (FALSE) values.


### Case Confirmation Status

The incidence datasets include the confirmation status of cases and deaths when this information is provided by the reporting source. Subset the data by the CONFIRMATION_STATUS variable to either TOTAL, CONFIRMED, SUSPECTED, or PROBABLE to obtain the data of your choice.

Total incidence values include confirmed, suspected, and probable incidence values. If a source only provides suspected, probable, or confirmed incidence, the total incidence is inferred to be the sum of the provided values. If the report does not specify confirmation status, the value is included in the "total" confirmation status value.

The data provided under the "Metabiota Composite Source" often does not include suspected incidence due to inconsistencies in reporting cases and deaths with this confirmation status.


### Outcome - Cases vs. Deaths

The incidence datasets include cases and deaths. Subset the data to either CASE or DEATH using the OUTCOME variable. It should be noted that deaths are included in case counts.


### Spatial Resolution

Data are provided at multiple spatial resolutions. Data should be subset to a single spatial resolution of interest using the SPATIAL_RESOLUTION variable. 

Information is included at the finest spatial resolution provided to the original epidemic report. We also aggregate incidence to coarser geographic resolutions. For example, if a source only provides data at the province-level, then province-level data are included in the dataset as well as country-level totals. Users should avoid summing all cases or deaths in a given country for a given date without specifying the SPATIAL_RESOLUTION value. For example, subset the data to SPATIAL_RESOLUTION equal to “AL0” in order to view only the aggregated country level data.

There are differences in administrative division naming practices by country. Administrative levels in this dataset are defined using the Google Geolocation API (https://developers.google.com/maps/documentation/geolocation/). For example, the data for the 2019-nCoV from one source provides information for the city of Beijing, which Google Geolocations indicates is a “locality.” Beijing is also the name of the municipality where the city Beijing is located. Thus, the 2019-nCoV dataset includes rows of data for both the city Beijing, as well as the municipality of the same name. If additional cities in the Beijing municipality reported data, those data would be aggregated with the city Beijing data to form the municipality Beijing data.

| ALO_NAME      | AL1_NAME      | AL2_NAME      | AL3_NAME  | LOCALITY_NAME |
| ------------- |:-------------:| -------------:| ---------:|--------------:|
| China         | Beijing       | NA            | NA        | Beijing       |
| China         | Beijing       | NA            | NA        | NA            |
| China         | Hubei         | NA            | NA        | Wuhan         |
| Germany       | Bavaria       | Upper Bavaria | Starnberg | NA            |
| United States | Illinois      | Cook County   | NA        | Chicago       |



### Sources

Data sources in this repository were selected to provide comprehensive spatiotemporal data for each outbreak. Data from a specific source can be selected using the SOURCE variable.

In addition to the original reporting sources, Metabiota compiles multiple sources to generate the most comprehensive view of an outbreak. This compilation is stored in the database under the source name “Metabiota Composite Source.” The purpose of generating this new view of the outbreak is to provide the most accurate and precise spatiotemporal data for the outbreak. At this time, Metabiota does not incorporate unofficial - including media - sources into the “Metabiota Composite Source” dataset.


### Sample Plot

A simple function has been included to illustrate data filtering to generate a basic national time series plot. You may run this function in the Rstudio environment by running the following command:
```r
source("R/nationalTimeSeries.R")
```


### Quality Assurance

Data are collected by a team of digital surveillance experts and undergo many quality assurance tests. After data are collected, they are independently verified by at least one additional analyst. The data also pass an automated validation program to ensure data consistency and integrity.



### Liability

Metabiota shall in no event be liable for any decision taken by the user based on the data made available. Under no circumstances, shall Metabiota be liable for any damages whatseover arising out of the use or inability to use the database. The entire risk arising out of the use of the database remains with the user.
