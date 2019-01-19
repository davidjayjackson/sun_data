library(data.table)
library(RMySQL)
library(ggplot2)
#
rm(list=ls())

sunData <- fread("sun_data.csv")
# Parse monthyr  into Mon and Year fields
sunData$Month <- substr(sunData$monthyr,1,3)
sunData$Yr <- substr(sunData$monthyr,5,8)
# create Mon as int from Month field
sunData$Yr <- as.integer(sunData$Yr)
# create month aint field based on sunData$Yr feild

if(sunData$Month == "Jan"){
  sunData$Mon <-"1"
}elseif (sunData$Month == "Feb"){
  sunData$Mon <-"2"
}elseif(sunData$Month=="Mar"){
  sunData$Mon <-"3"
}elseif (sunData$Month == "Apr"){
      sunData$Month <-"4"
} elseif (sunData$Month=="May"){
  sunData$Mon <-"5"
} elseif(sunData$Month=="Jun") {
  sunData$Mon <-"6"
} elseif(sunData$Month =="Jul") {
  sunData$Mon <-"7"
} elseif (sunData$Month=="Aug"){
  sunData$Mon <-"8"
} elseif (sunData$Month=="Sep") {
  sunData$Mon <-"9"
} elseif (sunData$Month=="Oct"){
  sunData$Mon <-"10"
} elseif (sunData$Month=="Nov"){
  sunData$Mon <-"11"
} elseif (sunData$Month=="Dec"){
  sunData$Mon <-"12"
} else {sunData$Mon <-"0"}
  
  
            
      
  



# convert to int
sunData$Mon <-as.integer(sunData$Mon)
