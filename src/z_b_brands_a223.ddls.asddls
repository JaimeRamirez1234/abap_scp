@AbapCatalog.sqlViewName: 'ZV_BRANDSL_A223'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'BRANDS'
define view Z_B_BRANDS_A223 
    as select from zrent_brands_a22
{
    key marca as Marca, 
    @UI.hidden: true
        url as Imagen
    
}
