CREATE PROCEDURE AddTeam
    @Nome VARCHAR(50),
    @Foundation_Date DATE
AS
BEGIN
    SET NOCOUNT ON; -- Prevents sending the number of affected rows to the client

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Check if the parameters are not null
        IF @Nome IS NULL OR @Foundation_Date IS NULL
        BEGIN
            RAISERROR('Name and foundation date must be provided.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Ensure the name is unique
        IF EXISTS (SELECT 1 FROM VALO_TEAM WHERE Nome = @Nome)
        BEGIN
            RAISERROR('Team name must be unique.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Ensure the foundation date is after June 2, 2020
        IF @Foundation_Date <= '2020-06-02'
        BEGIN
            RAISERROR('Foundation date must be greater than June 2, 2020.', 16, 1);
            ROLLBACK TRANSACTION;
            RETURN;
        END

        -- Get the next available Team_ID
        DECLARE @NextTeamID INT;
        SELECT @NextTeamID = ISNULL(MAX(Team_ID), 0) + 1 FROM VALO_TEAM;

        -- Insert the new team
        INSERT INTO VALO_TEAM (Team_ID, Nome, Foundation_Date)
        VALUES (@NextTeamID, @Nome, @Foundation_Date);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        -- Rethrow the error to the caller
        THROW;
    END CATCH
END;
