USE AdventureWorks2022

GO
-- Ejercicio 1:
SELECT Name AS Nombre FROM Production.Product WHERE ListPrice > 1000

-- Ejercicio 2:
SELECT *FROM Person.Address WHERE PostalCode lIKE '98%'

-- Ejercicio 3:
SELECT *FROM Production.Product WHERE Size LIKE 'L'

--Ejercicio 4
SELECT MAX(TotalDue) AS 'Monto mas alto' FROM Sales.SalesOrderHeader

--Ejercicio 5
SELECT *FROM Production.Product WHERE SafetyStockLevel > 1

--Ejercicio 6
SELECT TOP 5 *FROM Sales.SalesOrderDetail ORDER BY OrderQty DESC
