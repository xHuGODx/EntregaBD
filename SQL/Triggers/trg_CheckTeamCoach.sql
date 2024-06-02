CREATE TRIGGER trg_CheckTeamCoach
ON VALO_COACH
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @TeamID INT;
    DECLARE @CoachCount INT;

    SELECT @TeamID = Team_ID
    FROM inserted;

    IF @TeamID IS NOT NULL
    BEGIN
        SELECT @CoachCount = COUNT(*)
        FROM VALO_COACH
        WHERE Team_ID = @TeamID;

        IF @CoachCount > 1
        BEGIN
            RAISERROR('This team already has a coach.', 16, 1);
            ROLLBACK TRANSACTION;
        END
    END
END;
