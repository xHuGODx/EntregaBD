CREATE PROCEDURE RemoveCoach
    @CC_Number INT
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Remove the coach from the VALO_COACH table
        DELETE FROM VALO_COACH
        WHERE PERSON_CC_Number = @CC_Number;

        -- Remove the coach from the VALO_PERSON table
        DELETE FROM VALO_PERSON
        WHERE CC_Number = @CC_Number;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
