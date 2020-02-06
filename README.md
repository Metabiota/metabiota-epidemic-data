# Epidemic Data for 2019-nCoV and Ebola in the DRC

## Contents

`incidence/ncov/data_ncov2019.csv` contains temporal data from multiple sources pertaining to the outbreak of 2019-nCoV

`incidence/ebola/data_drc2018.csv` contains temporal data from multiple sources pertaining to the outbreak of ebola outbreak that began in North Kivu in 2018

`incidence/dictionary.csv` contains variable descriptions for data_ncov2019.csv and data_drc2018.csv

`R/plot_example.R` simple example function filtering data to make a basic plot of the 2019-nCoV outbreak


## Other resources

[Metabiota Company Page](http://metabiota.com/)

[Map of Currently Monitored Infectious Disease Events](https://www.epidemictracker.com/)


## Contact

- [email](info@metabiota.com)

- [twitter](https://twitter.com/metabiota)


## Data Overview

This repository contains spatiotemporal data for the following infectious disease events:

1. Ebola virus 2018 beginning in North Kivu, DRC
2. 2019-nCoV beginning in Hubei, China

Data are collected, structured, and validated by Metabiota’s digital surveillance experts. The data structuring process is designed to produce the most reliable estimates of reported cases and deaths over space and time. The data include case and death counts by source, location, and date. They are collected daily at the highest geographic and temporal resolutions available from multiple official sources. 

This repository will be updated periodically with the latest epidemiological data for the events listed above. Metabiota maintains a database of epidemiological information for over two thousand high-priority infectious disease events. Please contact us (info@metabiota.com) if you are interested in licensing the complete dataset.


### Spatial Resolution

Information in this dataset is at the finest geographic resolution provided by the original reports. The database also aggregates data to provide case and death estimates at coarser geographic resolutions. For example, if a source only provides data at the province-level, those data are provided as reported at the province-level in this dataset. Those province-level data are also aggregated to a country-level total. Users should avoid summing all cases or deaths in a given country for a given date without specifying the SPATIAL_RESOLUTION value. Those additions have already been done during the geo-temporal aggregation. Instead, many analyses warrant filtering the data by the spatial resolution variable to avoid redundant data. For example, subset the data to SPATIAL_RESOLUTION equal to “AL0” in order to view only the aggregated country level data.

There are differences in administrative division naming practices by country. Administrative levels in this dataset are defined using the Google Geolocation API (https://developers.google.com/maps/documentation/geolocation/). For example, the data for the 2019-nCoV from one source provides information for the city of Beijing, which Google Geolocations indicates is a “locality.” Beijing is also the name of the municipality where the city Beijing is located. Thus, the 2019-nCoV dataset includes rows of data for both the city Beijing, as well as the municipality of the same name. If additional cities in the Beijing municipality reported data, those data would be aggregated with the city Beijing data to form the municipality Beijing data.

| ALO_NAME      | AL1_NAME      | AL2_NAME      | AL3_NAME  | LOCALITY_NAME |
| ------------- |:-------------:| -------------:| ---------:|--------------:|
| China         | Beijing       | NA            | NA        | Beijing       |
| China         | Beijing       | NA            | NA        | NA            |
| China         | Hubei         | NA            | NA        | Wuhan         |
| Germany       | Bavaria       | Upper Bavaria | Starnberg | NA            |
| United States | Illinois      | Cook County   | NA        | Chicago       |

### References

Sources of the data in this repository were selected to provide comprehensive spatiotemporal data for each outbreak. Data from a specific source can be selected using the REFERENCE variable.

Metabiota compiles multiple sources to generate the most comprehensive view of an outbreak. This compilation is stored in the database under the reference name “Metabiota Composite Source.” The purpose of generating this new view of the outbreak is to provide the most accurate and precise spatiotemporal data for the outbreak. At this time, Metabiota does not incorporate unofficial - including media - sources into the “Metabiota Composite Source” dataset.

#### 2018 Ebola in DRC

*Democratic Republic of the Congo MOH Communique de Presse:* The Democratic Republic of the Congo Ministry of Health delivers a daily report via email that includes new confirmed cases by day, new total cases (confirmed + probable), cumulative confirmed cases, cumulative probable cases, cumulative deaths, cumulative confirmed deaths, cumulative suspected cases. Data are available at the locality spatial resolution.

URL: http://www.minisanterdc.cd/new/

*WHO DON:* The World Health Organization has been publishing Disease Outbreak News reports each week with data similar to those provided by the DRC MOH Communique de Presse aggregated over 3-week periods. This source does not include the cumulative suspected cases under investigation.

URL: https://www.who.int/csr/don/

*Uganda Ministry of Health Press Releases:* The Ugandan Ministry of Health published reports describing the confirmation status of cases and the active case investigations. There is not a regular publishing cadence for this source.

URL (example): https://health.go.ug/download/file/fid/2401

*Metabiota Composite Source:* This source represents the combined data from “Democratic Republic of the Congo MOH Communique de Presse,” “Uganda Ministry of Health Press Releases”, and “WHO DON” sources. Data are analyzed reconciled to ensure an accurate view of the event. The DRC MOH source was the basis for this dataset when they produced more frequent reports. This source is updated weekly after the release of the latest epidemic information from the WHO source and does not include suspected cases.


#### 2019-nCoV

*HK CHP Severe Respiratory Disease associated with a Novel Infectious Agent:* The Centre for Health Protection provides a daily PDF report that includes cumulative confirmed cases for all known countries (country-level data), Chinese provinces, and Guangdong localities as of 18:00 PM local time. This source also provides cumulative confirmed deaths for China and Hubei Province.

URL: https://www.chp.gov.hk/files/pdf/statistics_of_the_cases_novel_coronavirus_infection_en.pdf

*NHFPC Health Emergency Office News:* The National Health and Family Planning Commission of the People's Republic of China typically provides a daily update of cumulative confirmed cases and cumulative suspected cases for China (country level only). This source occasionally includes new cases or deaths by Chinese province as well as cumulative confirmed cases in Hong Kong, Macau, and Taiwan.

URL: http://www.nhc.gov.cn/yjb/pzhgli/new_list.shtml

*Metabiota Composite Source:* This source represents the combined data from “HK CHP Severe Respiratory Disease associated with a Novel Infectious Agent” and “NHFPC Health Emergency Office News.” This source does not include suspected cases.


### Quality Assurance

Data are collected by a team of digital surveillance experts and undergo multiple quality assurance tests. After data are collected, they are independently verified by at least one additional analyst. The data also pass an automated validation program to ensure data consistency and integrity.
