# Practices
Introducción

La base de datos AdventureWorks es una base de datos de muestra proporcionada por Microsoft que representa el esquema y datos de una empresa ficticia que vende productos de bicicletas y accesorios. Esta base de datos es ampliamente utilizada para aprender y practicar con SQL y bases de datos relacionales.

La empresa ficticia, AdventureWorks Cycles, opera en múltiples áreas de negocio, incluyendo la fabricación, ventas, compras, marketing y recursos humanos. La base de datos simula las operaciones de una empresa real, permitiendo a los usuarios experimentar con diferentes escenarios empresariales.

Estructura General de la Base de Datos

La base de datos está organizada en varias áreas clave que representan las operaciones de la empresa. Las principales áreas son:

1. Ventas y Clientes

Sales.SalesOrderHeader y Sales.SalesOrderDetail: Estas tablas almacenan los pedidos de venta y los detalles de cada pedido, respectivamente.

Sales.Customer: Contiene información sobre los clientes.

Sales.SpecialOfferProduct: Almacena las ofertas especiales aplicadas a productos.

2. Productos

Production.Product: Almacena información sobre los productos vendidos por la empresa, como nombres, precios y otros detalles relevantes.

Production.ProductCategory y Production.ProductSubcategory: Tablas que organizan los productos en categorías y subcategorías.

Production.ProductModel: Contiene información sobre los modelos de productos.

3. Compras

Purchasing.PurchaseOrderHeader y Purchasing.PurchaseOrderDetail: Almacenan información sobre las órdenes de compra realizadas a los proveedores.

Purchasing.Vendor: Contiene información sobre los proveedores de la empresa.

4. Almacén e Inventario

Production.ProductInventory: Almacena información sobre el inventario de productos en diferentes almacenes.

Production.Location: Contiene los detalles de las ubicaciones de los almacenes.

5. Recursos Humanos

HumanResources.Employee: Almacena datos de los empleados, como títulos de trabajo y fechas de contratación.

HumanResources.Department: Información sobre los departamentos dentro de la empresa.

6. Geografía y Direcciones

Person.Address: Contiene detalles de las direcciones físicas utilizadas para clientes, empleados y proveedores.

Person.StateProvince: Almacena información sobre los estados o provincias.

Person.CountryRegion: Contiene datos sobre los países y regiones donde opera la empresa.

7. Finanzas

Sales.SalesOrderHeader: Contiene datos financieros de los pedidos, incluyendo el monto total de la venta.

Purchasing.PurchaseOrderHeader: Almacena información financiera sobre las compras realizadas a los proveedores.
