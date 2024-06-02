CREATE PROCEDURE RemovePlayerByID
    @PlayerID INT
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Remove all entries for this player from the VALO_PLAYERSTATS table
        DELETE FROM VALO_PLAYERSTATS
        WHERE PLAYER_CC_Number = @PlayerID;

        -- Remove all entries for this player from the VALO_HAS table
        DELETE FROM VALO_HAS
        WHERE PLAYER_CC_Number = @PlayerID;

        -- Remove the player from the VALO_PLAYER table
        DELETE FROM VALO_PLAYER
        WHERE PERSON_CC_Number = @PlayerID;

        -- Remove the player from the VALO_PERSON table
        DELETE FROM VALO_PERSON
        WHERE CC_Number = @PlayerID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
