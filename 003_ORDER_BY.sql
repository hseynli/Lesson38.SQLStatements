USE AdventureWorks2012
GO

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate FROM Person.Person

--------------------------------------------------------------------------
--				ORDER BY konstruksiyas? - Hans? sutun uzr? s?ralamaq...
--------------------------------------------------------------------------

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate 
FROM Person.Person
ORDER BY FirstName;  -- Ada gor? s?ralamaq.

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate 
FROM Person.Person
ORDER BY ModifiedDate;  -- ModifiedDate gor? s?ralamaq

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate 
FROM Person.Person
ORDER BY FirstName, LastName;  -- Ad v? Soyada gor? s?ralamaq

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate 
FROM Person.Person
ORDER BY FirstName ASC; -- Artan ard?c?ll?qla s?ralamaq. ASC - default olaraq goturulur.

SELECT BusinessEntityID, FirstName, LastName, MiddleName, ModifiedDate 
FROM Person.Person
ORDER BY FirstName DESC; -- Azalan ard?c?ll?qla s?ralamaq.

