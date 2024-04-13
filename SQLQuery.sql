-- Load airline passenger satisfaction dataset
SELECT *
FROM airline_passenger_satisfaction;

-- How many dataset rows
SELECT COUNT(*) AS total_rows 
FROM airline_passenger_satisfaction;

-- How many total passengers of each gender
SELECT Gender,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
GROUP BY Gender
ORDER BY total_passenger DESC;

-- How many total passengers of each customer type
SELECT Customer_Type,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
GROUP BY Customer_Type
ORDER BY total_passenger DESC;

-- How many total passengers of each type of travel
SELECT Type_of_Travel,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
GROUP BY Type_of_Travel
ORDER BY total_passenger DESC;

-- How many total passengers of each class
SELECT Class,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
GROUP BY Class
ORDER BY total_passenger DESC;

-- How many total passengers of each satisfaction level
SELECT Satisfaction,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
GROUP BY Satisfaction
ORDER BY total_passenger DESC;

-- How many total passengers and average flight distance where the age is less than 20
SELECT Class,
       Customer_Type,
       Type_of_Travel,
       Gender,
       Satisfaction,
       ROUND(AVG(Flight_Distance), 2) AS avg_flight_distance,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
WHERE Age < 20
GROUP BY Class,
         Customer_Type,
         Type_of_Travel,
         Gender,
         Satisfaction
ORDER BY total_passenger DESC;

-- How many total passenger and average flight distance where the age between 20 until 30 
SELECT 
    Class,
    [Customer_Type] AS CustomerType,
    [Type_of_Travel] AS TravelType,
    Gender,
    Satisfaction,
    ROUND(AVG([Flight_Distance]), 2) AS AvgFlightDistance,
    COUNT(ID) AS TotalPassengers
FROM airline_passenger_satisfaction
WHERE 
    Age BETWEEN 20 AND 30
GROUP BY 
    Class,
    [Customer_Type],
    [Type_of_Travel],
    Gender,
    Satisfaction
ORDER BY 
    TotalPassengers DESC;

-- How many total passenger and average flight distance where the age greater than 30
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   ROUND(AVG([Flight_Distance]), 2) AS avg_flight_distance,
	   COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
WHERE Age > 30
GROUP BY Class,
	     [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY total_passenger DESC;

--How many total passenger and average departure delay minutes delay where the age less than 20 
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Departure_Delay]), 2) AS avg_departure_delay_minutes
FROM airline_passenger_satisfaction
WHERE Age < 20
GROUP BY Class,
		 [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_departure_delay_minutes DESC;

-- How many total passenger and average departure delay minutes where the age between 20 until 30 
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Departure_Delay]), 2) AS avg_departure_delay_minutes
FROM airline_passenger_satisfaction
WHERE Age BETWEEN 20 AND 30
GROUP BY Class,
		 [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_departure_delay_minutes DESC;

-- How many total passenger and average departure delay minutes where the age greater than 30 
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Departure_Delay]), 2) AS avg_departure_delay_minutes
FROM airline_passenger_satisfaction
WHERE Age > 30
GROUP BY Class,
		 [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_departure_delay_minutes DESC;

-- How many total passenger and average arrival delay minutes where the age less than 20 
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Arrival_Delay]), 2) AS avg_arrival_delay_minutes
FROM airline_passenger_satisfaction
WHERE Age < 20
GROUP BY Class,
		 [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_arrival_delay_minutes DESC;

-- How many total passenger and average arrival delay minutes where the age between 20 until 30 
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Arrival_Delay]), 2) AS avg_arrival_delay_minutes
FROM airline_passenger_satisfaction
WHERE Age BETWEEN 20 AND 30
GROUP BY Class,
		 [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_arrival_delay_minutes DESC;

-- How many total passenger and average arrival delay minutes where the age greater than 30 
SELECT Class,
	   [Customer_Type],
	   [Type_of_Travel],
	   Gender,
	   Satisfaction,
	   COUNT(ID) AS total_passenger,
	   ROUND(AVG([Arrival_Delay]), 2) AS avg_arrival_delay_minutes
FROM airline_passenger_satisfaction
WHERE Age > 30
GROUP BY Class,
		 [Customer_Type],
		 [Type_of_Travel],
		 Gender,
		 Satisfaction
ORDER BY avg_arrival_delay_minutes DESC;

-- How many ease online booking rating and total passenger where customer type is returning 
SELECT Class, 
       Gender, 
       [Type_of_Travel], 
	   Age,
       COUNT(ID) AS total_passenger, 
       ROUND(AVG([Ease_of_Online_Booking]), 2) AS online_booking_rating
FROM airline_passenger_satisfaction
WHERE [Customer_Type] = 'Returning'
GROUP BY Class, 
         Gender, 
         [Type_of_Travel],
		 Age
ORDER BY online_booking_rating DESC;

-- How many ease online booking rating and total passenger where customer type is first time
SELECT Class, 
       Gender, 
       [Type_of_Travel], 
	   Age,
       COUNT(ID) AS total_passenger, 
       ROUND(AVG([Ease_of_Online_Booking]), 2) AS online_booking_rating
FROM airline_passenger_satisfaction
WHERE [Customer_Type] = 'First-time'
GROUP BY Class, 
         Gender, 
         [Type_of_Travel],
		 Age
ORDER BY online_booking_rating DESC;

-- How many total passengers based on class and satisfaction
SELECT Class, 
       Satisfaction,
       COUNT(ID) AS total_passenger
FROM airline_passenger_satisfaction
GROUP BY Class,
         Satisfaction
ORDER BY total_passenger DESC;
