CREATE PROCEDURE SearchCoachByName
    @CoachName VARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        c.PERSON_CC_Number AS CoachID,
        p.Nome AS CoachName,
        p.Age,
        c.Team_ID
    FROM 
        VALO_COACH c
    JOIN 
        VALO_PERSON p ON c.PERSON_CC_Number = p.CC_Number
    WHERE 
        @CoachName IS NULL OR @CoachName = '' OR p.Nome LIKE '%' + @CoachName + '%';
END;
