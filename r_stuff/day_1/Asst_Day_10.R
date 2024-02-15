#Next, include a setwd() to where you want your Script to live
setwd("/cloud/project/R_Day1/")

#Then, read in the CS_Data_Demographics.csv table to R and create Barplot using what we learned above.
# This dataset shows the number Females and Males who have careers in Computer Science and is stratified 
#by ethnicity and race

CS_dem=read.csv("CS_Demographics.csv", row.names = 1, header = TRUE)
CS_dem

#Starting with the base requirements for the barplot() function, make the plot look pretty!
barplot(t(CS_dem), beside=TRUE)

# Checklist
# A. Scale the numbers to fit in the y-axis of the plot -- save to new variable
# B. Change the rownames to fit on the x-axis of the plot
# C. Label the axis 
# D. Give plot a name
# E. Change the colors of the plot for fun
# F. Export barplot as a pdf file to your desktop

CS_dem_short=CS_dem/100000

par(mar = c(5,5,2,2))
new_names=c("His", "AmI", "Asi", "BlA", "NaH", "Whi", "M1R")
rownames(CS_dem_short)<-new_names

names2=c("His = Hispanic_or_Latino", "AmI = American_Indian_or_Alaska_Native", "Asi = Asian", "BlA = Black_or_African_American", "NaH = Native_Hawaiian_or_Other_Pacific_Islander", "Whi = White", "M1R = More_than_one_race")

pdf("CS_dem_short.pdf")
barplot(t(CS_dem_short), beside=TRUE, las=1, cex.axis = 1, cex.names = 1, xlab="Demographics", ylab="Number of Each Demographics (1x10^5", col=c("red", "blue"), ylim=c(0,15), main="Race Demographics of Females/Males in 2017")
legend("topleft", legend=c("Female", "Male"), fill=c("red", "blue"), cex=0.6)
legend("top", legend=names2, col=c(1), cex = 0.5)
dev.off()
