airquality <- datasets::airquality

##top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)

######columns
airquality[50:60,c(1,2)]

df<-airquality[,-6]

#Descriptive Statastics
#1
summary(airquality[,c(4,5)])

airquality$Temp
airquality$Wind
airquality$Ozone



#######summary of the data#########


summary(airquality)
summary(airquality$wind)

#########################
#visualization
plot(airquality$Wind)

plot(airquality$Temp,airquality$Ozone,type="p")

plot(airquality)

#points and lines
plot(airquality$Wind,  type= "l") # p: point l: lines,b: both

plot(airquality$Wind, xlab = 'Ozone Concentration',
     ylab = 'No of Instances',main = 'Ozone levels in NY city',
     col = 'blue',type='l')


# Horizontal bar plot
barplot(airquality$Ozone,main = 'Ozone Concentration in air',
        ylab = 'ozone level',col = 'blue',horiz = F,axes = T)

#Histogram
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation values in air',
     xlab = 'soalr rad.', col = 'blue')

#Single box plot
boxplot(airquality$Wind,main="Boxplot")
boxplot.stats(airquality$Wind)$out


#Multiple box plots
boxplot(airquality[,1:4],main='Multiple')

par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty='o')
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
plot(airquality$Ozone, type= "l")
barplot(airquality$Ozone, main = 'ozone Concentration in  air',
        xlab ='ozone levels', col='green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main='Multiple Box plots')