CREATE PROCEDURE RemoveMatch
    @MatchID INT
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Remove player stats associated with the match
        DELETE FROM VALO_PLAYERSTATS WHERE GAME_Match_ID = @MatchID;

        -- Remove games associated with the match
        DELETE FROM VALO_GAME WHERE MATCH_Match_ID = @MatchID;

        -- Remove the match itself
        DELETE FROM VALO_MATCH WHERE Match_ID = @MatchID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
