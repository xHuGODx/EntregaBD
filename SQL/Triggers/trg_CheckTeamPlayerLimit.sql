
CREATE TRIGGER trg_CheckTeamPlayerLimit
ON VALO_PLAYER
FOR INSERT, UPDATE
AS
BEGIN
    DECLARE @TeamID INT;
    DECLARE @NewPlayerCount INT;

    SELECT @TeamID = inserted.Team_ID
    FROM inserted
    WHERE inserted.Team_ID IS NOT NULL;

    IF @TeamID IS NOT NULL
    BEGIN
        SELECT @NewPlayerCount = COUNT(*)
        FROM VALO_PLAYER
        WHERE Team_ID = @TeamID;

        SELECT @NewPlayerCount = @NewPlayerCount + COUNT(*)
        FROM inserted
        WHERE Team_ID = @TeamID;

        IF @NewPlayerCount > 6
        BEGIN
            RAISERROR ('Cannot add or update player. A team cannot have more than 5 players.', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END
END;
GO
