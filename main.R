data <- read.csv("/Users/cheetah/Sites/IS5101-A4/store_sales_small.csv", sep = ",")

print(head(data))

# How many
x = length( unique( data$Store) )

# some simple graphs
# plot(data$DayOfWeek, data$Sales, main = "DayOfWeek & Sales")
# plot(data$StateHoliday, data$Sales, main = "StateHoliday & Sales")
# plot(data$SchoolHoliday, data$Sales, main = "SchoolHoliday & Sales")
# plot(data$Date, data$Sales, main = "Date & Sales")

# Calculate some correlations
x = cor.test(data$CompetitionDistance, data$Sales)

# Investigate the effect of
# t.test( subset(data, Survived == 1)$Age, subset(data, Survived == 0)$Age )

print(x)