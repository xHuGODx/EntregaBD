CREATE PROCEDURE FilterPlayersByName
    @PlayerName VARCHAR(50)
AS
BEGIN
    SELECT 
        p.CC_Number AS PlayerID,
        p.Nome AS PlayerName,
        pl.Nickname,
        pl.Team_ID
    FROM 
        VALO_PLAYER pl
    JOIN 
        VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number
    WHERE 
        @PlayerName IS NULL OR @PlayerName = '' OR p.Nome LIKE '%' + @PlayerName + '%';
END;
