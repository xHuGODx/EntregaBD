CREATE VIEW PlayerRoles AS
SELECT 
    pl.PERSON_CC_Number,
    h.ROLE_Role_Name
FROM 
    VALO_PLAYER pl
JOIN 
    VALO_HAS h ON pl.PERSON_CC_Number = h.PLAYER_CC_Number;