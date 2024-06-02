CREATE PROCEDURE UpdateCoachDetails
    @CC_Number INT,
    @Name VARCHAR(50),
    @Age INT,
    @TeamID INT = NULL
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Update the coach details in the VALO_PERSON table
        UPDATE VALO_PERSON
        SET Nome = @Name, Age = @Age
        WHERE CC_Number = @CC_Number;

        -- Update the team ID in the VALO_COACH table
        UPDATE VALO_COACH
        SET Team_ID = @TeamID
        WHERE PERSON_CC_Number = @CC_Number;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
