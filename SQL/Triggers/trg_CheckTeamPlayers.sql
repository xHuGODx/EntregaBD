CREATE TRIGGER trg_CheckTeamPlayers
ON VALO_MATCH
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Team1_ID INT;
    DECLARE @Team2_ID INT;
    DECLARE @Team1PlayerCount INT;
    DECLARE @Team2PlayerCount INT;

    SELECT @Team1_ID = Team_1_ID, @Team2_ID = Team_2_ID
    FROM inserted;

    -- Check the number of players for Team 1
    SELECT @Team1PlayerCount = COUNT(*)
    FROM VALO_PLAYER
    WHERE Team_ID = @Team1_ID;

    -- Check the number of players for Team 2
    SELECT @Team2PlayerCount = COUNT(*)
    FROM VALO_PLAYER
    WHERE Team_ID = @Team2_ID;

    IF @Team1PlayerCount <> 5
    BEGIN
        RAISERROR('Team 1 must have exactly 5 players.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    IF @Team2PlayerCount <> 5
    BEGIN
        RAISERROR('Team 2 must have exactly 5 players.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
