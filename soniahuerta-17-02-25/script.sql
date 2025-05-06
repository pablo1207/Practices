--Sonia Abigail Huerta Carrillo    19-02-2025
--evelin Michel Chavez Fragoza
--8C

--Ejercicio 1: Obtener los productos con un precio mayor a 1000 
--Instrucción: Muestra los nombres de los productos cuyo precio unitario es mayor a 1000, de la tabla Production.Product.

SELECT Name 
FROM Production.Product 
WHERE ListPrice > 1000;


--Ejercicio 2: Listar los códigos postales que empiezan con '98'
--Instrucción: Muestra todos los códigos postales de la tabla Person.Address que comiencen con '98'.

SELECT PostalCode 
FROM Person.Address 
WHERE PostalCode LIKE '98%';


--Ejercicio 3: Contar cuántos productos tienen un tamaño específico
--Instrucción: Cuenta cuántos productos tienen un tamaño específico (por ejemplo, "M") en la tabla Production.Product.
SELECT COUNT(*) AS TotalProductos
FROM Production.Product 
WHERE Size = 'M';

--Sonia Abigail Huerta Carrillo
--8c
--_____________________________________________________________________________________________________________________________

--Actividad de 4 a 7

/*Ejercicio 4: Obtener la venta total más alta
Instrucción: Encuentra la venta más alta (por monto total) registrada en la tabla Sales.SalesOrderHeader.*/
SELECT MAX(TotalDue) AS VentaMásAlta 
FROM Sales.SalesOrderHeader;

/*
Ejercicio 5: Contar cuántos productos tienen stock
Instrucción: Muestra cuántos productos tienen un StockLevel mayor a 0 en la tabla Production.Product.*/
SELECT COUNT(*) AS ProductosConStock 
FROM Production.Product 
WHERE SafetyStockLevel > 0;

/*
Ejercicio 6: Productos más vendidos
Instrucción: Obtén los 5 productos más vendidos según la cantidad.  
Pista: Usa las tablas Sales.SalesOrderDetail (detalles de las órdenes de venta) y Production.Product (productos).*/
SELECT TOP 5 p.Name, SUM(sod.OrderQty) AS CantidadVendida
FROM Sales.SalesOrderDetail sod
JOIN Production.Product p ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY CantidadVendida DESC;

/*Ejercicio 7: Obtener el total de ventas por cada cliente
Instrucción: Calcula el total de ventas (por cliente).
Pista: Usa las tablas Sales.SalesOrderHeader (encabezados de órdenes de venta) y Sales.Customer (clientes).*/ 
SELECT c.CustomerID, SUM(soh.TotalDue) AS TotalVentas
FROM Sales.SalesOrderHeader soh
JOIN Sales.Customer c ON soh.CustomerID = c.CustomerID
GROUP BY c.CustomerID
ORDER BY TotalVentas DESC;
