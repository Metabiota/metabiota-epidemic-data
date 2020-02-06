# This example function filters and plots 2019-nCoV data at the country resolution

nationalTimeSeries <- function(cumulative = TRUE,outcome = "CASE", location = "CN", confirmstat="CONFIRMED"){
  library(data.table)
  library(ggplot2)
  
  # read csv - assuming working dir set to local repository path ~ setwd()
  ncov2019 <- fread(file = "incidence/ncov/data_ncov2019.csv", na.strings = "")
  
  # subset to AL0-level data
  countrydata <- ncov2019[SPATIAL_RESOLUTION=="AL0"]
  
  # subset to cumulative data
  cumulativedata <- countrydata[CUMULATIVE_FLAG==cumulative]
  
  # subset to case data
  casedata <- cumulativedata[OUTCOME==outcome]
  
  # Check out maximum Case Estimate by country from all sources
  casedata[,.(MaximumCaseEstimate = max(VALUE)), keyby=.(AL0_CODE,AL0_NAME,CONFIRM_STATUS)]
  
  # subset to China
  locationdata <- casedata[AL0_CODE==location]
  
  # subset to confirmed cases
  confirmdata <- locationdata[CONFIRM_STATUS==confirmstat]
  
  # simple plot 
  p <- ggplot() + geom_line(data = confirmdata, mapping = aes(x=DATE_HIGH, y=VALUE, group=REFERENCE, color=REFERENCE))
  
  return(p)
}
