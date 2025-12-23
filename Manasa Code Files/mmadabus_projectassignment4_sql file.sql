create schema ManasaRAITFinalProject;

SELECT * FROM `manasaraitfinalproject`.`integrated surface dataset`;

#Finding Sum of Elevation for Report Type
SELECT Elevation, Report_Type, SUM(ELEVATION) AS Record_Sum
FROM `manasaraitfinalproject`.`integrated surface dataset`
GROUP BY Elevation, Report_Type;

#Finding Sum of Longitude for Call Sign 
SELECT CALL_SIGN, SUM(LATITUDE)
FROM `manasaraitfinalproject`.`integrated surface dataset`           
GROUP BY CALL_SIGN,LATITUDE;

# Finding Elevation where start 2003-01-01T00:00:00 and print only five rows
SELECT SUM(Elevation) 
FROM `manasaraitfinalproject`.`integrated surface dataset` 
WHERE DATE = '2003-01-01T00:00:00' 
GROUP BY DATE
LIMIT 5;

#Counting the No. of STATIONS in regions for each CALL_SIGN
SELECT COUNT(STATION) AS CallSign, STATION 
FROM `manasaraitfinalproject`.`integrated surface dataset` 
GROUP BY STATION 
LIMIT 5000;


#Finding Average Longitude Grouping by Report Type
SELECT REPORT_TYPE, AVG(LONGITUDE)
FROM `manasaraitfinalproject`.`integrated surface dataset` 
GROUP BY REPORT_TYPE;




