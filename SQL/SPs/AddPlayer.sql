CREATE PROCEDURE AddPlayer
    @CC_Number INT,
    @Name VARCHAR(50),
    @Age INT,
    @Nickname VARCHAR(30),
    @Team_ID INT = NULL
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check if the parameters are not null
        IF @CC_Number IS NULL OR @Name IS NULL OR @Age IS NULL OR @Nickname IS NULL
        BEGIN
            RAISERROR('All fields except Team_ID must be provided.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Ensure the nickname is unique
        IF EXISTS (SELECT 1 FROM VALO_PLAYER WHERE Nickname = @Nickname)
        BEGIN
            RAISERROR('Nickname must be unique.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Ensure the age is greater than 16
        IF @Age < 16
        BEGIN
            RAISERROR('Age must be greater than 16.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Insert into VALO_PERSON
        INSERT INTO VALO_PERSON (CC_Number, Nome, Age)
        VALUES (@CC_Number, @Name, @Age);

        -- Insert into VALO_PLAYER
        INSERT INTO VALO_PLAYER (PERSON_CC_Number, Nickname, Team_ID)
        VALUES (@CC_Number, @Nickname, @Team_ID);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
