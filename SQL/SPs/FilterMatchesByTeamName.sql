CREATE PROCEDURE FilterMatchesByTeamName
    @TeamName VARCHAR(50)
AS
BEGIN
    SELECT 
        m.Match_ID,
        t1.Nome AS Team1_Name,
        t2.Nome AS Team2_Name,
        m.Team_1_ID,
        m.Team_2_ID
    FROM 
        VALO_MATCH m
    JOIN 
        VALO_TEAM t1 ON m.Team_1_ID = t1.Team_ID
    JOIN 
        VALO_TEAM t2 ON m.Team_2_ID = t2.Team_ID
    WHERE 
        t1.Nome LIKE '%' + @TeamName + '%' OR t2.Nome LIKE '%' + @TeamName + '%';
END;
