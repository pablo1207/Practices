/*EJERCICIOS DEL DÍA 19 DE FEBRERO DEL 2025
    POR: DANIELA AILYN RODRIGUEZ DIAZ*/

/*Ejercicio 1: Obtener los productos con un precio mayor a 1000
Instrucción: Muestra los nombres de los productos cuyo precio unitario es mayor a 1000, de la tabla Production.Product.*/

        USE AdventureWorks2022

        /*Para toda la información*/
        SELECT * FROM [Production].[Product] WHERE ListPrice > 1000

        /*Solo nombres y precios*/
        SELECT Name, ListPrice FROM [Production].[Product] WHERE ListPrice > 1000


/*Ejercicio 2: Listar los códigos postales que empiezan con '98'
Instrucción: Muestra todos los códigos postales de la tabla Person.Address que comiencen con '98'.*/

        USE AdventureWorks2022

        /* Muestra toda la información*/
        SELECT * FROM [Person].[Address] WHERE PostalCode LIKE '98%'

        /*Muestra la dirección y el código postal*/
        SELECT AddressLine1, PostalCode FROM [Person].[Address] WHERE PostalCode LIKE '98%'

/*Ejercicio 3: Contar cuántos productos tienen un tamaño específico
Instrucción: Cuenta cuántos productos tienen un tamaño específico (por ejemplo, "M") en la tabla Production.Product.*/

        /*Para G*/
        SELECT COUNT(WeightUnitMeasureCode)  FROM [Production].[Product] WHERE WeightUnitMeasureCode = 'G'

        /*Para LB*/
        SELECT COUNT(WeightUnitMeasureCode)  FROM [Production].[Product] WHERE WeightUnitMeasureCode = 'LB'


/*EJERCICIOS REALIZADOS EL DÍA 20 DE FEBRERO DEL 2025*/

/*Ejercicio 4: Obtener la venta total más alta
Instrucción: Encuentra la venta más alta (por monto total) registrada en la tabla Sales.SalesOrderHeader.*/

        SELECT MAX(TotalDue) FROM [Sales].[SalesOrderHeader]

/*Ejercicio 5: Contar cuántos productos tienen stock
Instrucción: Muestra cuántos productos tienen un StockLevel mayor a 0 en la tabla Production.Product.*/

        SELECT COUNT(*) AS Products FROM [Production].[Product] WHERE SafetyStockLevel > 0

/*Ejercicio 6: Productos más vendidos
Instrucción: Obtén los 5 productos más vendidos según la cantidad.

Pista: Usa las tablas Sales.SalesOrderDetail (detalles de las órdenes de venta) y Production.Product (productos).*/

        SELECT TOP 5 p.ProductID, p.Name AS Name, SUM(sod.OrderQty) AS TotalQuantitySold
	FROM Sales.SalesOrderDetail sod
	JOIN Production.Product p 
        ON sod.ProductID = p.ProductID
	GROUP BY p.ProductID, p.Name
	ORDER BY TotalQuantitySold DESC

/*Ejercicio 7: Obtener el total de ventas por cada cliente
Instrucción: Calcula el total de ventas (por cliente).

Pista: Usa las tablas Sales.SalesOrderHeader (encabezados de órdenes de venta) y Sales.Customer (clientes).*/

        SELECT c.CustomerID, SUM(soh.TotalDue) AS TotalSales
        FROM Sales.SalesOrderHeader soh
        JOIN Sales.Customer c 
        ON soh.CustomerID = c.CustomerID
        GROUP BY c.CustomerID
        ORDER BY TotalSales DESC