CREATE VIEW ListGamesView AS
SELECT 
    g.MATCH_Match_ID,
    g.Game_ID,
    t1.Nome AS Team1_Name,
    t2.Nome AS Team2_Name,
    g.Rounds_Won_Team_1,
    g.Rounds_Won_Team_2
FROM 
    VALO_GAME g
JOIN 
    VALO_MATCH m ON g.MATCH_Match_ID = m.Match_ID
JOIN 
    VALO_TEAM t1 ON m.Team_1_ID = t1.Team_ID
JOIN 
    VALO_TEAM t2 ON m.Team_2_ID = t2.Team_ID;
