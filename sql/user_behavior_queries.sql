CREATE DATABASE user_behavior_db;
USE user_behavior_db;
CREATE TABLE user_behavior (
    User_ID INT,
    Device_Model VARCHAR(50),
    Operating_System VARCHAR(20),
    App_Usage_Time INT,
    Screen_On_Time FLOAT,
    Battery_Drain INT,
    Number_of_Apps_Installed INT,
    Data_Usage FLOAT,
    Age INT,
    Gender VARCHAR(10),
    User_Behavior_Class INT,
    Engagement_Score FLOAT,
    User_Type VARCHAR(10)
);


##Gender Distribution
SELECT Gender, COUNT(*) AS total_users
FROM user_behavior
GROUP BY Gender;

##Average Screen Time
SELECT AVG(Screen_On_Time) AS avg_screen_time
FROM user_behavior;

##Users by Type
SELECT User_Type, COUNT(*) AS total_users
FROM user_behavior
GROUP BY User_Type;

##High Usage Users
SELECT *
FROM user_behavior
WHERE Screen_On_Time > 6;

##Avg Data Usage by OS
SELECT Operating_System, AVG(Data_Usage) AS avg_data
FROM user_behavior
GROUP BY Operating_System;

##Avg Engagement by User Type
SELECT User_Type, AVG(Engagement_Score) AS avg_engagement
FROM user_behavior
GROUP BY User_Type;

##Average Battery Drain
SELECT AVG(Battery_Drain) AS avg_battery_drain
FROM user_behavior;

##Screen Time by Operating System
SELECT Operating_System, AVG(Screen_On_Time) AS avg_screen_time
FROM user_behavior
GROUP BY Operating_System;

##Top Devices by Battery Drain
SELECT Device_Model, AVG(Battery_Drain) AS avg_battery
FROM user_behavior
GROUP BY Device_Model
ORDER BY avg_battery DESC
LIMIT 5;

##Average Engagement Score
SELECT AVG(Engagement_Score) AS avg_engagement
FROM user_behavior;

