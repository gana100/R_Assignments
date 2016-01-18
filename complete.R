complete <- function (directory, id =1:332) 
{
        nobs <- integer(0)
        i<-integer(0)
        Ans <-data.frame("id"=0,"nobs"=0)
        fl <- list.files(directory, pattern = "*.csv")
        for (i in id)
        {
         df<- read.csv(paste(directory,fl[i],sep = "/"))
         df1 <- complete.cases(df$sulfate,df$nitrate)
         nobs = sum(df1)
         Ans <- rbind(Ans, c(i, nobs))
        }
        Final<- Ans[2:nrow(Ans), ]
        rownames(Final) <- 1:nrow(Final)
        return(Final)
        }
