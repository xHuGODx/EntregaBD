CREATE PROCEDURE recalculateHAS
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Step 1: Clear the HAS table
        DELETE FROM VALO_HAS;

        -- Step 2: Populate the HAS table
        INSERT INTO VALO_HAS (PLAYER_CC_Number, ROLE_Role_Name)
        SELECT DISTINCT ps.PLAYER_CC_Number, a.ROLE_Role_Name
        FROM VALO_PLAYERSTATS ps
        JOIN VALO_AGENT a ON ps.AGENT_Agent_Name = a.Agent_Name;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
