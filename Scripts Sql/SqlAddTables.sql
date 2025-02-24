IF NOT EXISTS (select 1 from INFORMATION_SCHEMA.TABLES T 
              where T.TABLE_NAME = 'FinancialMovement')
BEGIN
	-- create the table with the financial movements
	CREATE TABLE FinancialMovement (
	Id bigint IDENTITY,
	IdTransaction int,
	Date int,
	Value int,
	CPF varchar(11),
	Card varchar(12),
	Hour int,
	Owner varchar(14),
	Name varchar(19)
	);
END

IF NOT EXISTS (select 1 from INFORMATION_SCHEMA.TABLES T 
              where T.TABLE_NAME = 'Transactions')
BEGIN
	-- create table of transactions types
	CREATE TABLE Transactions (
	Id bigint,
	Description varchar(22),
	Nature varchar(10)
	);
END

