library(NHANES)
data("NHANES")
library(dplyr)
names(NHANES)
head(NHANES)

#1
ref <- NHANES %>% filter(Gender=='female' & AgeDecade == " 20-29") %>% 
  summarize(average = mean(BPSysAve, na.rm=TRUE), standard_deviation = sd(BPSysAve,na.rm=TRUE))
ref

#2
ref_avg <- ref %>% pull(average)
ref_avg

#3
NHANES %>% 
  filter(Gender=='female' & AgeDecade == " 20-29") %>% 
  summarize(minimum = min(BPSysAve, na.rm=TRUE), maximum = max(BPSysAve,na.rm=TRUE))

#4
NHANES %>% 
  filter(Gender=='female') %>%
  group_by(AgeDecade) %>%
  summarize(average=mean(BPSysAve,na.rm=TRUE), standard_deviation=sd(BPSysAve,na.rm = TRUE))

#5
NHANES %>% 
  filter(Gender=='male') %>%
  group_by(AgeDecade) %>%
  summarize(average=mean(BPSysAve,na.rm=TRUE), standard_deviation=sd(BPSysAve,na.rm = TRUE))

#6
NHANES %>% 
  group_by(AgeDecade,Gender) %>%
  summarize(average=mean(BPSysAve,na.rm=TRUE), standard_deviation=sd(BPSysAve,na.rm = TRUE))

#7
NHANES %>%
  filter(AgeDecade==' 40-49' & Gender == 'male') %>%
  group_by(Race1) %>%
  summarize(average = mean(BPSysAve,na.rm=TRUE)) %>%
  arrange(average)

