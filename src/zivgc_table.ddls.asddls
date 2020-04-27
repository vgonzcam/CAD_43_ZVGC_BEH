@AbapCatalog.sqlViewName: 'ZVIVGC_TABLE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data model for TRAV_01'

define root view zivgc_TAble as select from zvg_table as travel 
{
  key mykey,
  key descr
}
