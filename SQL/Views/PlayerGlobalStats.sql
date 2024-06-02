CREATE VIEW PlayerGlobalStats AS
SELECT 
    p.CC_Number,
    p.Nome AS Name,
    p.Age,
    pl.Nickname,
    pl.Team_ID,
    SUM(ps.Kills) AS TotalKills,
    SUM(ps.Deaths) AS TotalDeaths,
    SUM(ps.Assists) AS TotalAssists,
    AVG(ps.AVS) AS AverageAVS,
    AVG(ps.Rating) AS AverageRating,
    SUM(ps.First_kills) AS TotalFirstKills
FROM 
    VALO_PERSON p
JOIN 
    VALO_PLAYER pl ON p.CC_Number = pl.PERSON_CC_Number
JOIN 
    VALO_PLAYERSTATS ps ON pl.PERSON_CC_Number = ps.PLAYER_CC_Number
GROUP BY 
    p.CC_Number, p.Nome, p.Age, pl.Nickname, pl.Team_ID;

