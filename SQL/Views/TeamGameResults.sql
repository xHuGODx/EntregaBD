CREATE VIEW TeamGameResults AS
SELECT 
    m.Match_ID,
    t.Team_ID,
    SUM(CASE WHEN (g.Rounds_Won_Team_1 > g.Rounds_Won_Team_2 AND m.Team_1_ID = t.Team_ID) OR
                 (g.Rounds_Won_Team_2 > g.Rounds_Won_Team_1 AND m.Team_2_ID = t.Team_ID) THEN 1 
             ELSE 0 END) AS GamesWon,
    SUM(CASE WHEN (g.Rounds_Won_Team_1 < g.Rounds_Won_Team_2 AND m.Team_1_ID = t.Team_ID) OR
                 (g.Rounds_Won_Team_2 < g.Rounds_Won_Team_1 AND m.Team_2_ID = t.Team_ID) THEN 1 
             ELSE 0 END) AS GamesLost
FROM 
    VALO_TEAM t
LEFT JOIN 
    VALO_MATCH m ON t.Team_ID = m.Team_1_ID OR t.Team_ID = m.Team_2_ID
LEFT JOIN 
    VALO_GAME g ON m.Match_ID = g.MATCH_Match_ID
GROUP BY 
    m.Match_ID, t.Team_ID;
