CREATE PROCEDURE AddGame
    @Game_ID INT,
    @Rounds_Won_Team_1 INT,
    @Rounds_Won_Team_2 INT,
    @Match_ID INT,
    @Map VARCHAR(20)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO VALO_GAME (Game_ID, Rounds_Won_Team_1, Rounds_Won_Team_2, MATCH_Match_ID, Map)
        VALUES (@Game_ID, @Rounds_Won_Team_1, @Rounds_Won_Team_2, @Match_ID, @Map);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
