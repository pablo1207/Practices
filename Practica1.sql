/*Practices 2/14/2025*/

/*Ejercicio 1: Obtener los productos con un precio mayor a 1000
Instrucción: Muestra los nombres de los productos cuyo precio unitario es mayor a 1000, de la tabla Production.Product.*/

--Usar base de datos 
USE AdventureWorks2017

SELECT * FROM Production.Product;
SELECT Name FROM Production.Product WHERE ListPrice > 1000;
-------------------------------------------------------------------------------------------------
/*Ejercicio 2: Listar los códigos postales que empiezan con '98'
Instrucción: Muestra todos los códigos postales de la tabla Person.Address que comiencen con '98'.*/

 SELECT * FROM Person.Address;
SELECT PostalCode FROM Person.Address WHERE PostalCode LIKE '98%';
-------------------------------------------------------------------------------------------------------
/*Ejercicio 3: Contar cuántos productos tienen un tamaño específico
Instrucción: Cuenta cuántos productos tienen un tamaño específico (por ejemplo, "M") en la tabla Production.Product.*/

SELECT COUNT(*) FROM Production.Product WHERE Size = 'M';
---------------------------------------------------------------------------------------------------
/*Ejercicio 4: Obtener la venta total más alta
Instrucción: Encuentra la venta más alta (por monto total) registrada en la tabla Sales.SalesOrderHeader.*/
SELECT TOP 1 * FROM Sales.SalesOrderHeader ORDER BY TotalDue DESC;
----------------------------------------------------------------------------------------------------

/*Ejercicio 5: Contar cuántos productos tienen stock
Instrucción: Muestra cuántos productos tienen un StockLevel mayor a 0 en la tabla Production.Product.*/
SELECT COUNT(*) FROM Production.Product WHERE SafetyStockLevel > 0; 
----------------------------------------------------------------------------------------------------

/*Ejercicio 6: Productos más vendidos
Instrucción: Obtén los 5 productos más vendidos según la cantidad.*/
SELECT TOP 5 ProductID, SUM(OrderQty) AS TotalSold
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY TotalSold DESC;
------------------------------------------------------------------------------------------------------

/*Pista: Usa las tablas Sales.SalesOrderDetail (detalles de las órdenes de venta) y Production.Product (productos).*/

/*Ejercicio 7: Obtener el total de ventas por cada cliente
Instrucción: Calcula el total de ventas (por cliente).*/
SELECT CustomerID, SUM(TotalDue) AS TotalVentas
FROM sales.salesorderheader
GROUP BY CustomerID;

/*Pista: Usa las tablas Sales.SalesOrderHeader (encabezados de órdenes de venta) y Sales.Customer (clientes).*/