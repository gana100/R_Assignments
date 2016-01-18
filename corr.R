

corr <- function (directory, threshold = 0) {
        source("complete.R");
        fl <- list.files(directory, pattern = "*.csv");
        full_nobs <- complete (directory);
        pass_nobs <- full_nobs[full_nobs$nobs > threshold, ]
       

cornum <- numeric(0)

for (i in pass_nobs$id)
        {PD <- read.csv(paste(directory,fl[i],sep = "/"))
       
        cornum<- c(cornum, cor(PD$sulfate, PD$nitrate, use = "pairwise.complete.obs"))
        }
return (cornum)
}