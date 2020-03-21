Create VIEW vInventoryByType AS
SELECT ProductTypeName,ProductSubtypeName,DateOfInventory,InventoryLevel
From InventoryFact
INNER JOIN DimProduct
    ON InventoryFact.ProductCode = DimProduct.ProductCode
INNER JOIN DimProductSubtype
    ON DimProduct.ProductSubtypeCode = DimProductSubtype.ProductSubtypeCode
INNER JOIN DimProductType
    ON DimProductSubtype.ProductTypeCode = DimProductType.ProductTypeCode