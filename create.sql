CREATE DATABASE [CustomerLib_Melenteva]
GO

CREATE TABLE Customer (
	CustomerId INT PRIMARY KEY IDENTITY(1,1),
	FirstName VARCHAR(50),
	LastName VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(13) DEFAULT 'Unknown'CHECK ( PhoneNumber LIKE '[+][0-9]%'),
	Email VARCHAR(50) DEFAULT 'Unknown' CHECK (Email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%' ) ,
	TotalPurchasesAmount money CHECK (TotalPurchasesAmount > 0)
)
GO

CREATE TABLE Address (
	AdressId INT PRIMARY KEY IDENTITY(1,1),
	AddressLine VARCHAR(100) NOT NULL,
	AddressLine2 VARCHAR(100),
	AddressType VARCHAR(50) CHECK (AddressType IN('Shipping', 'Billing', 'Unknown')) DEFAULT 'Unknown',
	City VARCHAR(50) NOT NULL,
	PostalCode VARCHAR(6) NOT NULL,
	State VARCHAR(20) NOT NULL,
	Country VARCHAR(50) CHECK (Country IN('Canada', 'United States', 'Unknown')) DEFAULT 'Unknown',
	CustomerId INT FOREIGN KEY REFERENCES Customer(CustomerId),
)
GO

CREATE TABLE Notes (
	NoteId INT PRIMARY KEY IDENTITY(1,1),
	Note VARCHAR(50),
	CustomerId INT FOREIGN KEY REFERENCES Customer(CustomerId),
)

GO

SELECT * FROM Customer
SELECT * FROM Address
SELECT * FROM Notes