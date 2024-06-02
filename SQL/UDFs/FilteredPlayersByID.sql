CREATE FUNCTION dbo.FilterPlayersByTeamID(@TeamID INT = NULL)
RETURNS TABLE
AS
RETURN
(
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
        @TeamID IS NULL OR pl.Team_ID = @TeamID
);
