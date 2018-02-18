##Linear discriminant analysis 
hof<-read.csv("hof_data.csv")

## MASS pacakge allows us to do linear discriminant analysis
library(MASS)
names(hof)
head(hof)
dim(hof)

## We will select a subset of predictors H, HR, RBI, AVG, SLG, OBP
hof_1<-cbind(hof[,12], hof[,15], hof[,16], hof[,28], hof[,29], hof[,30])

# Now lets scale the data to provide equal importance to all predictors
hof_scaled<-scale(hof_1, center = TRUE, scale = TRUE) 
dim(hof_scaled)

# create a new dataframe with only the data we will use
hof_2<-cbind(hof[,3],hof_1)

# Add column names
colnames(hof_2)<-c("HOF","H", "HR", "RBI", "AVG", "SLG", "OBP") 

head(hof_2)
hof_3<-data.frame(hof_2)

## Fitting the LDA model
lda1 <- lda(HOF ~ H + HR + RBI + AVG + SLG + OBP, data = hof_3) 
lda1 # this gives summary of the LDA fit


##Calculate the Lds for individual players 
ld <- hof_scaled%*%lda1$scaling pdf("Hof_LDs.pdf")

## nows lets plot our results
with(hof_3, hist(ld[HOF == "1"], prob = TRUE, xlab = "linear discriminants", main = "", col = "pink")) ##Not_HOF = 1 
with(hof_3, hist(ld[HOF == "2"], prob = TRUE, col = "lightgreen", add = TRUE)) ## HOF = 2 
dev.off() 
