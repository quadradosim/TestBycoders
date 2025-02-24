--Insert data inside Transactions table
IF NOT EXISTS (SELECT * FROM Transactions)
BEGIN
    --1
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (1
			   ,'D�bito'
			   ,'Entrada')
	--2
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (2
			   ,'Boleto'
			   ,'Sa�da')
	--3
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (3
			   ,'Financiamento'
			   ,'Sa�da')
	--4
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (4
			   ,'Cr�dito'
			   ,'Entrada')
	--5
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (5
			   ,'Recebimento Empr�stimo'
			   ,'Entrada')
	--6
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (6
			   ,'Vendas'
			   ,'Entrada')
	--7
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (7
			   ,'Recebimento TED'
			   ,'Entrada')
	--8
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (8
			   ,'Recebimento DOC'
			   ,'Entrada')
	--9
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (9
			   ,'Aluguel'
			   ,'Sa�da')

END



