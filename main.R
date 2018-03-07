data <- read.csv("/Users/cheetah/Sites/IS5101-A4/store_sales_small.csv", sep = ",")

print(head(data))

# How many
x = length(unique(data$Assortment))

# plot(data$DayOfWeek, data$Sales, main = "DayOfWeek & Sales")

# plot(data$StateHoliday, data$Sales, main = "StateHoliday & Sales")

# Were sales affected by the closure of public schools?
# plot(data$SchoolHoliday, data$Sales, main = "SchoolHoliday & Sales")
# print(t.test(subset(data, SchoolHoliday == 1)$Sales, subset(data, SchoolHoliday == 0)$Sales))

# plot(data$Assortment, data$Sales, main = "Assortment & Sales")

# print(cor.test(data$CompetitionDistance, data$Sales))

# Were sales affected by running promotions?
plot(data$Promo, data$Sales, main = "Promo & Sales")
print(t.test(subset(data, Promo == 1)$Sales, subset(data, Promo == 0)$Sales))

# Were sales affected by running consecutive promotions?
plot(data$Promo2, data$Sales, main = "Promo2 & Sales")
print(t.test(subset(data, Promo2 == 1)$Sales, subset(data, Promo2 == 0)$Sales))