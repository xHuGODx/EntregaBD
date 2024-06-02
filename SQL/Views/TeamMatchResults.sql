CREATE VIEW TeamMatchResults AS
SELECT 
    Team_ID,
    SUM(CASE WHEN GamesWon >= 2 THEN 1 ELSE 0 END) AS MatchesWon,
    SUM(CASE WHEN GamesLost >= 2 THEN 1 ELSE 0 END) AS MatchesLost
FROM 
    TeamGameResults
GROUP BY 
    Team_ID;
