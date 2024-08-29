@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL_A23'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Details Customer'
@Metadata.allowExtensions: true
define view Z_B_DET_CUSTOMERS_A223 
    as select from zrent_customers2
{
    
    key doc_id as ID,
    key matricula as Matricula,
        nombres as Nombre,
        apellidos as Apellidos,
        email as Correo,
        cntr_type as TipoContrato
    
    
}
