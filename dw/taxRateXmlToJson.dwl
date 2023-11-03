%dw 2.0

/* Define your inputs and output here. */

input payload application/xml //'payload' variable that will be holding the incoming payload. Apex will pass this information*/
output application/json
---
{
    "TaxRates":{
        "Rate":(payload.root.*row map{
            "ZipCode":$.ZipCode,
            "State": $.State,
            "County": $.County,
            "NormalizedCounty":$.NormalizedCounty,
            "City": $.City,
            "NormalizedCity": $.NormalizedCity,
            "TaxRegionName":$.TaxRegionName,
            "NormalizedTaxRegionName": $.NormalizedTaxRegionName,
            "CombinedRate": $.CombinedRate,
            "StateRate":$.StateRate,
            "CountyRate": $.CountyRate,
            "CityRate": $.CityRate,
            "SpecialRate":$.SpecialRate,
            "EstimatedPopulation": $.EstimatedPopulation,
            "Year": $.Year,
            "Month": $.Month
        } )
    }
}