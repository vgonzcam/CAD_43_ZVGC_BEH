@EndUserText.label: 'Projection View For Table'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true

@UI: {
 headerInfo: { typeName: 'Key', typeNamePlural: 'Keys', title: { type: #STANDARD, value: 'mkey' } } }

define root view entity zcvgc_TABLE as projection on zivgc_TAble {
      
    @Search.defaultSearchElement: true  
    @UI: { lineItem:       [ { position: 10, importance: #HIGH } ],
           identification: [ { position: 10, label: 'Key' } ] ,
           selectionField: [ { position: 10 } ] }
           
    @UI.facet: [ { id:          'Key',
                   purpose:     #STANDARD,
                   type:        #IDENTIFICATION_REFERENCE,
                   label:       'Key',
                   position:     10 } ]
   
    key mykey              as mkey,
    
    @UI: { lineItem:       [ { position: 20, importance: #HIGH } ],
           identification: [ { position: 20, label: 'Descr' } ] ,
           selectionField: [ { position: 20 } ] }
    
    key descr              as descr
}


