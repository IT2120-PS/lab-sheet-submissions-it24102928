setwd("C:\\Users\\it24102928\\Desktop\\it24102928")
getwd()

#Q1
data<-read.table("Exercise - LaptopsWeights.txt",header=TRUE)
data
fix(data)
attach(data)

Weight <- as.numeric(data$Weight.kg.)
weight<-Weight
popmn<-mean(weight)
popmn
popsd<-sd(Weight)
popsd

#Q2
samples<-c()
n<-c()

set.seed(123)
num_samples<-25
num_samples
sample_size<-6
sample_size

sample_means<-numeric(num_samples)
sample_means
sample_sds<-numeric(num_samples)
sample_sds

for(i in 1:num_samples){
  s<-sample(Weight,sample_size,replace=TRUE)
  sample_means[i]<-mean(s)
  sample_sds[i]<-sd(s)
}

#Q3
mean_of_sample_means<-mean(sample_means)
mean_of_sample_means
sd_of_sample_means<-sd(sample_means)
sd_of_sample_means
