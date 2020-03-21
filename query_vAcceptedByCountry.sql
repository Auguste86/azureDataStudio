CREATE OR ALTER VIEW vAcceptedByCountry AS
SELECT DimCountry.CountryCode 'country code', CountryName 'country name',PlantName 'plant name',DateOfManufacture 'the date of manufacture',AcceptedProducts 'the number of accepted products  '
from ManufacturingFact 
INNER JOIN DimMachine
    on ManufacturingFact.MachineNumber = DimMachine.MachineNumber
INNER JOIN  DimPlant
    on DimMachine.PlantNumber = DimPlant.PlantNumber
INNER JOIN  DimCountry
    on DimPlant.CountryCode = DimCountry.CountryCode