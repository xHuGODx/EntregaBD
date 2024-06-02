CREATE VIEW PlayerBasicInfo AS
SELECT 
    p.CC_Number,
    p.Nome AS Name,
    p.Age,
    pl.Nickname,
    pl.Team_ID
FROM 
    VALO_PERSON p
JOIN 
    VALO_PLAYER pl ON p.CC_Number = pl.PERSON_CC_Number;
