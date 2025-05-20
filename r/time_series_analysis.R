library(ggplot2)
library(dplyr)
library(readr)
library(lubridate)

# Load data
data <- read_csv("Incidents_Logs.csv")
data$Date <- as.Date(data$Date)

# Group and plot
daily_incidents <- data %>%
  group_by(Date) %>%
  summarise(Count = n())

ggplot(daily_incidents, aes(x = Date, y = Count)) +
  geom_line(color = "steelblue") +
  labs(title = "Daily Incident Volume",
       x = "Date", y = "Number of Incidents") +
  theme_minimal()
