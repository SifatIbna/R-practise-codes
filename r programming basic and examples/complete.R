library(plyr)
library(readr)

complete <- function(directory,id = 1:332) {
  
  myfiles <- list.files(path=directory, pattern="*.csv", full.names=TRUE)
  
  id_vec <- c()
  nob_vec <- c()
  
  for (i in id) {
    dat_csv <- ldply(myfiles[i], read_csv)
    total_case <- sum(complete.cases(dat_csv["sulfate"],dat_csv["nitrate"]))
    
    id_vec <- c(id_vec,i)
    nob_vec <- c(nob_vec,total_case)
    
  }
  
  data_frame <- data.frame("id"=id_vec,"nobs"=nob_vec)
  data_frame
  
  
}


