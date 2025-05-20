-- Top 5 recurring categories
SELECT Category, COUNT(*) AS Total_Incidents
FROM Incidents_Logs.incidents_logs
GROUP BY Category
ORDER BY Total_Incidents DESC
LIMIT 5;

-- Average resolution time by system
SELECT Affected_System, AVG(Resolution_Time_Hours) AS Avg_Resolution_Time
FROM Incidents_Logs.incidents_logs
GROUP BY Affected_System;

-- Incidents over time
SELECT Date, COUNT(*) AS Daily_Incidents
FROM Incidents_Logs.incidents_logs
GROUP BY Date
ORDER BY Date;
