CREATE VIEW TeamPlayers AS
SELECT 
    p.CC_Number AS PlayerID,  -- Correct column name for person ID
    pl.[Nickname],
    pl.Team_ID
FROM 
    VALO_PLAYER pl
JOIN 
    VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number;
