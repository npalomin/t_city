library(rgdal)
library(ggplot2)
#library(shiney)
library(sf)
library(dplyr)
library(readxl)
library(ggpubr)
library(sp)
library(tidyverse)

#SpeedShape <- "//onelondon.tfl.local/Shared/BRP/08_GIS/PROJECTS/032_ISA_New/Test/FME/Bus_test_v4.shp"
#ReadSpeed <- st_read(SpeedShape)

ReadSpeed <- st_read("/Users/nicolas/Documents/WORKS/TCity/TfL_AVAS/Bus_Test v4.shp")

ReadSpeed$ISA_Speed_ <- as.character(ReadSpeed$ISA_Speed_)
ReadSpeed$LIMIT <- dplyr::coalesce(ReadSpeed$ISA_Speed_,ReadSpeed$LIMIT)
ReadSpeedDelete <- ReadSpeed[,-c(1)]
ReadSpeedDelete <- ReadSpeedDelete[,-c(3:4)]
ReadSpeedDelete <- ReadSpeedDelete[,-c(4:8)]
ReadSpeedDelete <- ReadSpeedDelete[,-c(5:12)]
ReadSpeedDelete <- ReadSpeedDelete[,-c(6:23)]
ColumnNames <- c("Legend","TOID","DescriptiveTerm","NatureOfRoad","Speed_Limit")
colnames(ReadSpeedDelete)[1:5] <- ColumnNames
RemoveZeros <- subset(ReadSpeedDelete, Speed_Limit!="0")
RemoveNAs <- na.omit(RemoveZeros)
RemoveErrors <- RemoveNAs[!grepl("400",RemoveNAs$Legend),]
Remove20Zone <- RemoveErrors %>%
  mutate(Speed_Limit = str_replace(Speed_Limit," Zone",""))
Remove20Zone <- Remove20Zone %>%
  dplyr::mutate(Speed_Limit = case_when(Speed_Limit == "P" ~ "0",
                                #Speed_Limit == "NS" ~ "70",
                                #Speed_Limit == "ND" ~ "0",
                                TRUE ~ Speed_Limit))

TransformSpeeds <- st_transform(Remove20Zone,4326)

ExportSpeeds <- st_write(TransformSpeeds,driver = "GeoJSON", paste0(getwd(),"/TfL/dev/output/LDSLM_Data_File.geojson"))
