data <- read.csv("/cs/home/ni23/IS5101-A4/store_sales_small.csv", sep=",")

print(head(data))

plot(data$DayOfWeek, data$Sales, main="DayOfWeek & Sales")

plot(data$StateHoliday, data$Sales, main="StateHoliday & Sales")

plot(data$SchoolHoliday, data$Sales, main="SchoolHoliday & Sales")

plot(data$Date, data$Sales, main="Date & Sales")

print(cor.test(data$CompetitionDistance, data$Customers))