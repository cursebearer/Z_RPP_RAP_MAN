@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Value Help Products'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZC_RPP_PRODUCT_VH 
as select from ZR_RPP_PRODUCT
{
    @ObjectModel.text.element: [ 'Description' ]
    @EndUserText.label: 'Id Produto'
    key ProductId,
    
    @Semantics.text: true
    @EndUserText.label: 'Desc Produto'
    Description
}

group by 
    ProductId,
    Description
