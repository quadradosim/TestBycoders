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
			   ,'Débito'
			   ,'Entrada')
	--2
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (2
			   ,'Boleto'
			   ,'Saída')
	--3
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (3
			   ,'Financiamento'
			   ,'Saída')
	--4
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (4
			   ,'Crédito'
			   ,'Entrada')
	--5
	INSERT INTO [dbo].[Transactions]
			   ([Id]
			   ,[Description]
			   ,[Nature])
		 VALUES
			   (5
			   ,'Recebimento Empréstimo'
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
			   ,'Saída')

END



