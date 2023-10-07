USE ShopDB;
GO
--------------------------------------------------------------------------
--                     M?lumatlar?n g?tirilm?si. SELECT sorgusu
--------------------------------------------------------------------------

-- MyFriends c?dv?lind?n m?lumatlar? g?tiririk.
SELECT * FROM MyFriends; 

-- MyFriends c?dv?lind?n FstName sutununda olan m?lumatlar? g?tirik
SELECT FstName FROM MyFriends; 

-- MyFriends c?dv?lind?n LstName sutununda olan m?lumatlar? g?tirik
SELECT LstName FROM MyFriends; 

SELECT BthDate FROM MyFriends; 

-- MyFriends c?dv?lind?n FstName v? LstName sutununda olan m?lumatlar? g?tirik
SELECT FstName, LstName FROM MyFriends; 

-- MyFriends c?dv?lind?n FstName, LstName v? BthDate sutununda olan m?lumatlar? g?tirik
SELECT FstName,LstName,BthDate FROM MyFriends; 

--------------------------------------------------------------------------

USE AdventureWorks2012;
GO

SELECT CardType, CardNumber, ExpMonth, ExpYear FROM Sales.CreditCard; -- Sales - sxemad?r

--------------------------------------------------------------------------
--                         WHERE konstruksiyas?. 
--------------------------------------------------------------------------

SELECT * FROM Sales.CreditCard 
WHERE CreditCardID = 10;

SELECT * FROM Sales.CreditCard 
WHERE CreditCardID < 10;

SELECT * FROM Sales.CreditCard 
WHERE CreditCardID BETWEEN 1 AND 3

SELECT * FROM Sales.CreditCard 
WHERE ExpYear = 2005 OR ExpYear = 2007

SELECT * FROM Sales.CreditCard 
WHERE ExpYear BETWEEN 2005 AND 2007 

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE ExpYear = 2005 AND CardType = 'Vista'

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE NOT ExpYear = 2006

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType LIKE 'ColonialVoice'

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType =

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType LIKE 'Dis%'

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType = 'Dis%'
						  
SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType LIKE 'Vis__'

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType LIKE 'Vis_' -- Niy? bosdur?

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType LIKE 'Vis_a'

SELECT CardType, ExpYear FROM Sales.CreditCard 
WHERE CardType LIKE '%ist%'

SELECT * FROM Sales.CreditCard WHERE ExpMonth IN (1, 5, 11);

SeLeCt * from Sales.CreditCard where ExpMonth = 1 or ExpMonth = 5 or ExpMonth = 11;
