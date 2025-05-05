/*
SELECT * FROM Sales.
SELECT * FROM Production.
SELECT * FROM Purchasing.
SELECT * FROM HumanResources.
SELECT * FROM Person.
*/

USE AdventureWorks2017

/*Ejercicio 1: Obtener los productos con un precio mayor a 1000
Instrucción: Muestra los nombres de los productos cuyo precio unitario es mayor a 1000, de la tabla Production.Product.*/
SELECT ProductNumber,Name,ListPrice FROM Production.Product WHERE ListPrice >1000

/*Ejercicio 2: Listar los códigos postales que empiezan con '98'
Instrucción: Muestra todos los códigos postales de la tabla Person.Address que comiencen con '98'.*/
SELECT DISTINCT PostalCode FROM Person.Address WHERE PostalCode LIKE '98%';

/*Ejercicio 3: Contar cuántos productos tienen un tamaño específico
Instrucción: Cuenta cuántos productos tienen un tamaño específico (por ejemplo, "M") en la tabla Production.Product.*/
SELECT COUNT(*) FROM Production.Product WHERE Size = 'M';

USE AdventureWorks2017

/*Ejercicio 4: Obtener la venta total más alta
Instrucción: Encuentra la venta más alta (por monto total) registrada en la tabla Sales.SalesOrderHeader.*/
SELECT MAX(TotalDue) AS 'Venta más alta' FROM Sales.SalesOrderHeader

/*Ejercicio 5: Contar cuántos productos tienen stock
Instrucción: Muestra cuántos productos tienen un StockLevel mayor a 0 en la tabla Production.Product.*/
SELECT *FROM Production.Product WHERE SafetyStockLevel > 1

/*Ejercicio 6: Productos más vendidos
Instrucción: Obtén los 5 productos más vendidos según la cantidad.

Pista: Usa las tablas Sales.SalesOrderDetail (detalles de las órdenes de venta) y Production.Product (productos).*/
SELECT TOP 5 *FROM Sales.SalesOrderDetail ORDER BY OrderQty DESC
