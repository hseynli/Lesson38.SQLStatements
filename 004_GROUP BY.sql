USE AdventureWorks2012
GO
--------------------------------------------------------------------------
--				M?lumatlar qruplasd?r?lmas?. GROUP BY konstruksiyas?
--------------------------------------------------------------------------

SELECT SalesOrderID, OrderQty 
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664);

SELECT SalesOrderID, SUM(OrderQty) -- SUM() funksiyas?
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664)
GROUP BY SalesOrderID; 

SELECT * FROM Sales.SalesOrderDetail

SELECT SalesOrderId, count(SalesOrderId) FROM Sales.SalesOrderDetail
GROUP BY SalesOrderId
ORDER BY count(SalesOrderId) desc

SELECT * FROM Production.Product

ALTER TABLE Production.Product
DROP COLUMN WeightUnitMeasureCode
go

SELECT sum(sod.SalesOrderId), sod.SalesOrderId, sod.OrderQty, sod.UnitPrice, sod.LineTotal, p.Name, p.ProductNumber, p.SellStartDate, p.Size
FROM Sales.SalesOrderDetail AS sod JOIN Production.Product p
ON sod.ProductId = p.ProductId
GROUP BY sod.SalesOrderId, sod.OrderQty, sod.UnitPrice, sod.LineTotal, p.Name, p.ProductNumber, p.SellStartDate, p.Size

SELECT count(sod.SalesOrderId) AS SumSalesOrderId, sod.SalesOrderId
FROM Sales.SalesOrderDetail AS sod JOIN Production.Product p
ON sod.ProductId = p.ProductId
GROUP BY sod.SalesOrderId
--HAVING SalesOrderId in (47355, 51120, 46981, 57046, 5110)
ORDER BY SumSalesOrderId DESC

SELECT p.Name, count(p.Name) AS NameCount
FROM Sales.SalesOrderDetail AS sod JOIN Production.Product p
ON sod.ProductId = p.ProductId
GROUP BY p.Name
--HAVING p.Name = 'LL Road Frame - Black, 52' OR p.Name = 'LL Road Frame - Red, 60'
ORDER BY NameCount DESC

SELECT *
FROM Sales.SalesOrderDetail AS sod JOIN Production.Product p
ON sod.ProductId = p.ProductId

SELECT SalesOrderID AS ID, SUM(OrderQty) AS Total -- AS acar sozund?n sonra sutuna ad (alias) veririk.
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664)
GROUP BY SalesOrderID; -- Агрегирование данных.

SELECT COUNT(*) AS Emp
FROM HumanResources.Employee;

SELECT ProductID AS Product, COUNT(*) AS [Count] 
FROM Sales.SalesOrderDetail
GROUP BY ProductID;
--------------------------------------------------------------------------

SELECT ProductID AS Product, COUNT(*) AS [Count] 
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING COUNT(*) > 3300;	-- HAVING - ancaq GROUP BY il? istifad? olunmal?d?r (HAVING WHERE il? analoqdur).
						-- HAVING - ancaq qruplara s?rti qoyulur.
--------------------------------------------------------------------------

-- X?ta. HAVING - ancaq GROUP BY il? isl?dilm?lidir.
SELECT ProductID AS Product
FROM Sales.SalesOrderDetail
HAVING ProductID > 10; -- HAVING-d?n duzgun istifad? etm?m? (GROUP BY-s?z)

-- WHERE qruplasd?rmadan ?vv?l isl?yir, HAVING is? qruplasdlrma il? birlikd?.
SELECT SalesOrderID, COUNT(*) AS TOTAL
FROM Sales.SalesOrderDetail
WHERE SalesOrderID IN (43666, 43660, 43664)
GROUP BY SalesOrderID
HAVING COUNT(*) > 5;