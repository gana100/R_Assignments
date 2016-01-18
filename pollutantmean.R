pollutantmean <- function (directory, pollutant, id =1:332)
        {
     
        fl <- list.files(directory, pattern = "*.csv")

        PD <- data.frame()
        for (i in id)
                {
                PD <-rbind(PD, read.csv(paste(directory,fl[i],sep="/"), header = TRUE))
        
                }


        mean(PD[,pollutant], na.rm = TRUE)

        }