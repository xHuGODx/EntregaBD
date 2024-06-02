CREATE PROCEDURE UpdatePlayerStats
    @PLAYER_CC_Number INT,
    @GAME_Match_ID INT,
    @GAME_Game_ID INT,
    @Kills INT,
    @Deaths INT,
    @Assists INT,
    @AVS DECIMAL(5, 2),
    @Rating INT,
    @First_kills INT,
    @AGENT_Agent_Name VARCHAR(20),
    @ROLE_Role_Name VARCHAR(20)
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        UPDATE VALO_PLAYERSTATS
        SET Kills = @Kills, Deaths = @Deaths, Assists = @Assists, AVS = @AVS, Rating = @Rating, First_kills = @First_kills, AGENT_Agent_Name = @AGENT_Agent_Name
        WHERE PLAYER_CC_Number = @PLAYER_CC_Number AND GAME_Match_ID = @GAME_Match_ID AND GAME_Game_ID = @GAME_Game_ID;

        IF NOT EXISTS (SELECT 1 FROM VALO_HAS WHERE PLAYER_CC_Number = @PLAYER_CC_Number AND ROLE_Role_Name = @ROLE_Role_Name)
        BEGIN
            INSERT INTO VALO_HAS (PLAYER_CC_Number, ROLE_Role_Name)
            VALUES (@PLAYER_CC_Number, @ROLE_Role_Name);
        END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;