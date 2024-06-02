CREATE VIEW ListCoachesView AS
SELECT 
    c.PERSON_CC_Number AS CoachID,
    p.Nome AS CoachName,
    p.Age,
    c.Team_ID
FROM 
    VALO_COACH c
JOIN 
    VALO_PERSON p ON c.PERSON_CC_Number = p.CC_Number;
