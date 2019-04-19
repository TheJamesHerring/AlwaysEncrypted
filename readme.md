
this code from the article (https://docs.microsoft.com/en-us/azure/sql-database/sql-database-always-encrypted-azure-key-vault) shows you how to secure sensitive data in a SQL database with data encryption using the Always Encrypted Wizard in SQL Server Management Studio (SSMS). It also includes instructions that will show you how to store each encryption key in Azure Key Vault.
Always Encrypted is a new data encryption technology in Azure SQL Database and SQL Server that helps protect sensitive data at rest on the server, during movement between client and server, and while the data is in use. Always Encrypted ensures that sensitive data never appears as plaintext inside the database system. After you configure data encryption, only client applications or app servers that have access to the keys can access plaintext data. For detailed information, see Always Encrypted (Database Engine).
After you configure the database to use Always Encrypted, you will create a client application in C# with Visual Studio to work with the encrypted data.
Follow the steps in this article and learn how to set up Always Encrypted for an Azure SQL database. In this article you will learn how to perform the following tasks:
Use the Always Encrypted wizard in SSMS to create Always Encrypted keys. 
Create a column master key (CMK).
Create a column encryption key (CEK).
Create a database table and encrypt columns.
Create an application that inserts, selects, and displays data from the encrypted columns.
