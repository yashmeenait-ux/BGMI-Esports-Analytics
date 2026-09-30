CREATE DATABASE BGMI_Esports_Analytics;
GO
USE BGMI_Esports_Analytics;
GO
CREATE TABLE dbo.Tournaments (
 TournamentID INT IDENTITY(1,1) PRIMARY KEY, Series NVARCHAR(20), Year INT,
 Tournament NVARCHAR(150), StartDate DATE, EndDate DATE, Location NVARCHAR(100),
 PrizePoolUSD DECIMAL(18,2), Winner NVARCHAR(100), RunnerUp NVARCHAR(100), Teams INT
);
CREATE TABLE dbo.TeamTournamentStats (
 Tournament NVARCHAR(150), Team NVARCHAR(100), TotalPoints INT, Matches INT,
 Eliminations INT, PlacementPoints INT, AvgElims DECIMAL(10,2),
 AvgPlacement DECIMAL(10,2), AvgPlacementPoints DECIMAL(10,2), AvgTotalPoints DECIMAL(10,2)
);
CREATE TABLE dbo.PlayerTournamentStats (
 Tournament NVARCHAR(150), Player NVARCHAR(100), Team NVARCHAR(100),
 Rating DECIMAL(10,2), Points INT, Finishes INT, Damage INT,
 AvgSurvivalTime NVARCHAR(20), Knocks INT, Award NVARCHAR(50)
);
GO