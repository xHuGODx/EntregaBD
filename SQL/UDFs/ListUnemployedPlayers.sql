CREATE FUNCTION dbo.ListUnemployedPlayers()
RETURNS TABLE
AS
RETURN
(
    SELECT 
        p.CC_Number AS PlayerID,
        p.Nome AS PlayerName,
        pl.Nickname
    FROM 
        VALO_PLAYER pl
    JOIN 
        VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number
    WHERE 
        pl.Team_ID IS NULL
);
