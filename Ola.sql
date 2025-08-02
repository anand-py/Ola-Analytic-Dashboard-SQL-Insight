SELECT * FROM ola.bookings;
USE ola;
-- 1. Retrieve all successful bookings:
CREATE VIEW Successful_Bookings AS	
SELECT *
FROM bookings
WHERE Booking_Status = "Success" ;

SELECT * FROM Successful_Bookings;

-- #2. Find the average ride distance for each vehicle type:
CREATE VIEW Avg_Rider_Distance_For_Each_Vehicle AS
SELECT Vehicle_Type, ROUND(AVG(Ride_Distance), 2) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM Avg_Rider_Distance_For_Each_Vehicle;

-- 3. Get the total number of cancelled rides by customers:
CREATE VIEW cancelled_rides_by_customers AS
SELECT COUNT(*) AS Total_Count
FROM bookings
WHERE Booking_Status = 'Canceled by Customer'; 

SELECT * FROM cancelled_rides_by_customers;

-- 4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW booked_the_highest_number_of_rides AS
SELECT Customer_ID , COUNT(Booking_ID) AS Total_Rides
FROM bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 5;

SELECT * FROM booked_the_highest_number_of_rides;


-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW cancelled_by_drivers AS
SELECT COUNT(*) AS Total_Cancel_Ride_By_Driver
FROM bookings
WHERE canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM cancelled_by_drivers;

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

CREATE VIEW Min_Max_Driver_Rating AS
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM bookings WHERE Vehicle_Type = 'Prime Sedan';


SELECT * FROM Min_Max_Driver_Rating;

-- 7. Retrieve all rides where payment was made using UPI:
CREATE VIEW UPI_Payment AS
SELECT *
FROM bookings
WHERE Payment_Method = 'UPI';

SELECT * FROM UPI_Payment;

-- 8. Find the average customer rating per vehicle type:
CREATE VIEW Avg_Customer_Rating_By_Vehicle_Type AS
SELECT Vehicle_Type, ROUND(AVG(Customer_Rating),2) AS Avg_Customer_Rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM Avg_Customer_Rating_By_Vehicle_Type;

-- 9. Calculate the total booking value of rides completed successfully:

CREATE VIEW Total_Successful_Ride AS
SELECT SUM(Booking_Value) AS Total_Successful_Ride_Value
FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Total_Successful_Ride;


-- 10. List all incomplete rides along with the reason:
CREATE VIEW incomplete_rides_along_with_the_reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

SELECT * FROM incomplete_rides_along_with_the_reason;