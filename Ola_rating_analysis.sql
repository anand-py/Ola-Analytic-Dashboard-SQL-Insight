USE ola;
SELECT * FROM bookings;


SELECT 
  Vehicle_Type, 
  ROUND(AVG(Driver_Ratings), 2) AS Avg_rating_Driver_By_VehicleType
FROM bookings
WHERE Vehicle_Type IN (
  'Prime Sedan', 'Prime SUV', 'Prime Plus', 
  'Mini', 'Auto', 'Bike', 'E-Bike'
)
GROUP BY Vehicle_Type;


SELECT 
  Vehicle_Type, 
  ROUND(AVG(Customer_Rating), 2) AS Avg_rating_Customer_By_VehicleType
FROM bookings
WHERE Vehicle_Type IN (
  'Prime Sedan', 'Prime SUV', 'Prime Plus', 
  'Mini', 'Auto', 'Bike', 'E-Bike'
)
GROUP BY Vehicle_Type;



