CREATE PROCEDURE AddCoach
    @CC_Number INT,
    @Name VARCHAR(50),
    @Age INT,
    @TeamID INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert into VALO_PERSON
        INSERT INTO VALO_PERSON (CC_Number, Nome, Age)
        VALUES (@CC_Number, @Name, @Age);

        -- Insert into VALO_COACH
        INSERT INTO VALO_COACH (PERSON_CC_Number, Team_ID)
        VALUES (@CC_Number, @TeamID);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
