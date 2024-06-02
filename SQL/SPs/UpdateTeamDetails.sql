CREATE PROCEDURE UpdateTeamDetails
    @TeamID INT,
    @NewName VARCHAR(50),
    @NewFoundationDate DATE
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Ensure the new name is unique
        IF EXISTS (SELECT 1 FROM VALO_TEAM WHERE Nome = @NewName AND Team_ID <> @TeamID)
        BEGIN
            RAISERROR('Team name must be unique.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Ensure the new foundation date is after June 2, 2020
        IF @NewFoundationDate <= '2020-06-02'
        BEGIN
            RAISERROR('Foundation date must be greater than June 2, 2020.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Update VALO_TEAM
        UPDATE VALO_TEAM
        SET 
            Nome = @NewName,
            Foundation_Date = @NewFoundationDate
        WHERE 
            Team_ID = @TeamID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
