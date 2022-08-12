quakes<-datasets::quakes

##top 10 rows and last 10 rows
head(quakes,10)
tail(quakes,10)

######columns
quakes[50:60,c(1,2)]

df<-quakes[,-3]

#Descriptive Statastics
#1
summary(quakes[,c(3,4)])

quakes$lat
quakes$long
quakes$depth

#######summary of the data#########


summary(quakes)
summary(quakes$lat)

#########################
#visualization
plot(quakes$lat)

plot(quakes$long,quakes$depth,type="p")

plot(quakes)

#points and lines
plot(quakes$stations,type= "l") # p: point l: lines,b: both

plot(quakes$mag, xlab = 'Earthquake Concentration',
     ylab = 'No of Instances',main = 'Earthquake levels in Kolhapur city',
     col = 'blue',type='l')

# Horizontal bar plot
barplot(quakes$depth,main = 'Earthquake Concentration on Land',
        ylab = 'Earthquake level',col = 'blue',horiz = F,axes = T)

#Histogram
hist(quakes$mag)
hist(quakes$mag,
     main = 'Magnitude values on land',
     xlab = 'mag.', col = 'blue')

#Single box plot
boxplot(quakes$lat,main="Boxplot")
boxplot.stats(quakes$lat)$out

#Multiple box plot
boxplot(quakes[,1:4],main='Multiple')

par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty='o')
plot(quakes$lat)
plot(quakes$lat, quakes$long)
plot(quakes$lat, type= "l")
plot(quakes$lat, type= "l")
plot(quakes$lat, type= "l")
barplot(quakes$lat, main = 'earthquake Concentration on land',
        xlab ='earthquake levels', col='green',horiz = TRUE)
hist(quakes$mag)
boxplot(quakes$mag)
boxplot(quakes[,0:4], main='Multiple Box plots')