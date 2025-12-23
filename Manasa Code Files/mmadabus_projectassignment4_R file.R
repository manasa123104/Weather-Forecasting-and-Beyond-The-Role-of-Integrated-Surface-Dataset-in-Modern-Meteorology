# Importing Packages
library(tidyverse)
library(ggpubr)
library(dplyr)
library(ggplot2)
theme_set(theme_pubr())


if (!require("ggpubr")) install.packages("ggpubr")
if (!require("datarium")) install.packages("datarium")

# Read the CSV file 
weather_data <- read_csv("D:/Lenovo Manasa Data/Data Analytics 1st Sem/Manasa AIT 580/Final Project AIT/Integrate Surface Data.csv")

# Renaming columns for better readability
weather_data <- weather_data %>%
  rename(
    Station_ID = STATION,
    Date = DATE,
    Source = SOURCE,
    Latitude = LATITUDE,
    Longitude = LONGITUDE,
    Elevation = ELEVATION,
    Location_Name = NAME,
    Report_Type = REPORT_TYPE
  )

# Display the first few rows to check the renaming
print(head(weather_data))
print(colnames(weather_data))
str(weather_data)

# Summary of a specific field, e.g., Elevation
print("Summary of Elevation:")
summary(weather_data$Elevation)

# Counting the occurrences of each report type
report_type_counts <- table(weather_data$Report_Type)


# Created a stacked bar plot for 'SOURCE' with stacks divided by 'REPORT_TYPE'
ggplot(weather_data, aes(x = Source, fill = Report_Type)) +
  geom_bar(position = "stack") +
  labs(title = "Source Distribution by Report Type",
       x = "Source",
       y = "Count",
       fill = "Report Type") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# Assuming TMP needs to be converted from character to numeric
weather_data$TMP <- as.numeric(gsub(",.*", "", weather_data$TMP))
weather_data <- weather_data %>% filter(TMP < 9999)  # Remove placeholder values if necessary

# Fit the linear regression model
model <- lm(TMP ~ Elevation, data = weather_data)

# Check the summary of the model
print(summary(model))

# Plot the regression model
ggplot(weather_data, aes(x = Elevation, y = TMP)) +
  geom_point() +
  geom_smooth(method = "lm", color = "blue") +
  labs(title = "Relationship between Elevation and TMP",
       x = "Elevation (meters)", y = "Temperature (Celsius)") +
  theme_minimal()
# Using ggplot2 to plot the data with a map background
world_map <- map_data("world")
ggplot() +
  geom_polygon(data = world_map, aes(x = long, y = lat, group = group), fill = "gray80", color = "white") +
  geom_point(data = weather_data, aes(x = Longitude, y = Latitude), color = "red", size = 1) +
  labs(title = "Location of Weather Stations", x = "Longitude", y = "Latitude") +
  theme_minimal()

