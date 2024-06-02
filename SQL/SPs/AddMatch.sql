CREATE PROCEDURE AddMatch
    @Match_ID INT,
    @Team_1_ID INT,
    @Team_2_ID INT
AS
BEGIN
    BEGIN TRANSACTION;
    BEGIN TRY
        INSERT INTO VALO_MATCH (Match_ID, Team_1_ID, Team_2_ID)
        VALUES (@Match_ID, @Team_1_ID, @Team_2_ID);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
