View(mtcars)
dist_mtcars<-dist(mtcars)

hih_clus<-hclust(dist_mtcars)
summary(hih_clus)##summary iss of no use
plot(hih_clus)
dist_mtcars[c(1,2),c(1:6)]
library(cluster)
library(dbscan)
View(ruspini)
rus_scale<-scale(ruspini)####scale them as x and y may not be on same scale 
plot(rus_scale)

db_model<-dbscan(rus_scale,eps = .25,minPts = 3)
db_model
plot(rus_scale,col=db_model$cluster)##not getting noise point
plot(rus_scale,col=db_model$cluster+1L)##getting noice point
hullplot(rus_scale,db_model)###this is better


View(Ctg)
Ctg1<-Ctg[,c(1,2,3)]
View(Ctg1)
rus_scale1<-scale(Ctg1)
db_model1<-dbscan(rus_scale1,eps=3,minPts = 12)
db_model1
plot(rus_scale1,col=db_model1$cluster)
hullplot(rus_scale1,db_model1)#

