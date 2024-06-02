CREATE PROCEDURE FilterTeamsByName
    @TeamName VARCHAR(50)
AS
BEGIN
    SELECT 
        Team_ID,
        [Nome],
        Foundation_Date
    FROM 
        VALO_TEAM
    WHERE 
        @TeamName IS NULL OR @TeamName = '' OR [Nome] LIKE '%' + @TeamName + '%';
END;
