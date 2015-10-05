require(gdata)

initdata <- read.xls("ProjectData.xlsx",perl="C:/Perl64/bin/perl.exe", stringsAsFactors= FALSE)
initdata$damageRate <- initdata$Cases.Damaged/initdata$Cases.Shipped

summary(initdata$Case.Weight)
summary(initdata$damageRate)

hist(initdata$Case.Weight)
plot(initdata$Case.Weight, initdata$damageRate)