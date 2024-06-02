CREATE VIEW ListTeamsView AS
SELECT 
    t.Team_ID, t.Nome, t.Foundation_Date, 
    (SELECT COUNT(*) FROM VALO_PLAYER p WHERE p.Team_ID = t.Team_ID) AS PlayerCount,
    (SELECT COUNT(*) FROM VALO_COACH c WHERE c.Team_ID = t.Team_ID) AS CoachCount
FROM VALO_TEAM t;
