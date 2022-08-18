USE [CustomerLib_Melenteva]
GO
--Add data for customers
INSERT Customer 
(FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
Values
--Right values
('Victor', 'Wsd', '+79002002010', 'zczc@gmail.com', '500'),
('Danny', 'Plidf', '+79121232312', 'c@gmail.org', '0'),
--Invalid values
('Kate', '', '+79112223344', 'ziczac@gmail.ru', '90000000'),
('Albus', 'Snape', '+1234567891', '@gmail.com', 'asd'),
('Sasha', 'Violet', '+198765', 'zscztc@a.com', 'As31F'),
('Alex', 'Straza', '+Aoy', 'ziczac@.com', '1123ASD231'),
('John', 'Zapeshk', 'qwember', '@.com', ';;asd;qw;!!@#!$'),
('Alex', 'Asd', '+2479391234', 'a@o.com', '23482!@&"s"'),
('Null', 'Undefined', '+++CC+++', '', '500'),
('Index', null, ';dada-np;', 'ziczry@gmail.com', '500')
GO

--Add addresses
INSERT Address 
(AddressLine, AddressLine2, AddressType, City, PostalCode, State, Country, CustomerId)
Values
--Right values
('Long St.', '265', 'Shipping', 'Phoenix', '22459', 'Arizona', 'United States', 1),
('Long St.', '265', 'Billing', 'Phoenix', '22459', 'Arizona', 'Canada', 2),
--Invalid values
('Long St.', '265', '', 'Phoenix', '22459', 'Arizona', 'United States', 3),
('', '265', 'Shipping', 'Phoenix', '22459', 'Arizona', 'United States', 4),
('Long St.', '265', 'Unknown', 'Phoenix', '22459', 'Arizona', 'United States', 5),
('Long St.', '265', 'Shipping', '', '', '', 'United States', 6),
('Long St.', '265', 'Shipping', '', '22459', 'Arizona', 'United States', 7),
('Long St.', '265', 'Shipping', 'Phoenix', '', 'Arizona', 'United States', 8),
('Long St.', '265', 'Shipping', 'Phoenix', '22459', '', 'United States', 9),
('Long St.', '265', 'Shipping', 'Phoenix', '22459', 'Arizona', '', 10)
GO
--Add notes
INSERT Notes 
(Note, CustomerId)
Values
('Hi', 1),
('Hello there', 2),
('Im good thanks', 3),
(123123123, 4),
('!@$^%!*#^', 5),
('Hi!!!', 6),
('', 7),
(null, 8),
('Ninth', 9),
('---The last one---', 10)
GO