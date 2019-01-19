library(data.table)
library(RMySQL)
library(ggplot2)
#
rm(list=ls())

sunData <- fread("sun_data.csv")
# Parse monthyr  into Mon and Year fields
sunData$Month <- substr(sunData$monthyr,1,4)
sunData$Yr <- substr(sunData$monthyr,5,8)
# create Mon as int from Month field
sunData$Yr <- as.integer(sunData$Yr)
# create month as int field based on sunData$Yr feild
sunData$Mon <-ifelse(sunData$Month == Jan,1,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Feb",2,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Mar",3,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Apr",4,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "May",5,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Jun",6,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Jul",7,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Aug",8,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Sep",9,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Oct",10,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Nov",11,sunData$Month)
sunData$Mon <-ifelse(sunData$Month == "Dec",12,sunData$Month)
# convert to int
sunData$Mon <-as.integer(sunData$Mon)
