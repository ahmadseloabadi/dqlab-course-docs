select CustomerName, ContactName, City, PostalCode from Customers UNION select SupplierName, ContactName, City, PostalCode from Suppliers;

