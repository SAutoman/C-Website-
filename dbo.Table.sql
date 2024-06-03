CREATE TABLE [dbo].[Users] (
    [email]    NVARCHAR (50) NOT NULL,
    [password] NVARCHAR (50) NOT NULL,
    [fname]    NVARCHAR (50) NOT NULL,
    [lname]    NVARCHAR (50) NOT NULL,
    [isAdmin]  BIT           DEFAULT ((0)) NULL,
    [DOB]      NVARCHAR (50) NOT NULL,
    [gender]   NVARCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([email] ASC)
);

