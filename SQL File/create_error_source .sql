CREATE TABLE [Source Error] (
    [id] INT IDENTITY(1,1),
    [Flat File Source Error Output Column] VARCHAR(MAX),
    [ErrorCode] INT,
    [ErrorColumn] INT
)


ALTER table [dbo].[Source Error] add audit_id int not null default(-1);
