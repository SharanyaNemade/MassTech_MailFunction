use sharanya;

create table emp
(
id int primary key identity,
name varchar(100),
salary decimal(9,2),
pf decimal(9,2),
netsal decimal(9,2)
);


alter PROCEDURE sp_SaveEmp
    @name VARCHAR(100),
    @salary DECIMAL(9,2),
@ephoto varchar(100),
@mid int
AS
BEGIN
    DECLARE @pfamt DECIMAL(9,2);
    DECLARE @NetSal DECIMAL(9,2);

    SET @pfamt = @salary * 0.10;
    SET @NetSal = @salary - @pfamt;

    INSERT INTO emp (name, salary, pf, netsal,ephoto,mid)
    VALUES (@name, @salary, @pfamt, @NetSal,@ephoto,@mid);
END

create proc sp_fetchEmpList
as
begin
select * from emp;
end



begin
select * from emp;
end

create table Manager
(
mid int primary key identity,
mname varchar(100)
)

drop table manager;

drop table emp;

alter table emp add mid int

alter table emp add ephoto varchar(100)

alter table emp drop column mid;



alter table emp add foreign key (mid) references manager(mid)


select * from emp;
truncate table emp;


select * from Manager;

-- Inserting Values


insert into Manager values('ITManager'),('SalesManager'),('HeadManager'),('HRManager');


alter proc sp_FetchManagerList
as
begin
select * from manager;
end