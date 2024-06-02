CREATE PROCEDURE RemoveGame
    @MatchID INT,
    @GameID INT
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Remove player stats associated with the specified match and game
        DELETE FROM VALO_PLAYERSTATS 
        WHERE GAME_Match_ID = @MatchID AND GAME_Game_ID = @GameID;

        -- Remove games associated with the specified game ID
        DELETE FROM VALO_GAME 
        WHERE Game_ID = @GameID AND MATCH_Match_ID = @MatchID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
