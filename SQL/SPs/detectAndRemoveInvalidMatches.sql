CREATE PROCEDURE detectAndRemoveInvalidMatches
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @match_id INT;
    DECLARE @team1_wins INT;
    DECLARE @team2_wins INT;
    DECLARE @total_games INT;

    DECLARE invalid_match_cursor CURSOR FOR
    SELECT Match_ID
    FROM VALO_MATCH;

    OPEN invalid_match_cursor;
    FETCH NEXT FROM invalid_match_cursor INTO @match_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Calculate the number of wins for each team and the total number of games
        SELECT 
            @team1_wins = SUM(CASE WHEN Rounds_Won_Team_1 > Rounds_Won_Team_2 THEN 1 ELSE 0 END),
            @team2_wins = SUM(CASE WHEN Rounds_Won_Team_1 < Rounds_Won_Team_2 THEN 1 ELSE 0 END),
            @total_games = COUNT(*)
        FROM VALO_GAME
        WHERE MATCH_Match_ID = @match_id;

        -- Check for invalid scenarios
        IF @total_games > 3 OR
           @team1_wins > 2 OR
           @team2_wins > 2 OR
           (@total_games = 3 AND @team1_wins < 2 AND @team2_wins < 2) OR
           (@total_games = 2 AND @team1_wins = 1 AND @team2_wins = 1)
        BEGIN
            -- Delete related records from VALO_PLAYERSTATS
            DELETE FROM VALO_PLAYERSTATS
            WHERE GAME_Match_ID = @match_id;

            -- Delete related records from VALO_GAME
            DELETE FROM VALO_GAME
            WHERE MATCH_Match_ID = @match_id;

            -- Delete the match record
            DELETE FROM VALO_MATCH
            WHERE Match_ID = @match_id;

            -- Output the match_id for logging purposes
            PRINT 'Game with match id ' + CAST(@match_id AS VARCHAR) + ' removed because of invalid score.';
        END

        FETCH NEXT FROM invalid_match_cursor INTO @match_id;
    END

    CLOSE invalid_match_cursor;
    DEALLOCATE invalid_match_cursor;
END;
