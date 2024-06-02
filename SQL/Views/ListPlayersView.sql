CREATE VIEW ListPlayersView AS
SELECT 
    p.Nome AS PlayerName,
    pl.Nickname,
    pl.PERSON_CC_Number AS PlayerID
FROM 
    VALO_PLAYER pl
JOIN 
    VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number;
