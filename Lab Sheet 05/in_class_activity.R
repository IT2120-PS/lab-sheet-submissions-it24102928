setwd("C:\\Users\\it24102928\\Desktop\\IT24102928")

data <- read.table("Data.txt",header=TRUE,sep=",")
fix(data)
attach(data)

#part 1
names(data)<-c("X1","X2")
attach(data)
hist(X2,main="Histogram for Number of Shareholders")

histogram <- hist(X2,main="Histogram for Number of Shareholders",breaks = seq(130,270,length=8),rigth=FALSE)
?hist

#part 2
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

classes <- c()

for(i in 1:length(breaks)-1){
  classes[i] <- paste0("[",breaks[i],",",breaks[i+1],")")
  
}
cbind(Classes = classes,frequency = freq)

#part 4
lines(mids,freq)
plot(mids,freq,type='1',main="Frequency Polygon for Shareholders",xlab="Shareholders",ylab="Frequency",ylim=c(0,max(freq)))

#part 5
cum.freq <- cumsum(freq)

new <- c()
for(i in 1:length(breaks)){
  if(i==1){
    new[i]=0
  }else{
    new[i]=cum.freq[i-1]
  }
}

