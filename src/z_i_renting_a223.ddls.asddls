@AbapCatalog.sqlViewName: 'ZV_RENTL_A223'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'RENTING'
@Metadata.allowExtensions: true
define view Z_I_RENTING_A223 
    as select from Z_B_CARS_A223 as Cars
    association [1] to Z_B_REM_DAYS_A23 as _RemDays on Cars.Matricula = _RemDays.Matricula
    association [0..*] to Z_B_BRANDS_A223 as _Brands on Cars.Marca = _Brands.Marca
    association [0..*] to Z_B_DET_CUSTOMERS_A223 as _DetCustomer on Cars.Matricula = _DetCustomer.Matricula
{
    key Matricula,
    Marca,
    Modelo,
    Color,
    Motor,
    Potencia,
    UndPotencia,
    Combustible,
    Consumo,
    FechaFabr,
    Puertas,
    Precio,
    Moneda,
    Alquilado,
    Desde,
    Hasta,
    
//     0 neutral grey
//     1 negative red
//     2 critical yellow
//     3 positive green
    
    case
        when _RemDays.Dias <= 0 then 0
        when _RemDays.Dias between 1 and 100 then 1
        when _RemDays.Dias between 101 and 300 then 2
        when _RemDays.Dias > 300 then 3 
        else 0
        end as TiempoRenta,
        ''  as Estado,
        
    _Brands.Imagen,
    _DetCustomer
    
    
}
