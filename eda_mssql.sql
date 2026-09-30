USE BGMI_Esports_Analytics;
GO
SELECT * FROM dbo.Tournaments ORDER BY Year, StartDate;
SELECT Year, SUM(PrizePoolUSD) AS TotalPrizePoolUSD FROM dbo.Tournaments GROUP BY Year ORDER BY Year;
SELECT Winner, COUNT(*) AS Championships FROM dbo.Tournaments WHERE Winner IS NOT NULL GROUP BY Winner ORDER BY Championships DESC;
SELECT Team, AVG(TotalPoints) AS AvgTotalPoints, SUM(Eliminations) AS TotalEliminations,
       COUNT(*) AS TournamentAppearances FROM dbo.TeamTournamentStats GROUP BY Team ORDER BY AvgTotalPoints DESC;
SELECT Player, SUM(Finishes) AS TotalFinishes, SUM(Damage) AS TotalDamage,
       SUM(Knocks) AS TotalKnocks FROM dbo.PlayerTournamentStats GROUP BY Player ORDER BY TotalFinishes DESC;
GO