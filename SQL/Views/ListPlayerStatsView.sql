CREATE VIEW ListPlayerStatsView AS
SELECT 
    ps.PLAYER_CC_Number AS Player_ID,
    p.Nome AS Player_Name,
    t.Nome AS Team_Name,
    ps.Kills,
    ps.Deaths,
    ps.Assists,
    ps.AVS,
    ps.Rating,
    ps.First_kills,
    ps.AGENT_Agent_Name,
    g.MATCH_Match_ID,
    g.Game_ID,
    g.Rounds_Won_Team_1,
    g.Rounds_Won_Team_2,
    t1.Nome AS Team1_Name,
    t2.Nome AS Team2_Name
FROM 
    VALO_PLAYERSTATS ps
JOIN 
    VALO_PLAYER pl ON ps.PLAYER_CC_Number = pl.PERSON_CC_Number
JOIN 
    VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number
JOIN 
    VALO_TEAM t ON pl.Team_ID = t.Team_ID
JOIN 
    VALO_GAME g ON ps.GAME_Game_ID = g.Game_ID AND ps.GAME_Match_ID = g.MATCH_Match_ID
JOIN 
    VALO_MATCH m ON g.MATCH_Match_ID = m.Match_ID
JOIN 
    VALO_TEAM t1 ON m.Team_1_ID = t1.Team_ID
JOIN 
    VALO_TEAM t2 ON m.Team_2_ID = t2.Team_ID;
