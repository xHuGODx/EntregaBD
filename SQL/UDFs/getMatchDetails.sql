CREATE FUNCTION dbo.getmatchdetails (@MatchID INT)
RETURNS TABLE
AS
RETURN
(
    SELECT
        m.Match_ID,
        m.Team_1_ID,
        t1.Nome AS Team_1_Name,
        m.Team_2_ID,
        t2.Nome AS Team_2_Name,
        g.Game_ID,
        g.Map,
        g.Rounds_Won_Team_1,
        g.Rounds_Won_Team_2,
        ps.PLAYER_CC_Number,
        p.Nome AS Player_Name,
        ps.Kills,
        ps.Deaths,
        ps.Assists,
        ps.AVS,
        ps.Rating,
        ps.First_kills,
        ps.AGENT_Agent_Name,
        a.ROLE_Role_Name
    FROM
        VALO_MATCH m
    JOIN
        VALO_TEAM t1 ON m.Team_1_ID = t1.Team_ID
    JOIN
        VALO_TEAM t2 ON m.Team_2_ID = t2.Team_ID
    JOIN
        VALO_GAME g ON m.Match_ID = g.MATCH_Match_ID
    JOIN
        VALO_PLAYERSTATS ps ON g.Game_ID = ps.GAME_Game_ID AND g.MATCH_Match_ID = ps.GAME_Match_ID
    JOIN
        VALO_PLAYER pl ON ps.PLAYER_CC_Number = pl.PERSON_CC_Number
    JOIN
        VALO_PERSON p ON pl.PERSON_CC_Number = p.CC_Number
    JOIN
        VALO_AGENT a ON ps.AGENT_Agent_Name = a.Agent_Name
    WHERE
        m.Match_ID = @MatchID
);
