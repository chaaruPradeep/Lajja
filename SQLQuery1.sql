CREATE Procedure [dbo].[Lil_reg]
(
    @FName NVARCHAR(MAX), 
    @LName NVARCHAR(MAX), 
    @Class NVARCHAR(MAX), 
    @RollNo NVARCHAR(MAX), 
    @EmailAddress NVARCHAR(MAX), 
    @Password NVARCHAR(MAX)
)
as
insert into Lil_Register values (@FName, @LName, @Class, @RollNo, @EmailAddress, @Password)