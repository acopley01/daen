#this is used to help clean the data from DSS. 
dss <- read.csv("~/Desktop/dss.csv", comment.char="#") #bring in file
View(dss)
dss$inspector_name<-gsub(":","",as.character(dss$inspector_name)) #remove : from inspector name
View(dss)
dss1<- dss[!dss$standard_=="",] #remove empty standard number
dss1 <- dss[grep("22VAC", dss$standard_),] # remove values that do not contain 22VAC in standard number
names(dss1)[24] <- 'StandardNumber' #changed column name of Standard_ to StandardNumber
View(dss1)
