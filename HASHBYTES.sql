
-- CREATE TABLE 
CREATE TABLE User_test(
    [UserID] [int] NOT NULL,
    [UserName] [nvarchar](20) NOT NULL,
    [PasswordHash] [varbinary](150) NOT NULL
) ON [PRIMARY]
GO
 

-- INSERT DATA (NOTA N -> Nvarchar)
Insert into User_test values (1, 'User1', HASHBYTES('SHA2_512', N'test_1'))
Insert into User_test values (2, 'User1', HASHBYTES('SHA2_512', N'test_2'))
GO


 
-- SELECT FOUND
Select UserID,  UserName, PasswordHash
from User_test
WHERE  PasswordHash=HASHBYTES('SHA2_512', N'test_1')


-- SELECT NOT FOUND
Select UserID,  UserName, PasswordHash
from User_test
WHERE  PasswordHash=HASHBYTES('SHA2_512', N'test')