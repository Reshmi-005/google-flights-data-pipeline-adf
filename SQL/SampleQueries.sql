-- =============================================
-- Sample Queries
-- =============================================

-- View all flight records
SELECT *
FROM FlightSearchResults;

------------------------------------------------

-- Count total flights
SELECT COUNT(*) AS TotalFlights
FROM FlightSearchResults;

------------------------------------------------

-- Top 10 flight records
SELECT TOP 10 *
FROM FlightSearchResults;

------------------------------------------------

-- Flights ordered by duration
SELECT *
FROM FlightSearchResults
ORDER BY Duration ASC;

------------------------------------------------

-- Flights ordered by price
SELECT *
FROM FlightSearchResults
ORDER BY Price ASC;

------------------------------------------------

-- Flights by airline
SELECT Airline,
       COUNT(*) AS TotalFlights
FROM FlightSearchResults
GROUP BY Airline
ORDER BY TotalFlights DESC;

------------------------------------------------

-- Average flight duration
SELECT AVG(Duration) AS AverageDuration
FROM FlightSearchResults;

------------------------------------------------

-- Flights searched today
SELECT *
FROM FlightSearchResults
WHERE CAST(SearchDate AS DATE) = CAST(GETDATE() AS DATE);

------------------------------------------------

-- Flights with lowest price
SELECT TOP 5 *
FROM FlightSearchResults
ORDER BY Price ASC;

------------------------------------------------

-- Flights with highest price
SELECT TOP 5 *
FROM FlightSearchResults
ORDER BY Price DESC;

------------------------------------------------

-- Flights by travel class
SELECT TravelClass,
       COUNT(*) AS TotalFlights
FROM FlightSearchResults
GROUP BY TravelClass;

------------------------------------------------

-- Search by airline
SELECT *
FROM FlightSearchResults
WHERE Airline = 'IndiGo';

------------------------------------------------

-- Search flights from a specific airport
SELECT *
FROM FlightSearchResults
WHERE DepartureAirport LIKE '%Dubai%';

------------------------------------------------

-- Search flights arriving at Cochin
SELECT *
FROM FlightSearchResults
WHERE ArrivalAirport LIKE '%Cochin%';

------------------------------------------------

-- Total flights per search date
SELECT CAST(SearchDate AS DATE) AS SearchDay,
       COUNT(*) AS Flights
FROM FlightSearchResults
GROUP BY CAST(SearchDate AS DATE)
ORDER BY SearchDay DESC;
