-- Actividad 1 - Ricardo Lenin Vazquez Arriaga

USE AdventureWorks2022
go

SELECT * from INFORMATION_SCHEMA.TABLES

/* EJERCICIO 1 */

SELECT * FROM Production.Product

SELECT ProductID, Name, SafetyStockLevel FROM  Production.Product WITH(NOLOCK)
WHERE SafetyStockLevel >= 1000

/* EJERCICIO 2*/

SELECT * FROM Person.Address

SELECT AddressLine1, PostalCode FROM Person.Address WITH(NOLOCK)
WHERE PostalCode LIKE '98%'

/* EJERCICIO 3 */

SELECT * FROM Production.Product

SELECT COUNT(*) AS TOTAL FROM Production.Product WITH(NOLOCK)
WHERE Size IS NOT NULL

/* EJERCICIO 4 */

SELECT * FROM Sales.SalesOrderHeader WITH(NOLOCK)

SELECT MAX(TotalDue) AS VentaTotal FROM Sales.SalesOrderHeader WITH(NOLOCK)

/* EJERCICIO 5 */

SELECT * FROM Production.Product WITH(NOLOCK)

SELECT COUNT(*) AS ProductosStockMayor FROM Production.Product WITH(NOLOCK)
WHERE SafetyStockLevel > 0

/* EJERCICIO 6 */

SELECT * FROM Sales.SalesOrderDetail WITH(NOLOCK)
SELECT * FROM Production.Product WITH(NOLOCK)

SELECT TOP 5 
    p.Name AS NombreProducto, SUM(s.OrderQty) AS VentaTotal FROM Sales.SalesOrderDetail s WITH(NOLOCK)
	INNER JOIN Production.Product p ON s.ProductID = p.ProductID
	GROUP BY p.ProductID, p.Name
	ORDER BY VentaTotal DESC;

/* EJERCICIO 7 */

SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.Customer

SELECT sc.CustomerID AS Cliente, s.TotalDue AS VentasHechas FROM Sales.SalesOrderHeader s WITH(NOLOCK)
	INNER JOIN Sales.Customer sc ON s.CustomerID = sc.CustomerID
	ORDER BY sc.CustomerID ASC;

/* Aqui termina el trabajo de hoy, ocupo dinero y chamba, asi que ahi nos vemos */
/* Si /*