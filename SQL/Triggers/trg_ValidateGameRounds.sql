CREATE TRIGGER trg_ValidateGameRounds
ON VALO_GAME
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @game_id INT;
    DECLARE @match_id INT;
    DECLARE @rounds_won_team_1 INT;
    DECLARE @rounds_won_team_2 INT;
    DECLARE @error BIT = 0;

    SELECT @game_id = inserted.Game_ID,
           @match_id = inserted.MATCH_Match_ID,
           @rounds_won_team_1 = inserted.Rounds_Won_Team_1,
           @rounds_won_team_2 = inserted.Rounds_Won_Team_2
    FROM inserted;


    IF (@rounds_won_team_1 = 13 AND @rounds_won_team_2 BETWEEN 0 AND 11) OR
       (@rounds_won_team_2 = 13 AND @rounds_won_team_1 BETWEEN 0 AND 11) OR
       (@rounds_won_team_1 > 12 AND @rounds_won_team_2 > 12 AND
        ABS(@rounds_won_team_1 - @rounds_won_team_2) = 2)
    BEGIN

        SET @error = 0;
    END
    ELSE
    BEGIN

        SET @error = 1;
    END

    IF @error = 1
    BEGIN
        RAISERROR('Invalid game score detected.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
