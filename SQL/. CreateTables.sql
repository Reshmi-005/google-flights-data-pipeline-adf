-- =============================================
-- Project: Google Flights Data Pipeline
-- Database: Azure SQL Database
-- Table: FlightSearchResults
-- =============================================

CREATE TABLE FlightSearchResults
(
    FlightID INT IDENTITY(1,1) PRIMARY KEY,

    Airline NVARCHAR(100),
    FlightNumber NVARCHAR(50),

    DepartureAirport NVARCHAR(200),
    ArrivalAirport NVARCHAR(200),

    DepartureTime NVARCHAR(20),
    ArrivalTime NVARCHAR(20),

    Duration INT,

    Price DECIMAL(10,2) NULL,

    Currency NVARCHAR(10) NULL,

    Stops INT NULL,

    TravelClass NVARCHAR(50),

    SearchDate DATETIME
);
