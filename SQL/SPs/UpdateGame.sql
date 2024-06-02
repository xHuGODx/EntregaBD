CREATE PROCEDURE UpdateGame
    @Game_ID INT,
    @Rounds_Won_Team_1 INT,
    @Rounds_Won_Team_2 INT,
    @Match_ID INT,
    @Map VARCHAR(20)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE VALO_GAME
        SET Rounds_Won_Team_1 = @Rounds_Won_Team_1, Rounds_Won_Team_2 = @Rounds_Won_Team_2, Map = @Map
        WHERE Game_ID = @Game_ID AND MATCH_Match_ID = @Match_ID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;