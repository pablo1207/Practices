--------------------------------------------------------EJERCICIOS CLASE----- FECHA: 19 / 02 /25-----------------------------------------------------------------------------------
USE AdventureWorks2022
--EJERCICIO 1:  Obtener los productos con un precio mayor a 1000----------------------------------------------------------------------------------------------
SELECT Name AS Producto, ListPrice AS Precio
FROM Production.Product
WHERE ListPrice > 1000
ORDER BY ListPrice DESC

--EJERCICIO 2: Listar los códigos postales que empiezan con '98'--------------------------------------------------------------------------------------------------------------------
SELECT PostalCode 
FROM Person.Address 
WHERE PostalCode LIKE '98%'

--EJERCICIO 3: Contar cuántos productos tienen un tama�o espec�fico------------------------------------------------------------------------------------------------------------------
SELECT Size, COUNT(*) AS Cantidad
FROM Production.Product
WHERE Size = 'L'
GROUP BY Size

--EJERCICIO 4: Obtener la venta total más alta-------------------------------------------------------------------------------------------------------------------------------------
SELECT TOP 1 SalesOrderID, TotalDue AS VentaTotal FROM Sales.SalesOrderHeader ORDER BY TotalDue DESC

--EJERCICIO 5: Contar cuántos productos tienen stock--------------------------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) AS ProductosConStock FROM Production.Product WHERE SafetyStockLevel > 0


--EJERCICIO 6: Productos más vendidos--------------------------------------------------------------------------------------------------------------------------------------------

SELECT TOP 5 P.Name AS Producto, SUM(SOD.OrderQty) AS CantidadVendida FROM Sales.SalesOrderDetail SOD JOIN Production.Product P ON SOD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY CantidadVendida DESC


--EJERCICIO 7: Obtener el total de ventas por cada cliente----------------------------------------------------------------------------------------------------------------------------
SELECT C.CustomerID, C.PersonID, SUM(SOH.TotalDue) AS TotalGastado FROM Sales.SalesOrderHeader SOH JOIN Sales.Customer C ON SOH.CustomerID = C.CustomerID
GROUP BY C.CustomerID, C.PersonID
ORDER BY TotalGastado DESC


