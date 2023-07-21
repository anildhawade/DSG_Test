--Table script--
CREATE TABLE [dbo].[tblUsers](
[id] [int] IDENTITY(1,1) NOT NULL,
[username] [nvarchar](max) NOT NULL,
[password] [nvarchar](max) NOT NULL,
[firstname] [nvarchar](20) NOT NULL,
[lastname] [nvarchar](20) NOT NULL,
[dob] [nvarchar](50) NULL,
[email] [nvarchar](50) NULL,
[role] [nvarchar](50) NULL,
[contactno] [nvarchar](50) NULL,
[gender] [nvarchar](50) NULL
)

--Stored procedure--
create proc sp_users
(
@username nvarchar(50)=null, @password nvarchar(50)=null, @stmttype nvarchar(50)
)
as
begin
if(@stmttype='userlogin')
begin
select * from tblUsers where username=@username and password=@password
end;
end;