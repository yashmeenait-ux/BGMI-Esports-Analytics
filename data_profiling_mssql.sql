USE BGMI_Esports_Analytics;
GO
SELECT COUNT(*) AS TournamentRows FROM dbo.Tournaments;
SELECT COUNT(DISTINCT Series) AS SeriesCount, COUNT(DISTINCT Year) AS YearsCovered,
       COUNT(DISTINCT Winner) AS DistinctChampions FROM dbo.Tournaments;
SELECT Series, COUNT(*) AS Events FROM dbo.Tournaments GROUP BY Series ORDER BY Series;
SELECT Year, COUNT(*) AS Events FROM dbo.Tournaments GROUP BY Year ORDER BY Year;
SELECT COUNT(*) AS MissingWinner FROM dbo.Tournaments WHERE Winner IS NULL;
GO