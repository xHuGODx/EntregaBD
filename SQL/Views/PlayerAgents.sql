CREATE VIEW PlayerAgents AS
SELECT 
    ps.PLAYER_CC_Number,
    ps.AGENT_Agent_Name,
    COUNT(*) AS GamesPlayed
FROM 
    VALO_PLAYERSTATS ps
GROUP BY 
    ps.PLAYER_CC_Number, ps.AGENT_Agent_Name;
