insert into EmployeeCredentials(FirstName,LastName,UserId,Password)values('Anu','Patil','Anusha','anu@123');
insert into EmployeeCredentials(FirstName,LastName,UserId,Password)values('Aadhya','nandi','Aadhya','aadhya@123');
insert into EmployeeCredentials(FirstName,LastName,UserId,Password)values('shiva','kumar','shiva','shiva@123');
insert into EmployeeCredentials(FirstName,LastName,UserId,Password)values('sudha','kumari','sudha','sudha@123');
insert into EmployeeCredentials(FirstName,LastName,UserId,Password)values('madhu','shalini','madhu','madhu@123');
select*from EmployeeCredentials

Delete from EmployeeCredentials where EmployeeId=5

insert into UserDetails(FirstName,LastName,UserName,Password)values('Anuradha','Patel','Anu','anu@123');
insert into UserDetails(FirstName,LastName,UserName,Password)values('Aadhya','nandi','Aadhya','aadhya@123');
insert into UserDetails(FirstName,LastName,UserName,Password)values('shiva','kumar','shiva','shiva@123');
insert into UserDetails(FirstName,LastName,UserName,Password)values('madhu','shalini','madhu','madhu@123');
select*from UserDetails
create proc usp_InsertUserDetails(@FirstName varchar(50),@LastName varchar(50),@UserName varchar(50),@Password varchar(50))
as
Insert UserDetails(FirstName,LastName,UserName,Password)
values(@FirstName,@LastName,@UserName,@Password)

create proc usp_InsertUserDetails1(@Id int,@FirstName varchar(50),@LastName varchar(50),@UserName varchar(50),@Password varchar(50))
as
Insert UserDetails(Id,FirstName,LastName,UserName,Password)
values(@Id,@FirstName,@LastName,@UserName,@Password)

select*from Prod
Delete from Prod where Id=17

alter table  EmployeeCredentials add Status varchar(50)
