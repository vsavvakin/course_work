CREATE TABLE Position (
Id integer primary key,
PositionName varchar(50)
)

CREATE TABLE People(
Id integer primary key,
FirstName varchar(20),
LastName varchar(20),
PostId int constraint PositionIndex references Position(Id)
)


CREATE TABLE Reports(
Id integer primary key,
ProblemId integer constraint ProblemIndex references Problems(Id),
Message varchar(50),
Date datetime,
SenderId integer constraint SenderIndex references People(Id),
RecipientId integer constraint RecipientIndex references People(Id)
)

CREATE TABLE Problems(
Id integer primary key,
Description varchar(100),
ParentId integer constraint ParentIndex references Problems(Id)
)

