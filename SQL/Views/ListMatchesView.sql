CREATE VIEW ListMatchesView AS
SELECT 
    m.Match_ID,
    t1.Nome AS Team1_Name,
    t2.Nome AS Team2_Name
FROM 
    VALO_MATCH m
JOIN 
    VALO_TEAM t1 ON m.Team_1_ID = t1.Team_ID
JOIN 
    VALO_TEAM t2 ON m.Team_2_ID = t2.Team_ID;
