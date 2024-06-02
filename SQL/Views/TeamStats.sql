CREATE VIEW TeamStats AS
WITH RoundsStats AS (
    SELECT 
        t.Team_ID,
        SUM(CASE WHEN m.Team_1_ID = t.Team_ID THEN g.Rounds_Won_Team_1
                 WHEN m.Team_2_ID = t.Team_ID THEN g.Rounds_Won_Team_2
                 ELSE 0 END) AS RoundsWon,
        SUM(CASE WHEN m.Team_1_ID = t.Team_ID THEN g.Rounds_Won_Team_2
                 WHEN m.Team_2_ID = t.Team_ID THEN g.Rounds_Won_Team_1
                 ELSE 0 END) AS RoundsLost
    FROM 
        VALO_TEAM t
    LEFT JOIN 
        VALO_MATCH m ON t.Team_ID = m.Team_1_ID OR t.Team_ID = m.Team_2_ID
    LEFT JOIN 
        VALO_GAME g ON m.Match_ID = g.MATCH_Match_ID
    GROUP BY 
        t.Team_ID
),
GamesStats AS (
    SELECT 
        t.Team_ID,
        SUM(CASE WHEN (g.Rounds_Won_Team_1 > g.Rounds_Won_Team_2 AND m.Team_1_ID = t.Team_ID) OR
                     (g.Rounds_Won_Team_2 > g.Rounds_Won_Team_1 AND m.Team_2_ID = t.Team_ID) THEN 1 
                 ELSE 0 END) AS GamesWon,
        SUM(CASE WHEN (g.Rounds_Won_Team_1 < g.Rounds_Won_Team_2 AND m.Team_1_ID = t.Team_ID) OR
                     (g.Rounds_Won_Team_2 < g.Rounds_Won_Team_1 AND m.Team_2_ID = t.Team_ID) THEN 1 
                 ELSE 0 END) AS GamesLost
    FROM 
        VALO_TEAM t
    LEFT JOIN 
        VALO_MATCH m ON t.Team_ID = m.Team_1_ID OR t.Team_ID = m.Team_2_ID
    LEFT JOIN 
        VALO_GAME g ON m.Match_ID = g.MATCH_Match_ID
    GROUP BY 
        t.Team_ID
),
MatchGames AS (
    SELECT
        m.Match_ID,
        t.Team_ID,
        SUM(CASE WHEN (g.Rounds_Won_Team_1 > g.Rounds_Won_Team_2 AND m.Team_1_ID = t.Team_ID) OR 
                     (g.Rounds_Won_Team_2 > g.Rounds_Won_Team_1 AND m.Team_2_ID = t.Team_ID) THEN 1 
                 ELSE 0 END) AS GamesWon,
        SUM(CASE WHEN (g.Rounds_Won_Team_1 < g.Rounds_Won_Team_2 AND m.Team_1_ID = t.Team_ID) OR 
                     (g.Rounds_Won_Team_2 < g.Rounds_Won_Team_1 AND m.Team_2_ID = t.Team_ID) THEN 1 
                 ELSE 0 END) AS GamesLost
    FROM
        VALO_TEAM t
    LEFT JOIN
        VALO_MATCH m ON t.Team_ID = m.Team_1_ID OR t.Team_ID = m.Team_2_ID
    LEFT JOIN
        VALO_GAME g ON m.Match_ID = g.MATCH_Match_ID
    GROUP BY
        m.Match_ID, t.Team_ID
),
MatchesStats AS (
    SELECT 
        t.Team_ID,
        SUM(CASE WHEN (mg.Team_ID = t.Team_ID AND mg.GamesWon > mg.GamesLost) THEN 1 ELSE 0 END) AS MatchesWon,
        SUM(CASE WHEN (mg.Team_ID = t.Team_ID AND mg.GamesWon < mg.GamesLost) THEN 1 ELSE 0 END) AS MatchesLost
    FROM 
        VALO_TEAM t
    LEFT JOIN 
        MatchGames mg ON t.Team_ID = mg.Team_ID
    GROUP BY 
        t.Team_ID
)
SELECT 
    t.Team_ID,
    t.[Nome] AS TeamName,
    t.Foundation_Date,
    p.[Nome] AS CoachName,
    c.PERSON_CC_Number AS CoachID,
    ISNULL(gs.GamesWon, 0) AS GamesWon,
    ISNULL(gs.GamesLost, 0) AS GamesLost,
    ISNULL(rs.RoundsWon, 0) AS RoundsWon,
    ISNULL(rs.RoundsLost, 0) AS RoundsLost,
    ISNULL(ms.MatchesWon, 0) AS MatchesWon,
    ISNULL(ms.MatchesLost, 0) AS MatchesLost
FROM 
    VALO_TEAM t
LEFT JOIN 
    VALO_COACH c ON t.Team_ID = c.Team_ID
LEFT JOIN 
    VALO_PERSON p ON c.PERSON_CC_Number = p.CC_Number
LEFT JOIN 
    RoundsStats rs ON t.Team_ID = rs.Team_ID
LEFT JOIN 
    GamesStats gs ON t.Team_ID = gs.Team_ID
LEFT JOIN 
    MatchesStats ms ON t.Team_ID = ms.Team_ID
GROUP BY 
    t.Team_ID, t.[Nome], t.Foundation_Date, p.[Nome], c.PERSON_CC_Number, rs.RoundsWon, rs.RoundsLost, gs.GamesWon, gs.GamesLost, ms.MatchesWon, ms.MatchesLost;
