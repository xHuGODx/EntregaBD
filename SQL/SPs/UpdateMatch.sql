CREATE PROCEDURE UpdateMatch
    @Match_ID INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        DECLARE @Team_1_ID INT, @Team_2_ID INT;
        
        SELECT @Team_1_ID = Team_1_ID, @Team_2_ID = Team_2_ID
        FROM VALO_MATCH
        WHERE Match_ID = @Match_ID;

        UPDATE VALO_MATCH
        SET Team_1_ID = @Team_1_ID,
            Team_2_ID = @Team_2_ID
        WHERE Match_ID = @Match_ID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
