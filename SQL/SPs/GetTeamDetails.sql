CREATE PROCEDURE GetTeamDetails
    @TeamID INT
AS
BEGIN
    SELECT 
        Team_ID,
        Nome
    FROM 
        VALO_TEAM
    WHERE 
        Team_ID = @TeamID;

    SELECT 
        p.CC_Number AS PlayerID,
        pl.Nickname
    FROM 
        VALO_PLAYER pl
    JOIN 
        VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number
    WHERE 
        pl.Team_ID = @TeamID;
END;
