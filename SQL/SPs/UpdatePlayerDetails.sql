CREATE PROCEDURE UpdatePlayerDetails
    @CC_Number INT,
    @Nickname VARCHAR(30),
    @Name VARCHAR(50),
    @Age INT,
    @TeamID INT = NULL
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Ensure the nickname is unique
        IF EXISTS (SELECT 1 FROM VALO_PLAYER WHERE Nickname = @Nickname AND PERSON_CC_Number <> @CC_Number)
        BEGIN
            RAISERROR('Nickname must be unique.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Update VALO_PERSON
        UPDATE VALO_PERSON
        SET Nome = @Name, Age = @Age
        WHERE CC_Number = @CC_Number;

        -- Update VALO_PLAYER
        UPDATE VALO_PLAYER
        SET Nickname = @Nickname, Team_ID = @TeamID
        WHERE PERSON_CC_Number = @CC_Number;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
