CREATE PROCEDURE RemoveTeam
    @TeamID INT
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Step 1: Update players and coaches to set their Team_ID to NULL
        UPDATE VALO_PLAYER
        SET Team_ID = NULL
        WHERE Team_ID = @TeamID;

        UPDATE VALO_COACH
        SET Team_ID = NULL
        WHERE Team_ID = @TeamID;

        -- Step 2: Delete all matches and games associated with the team
        DELETE FROM VALO_PLAYERSTATS
        WHERE GAME_Match_ID IN (
            SELECT Match_ID
            FROM VALO_MATCH
            WHERE Team_1_ID = @TeamID OR Team_2_ID = @TeamID
        );

        DELETE FROM VALO_GAME
        WHERE MATCH_Match_ID IN (
            SELECT Match_ID
            FROM VALO_MATCH
            WHERE Team_1_ID = @TeamID OR Team_2_ID = @TeamID
        );

        DELETE FROM VALO_MATCH
        WHERE Team_1_ID = @TeamID OR Team_2_ID = @TeamID;

        -- Step 3: Clear the HAS table
        DELETE FROM VALO_HAS
        WHERE PLAYER_CC_Number IN (
            SELECT PERSON_CC_Number
            FROM VALO_PLAYER
            WHERE Team_ID = @TeamID
        );

        -- Step 4: Delete the team itself
        DELETE FROM VALO_TEAM
        WHERE Team_ID = @TeamID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
