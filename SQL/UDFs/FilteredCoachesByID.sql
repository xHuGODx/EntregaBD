CREATE FUNCTION dbo.FilterCoachesByTeamID(@TeamID INT = NULL)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        c.PERSON_CC_Number AS CoachID,
        p.Nome AS CoachName,
        c.Team_ID
    FROM 
        VALO_COACH c
    JOIN 
        VALO_PERSON p ON c.PERSON_CC_Number = p.CC_Number
    WHERE 
        @TeamID IS NULL OR c.Team_ID = @TeamID
);
