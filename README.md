# TestBycoders

Projeto de teste para Bycoders_ com uma página web e uma API em .Net 9.0.

Projeto consiste de uma página web que faz o upload de um arquivo, salva os dados no banco de dados Sql Server e depois mostra na tela um resumo da movimentação
financeria por loja. Para rodar o projeto, após baixá-lo do Git, é necessário fazer a instalação de um banco de dados Sql Server e depois rodar os dois scripts que 
estão na base do projeto na pasta ScriptsSql. Primeiro roda script SqlAddTables e depois o script SqlAddTransactionTypes. 
Também é necessário usar o node.js para criar servidor local e acessar pagina index.html. Para isso, após instalar o node.js, basta rodar a instrução abaixo
no cmd na pasta WEB do projeto:

	node index.js
	
Acessar o navegador na url localhost:3000 para ver pagina index.html

Para rodar a API .NET 9.0 existem duas opções:

	1 - rodar arquivo TesteBycoders.exe no caminho C:\Users\Lenovo\Documents\Teste\TestBycoders\bin\Debug\net9.0

	2 - clicar duas vezes no arquivo sln na pasta raiz do projeto, que assim automaticamente a aplicação será aberta no visual studio. 
	Basta rodar o projeto na versão http, clicando no triangulo verde no topo da página dentro do visual studio. Na página Web existe um campo na tela onde deve ser 
	inserida a url base da API que foi rodada, a qual está descrita no prompt da API. Existe também um arquivo de teste na API que pode ser rodado diretamente para
	rodar o teste.

É necessário alterar aqui o arquivo appsettings.json em DefaultConnection, para inserir a string de conexão correta para o banco de dados. na base do projeto existe
um arquivo do Postman com a chamada completa para API.
