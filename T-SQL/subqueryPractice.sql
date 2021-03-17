SELECT CustomerID, AccountNumber
FROM sales.Customer
WHERE EXISTS (
    -- Select rows from a Table or View '[salesOrderheader]' in schema '[sales]'
    SELECT * FROM [Sales].[salesOrderheader] as soh 
    WHERE soh.CustomerID = Customer.CustomerID/* add search conditions here */
    
)

SELECT CustomerID , AccountNumber
FROM sales.Customer
WHERE Not EXISTS (
    SELECT * FROM sales.SalesOrderHeader as soh 
    where soh.CustomerID = Customer.CustomerID
)

