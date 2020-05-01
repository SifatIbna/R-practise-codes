library(plyr)
library(readr)

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  myfiles <- list.files(path=directory, pattern="*.csv", full.names=TRUE)
  
  dat_csv <- ldply(myfiles[id], read_csv)
  
  value <- mean(dat_csv[[pollutant]], na.rm = TRUE)
  print(value)
  
}


