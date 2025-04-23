@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consuption Order Itens'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZC_RPP_ORDER_IT 
as projection on zi_rpp_order_it
{
    key OrderId,
    key Item,
    @ObjectModel.text.element: [ 'Description' ]
    @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpp_product_VH',  element: 'ProductId' }, useForValidation: true }]
    Product,
    Description,
    Value,
    Currency,
    Quantity,
    SalesPrice,
    UnityMeasure,
    /* Associations */
    _Order: redirected to parent ZC_RPP_ORDER,
    _Product
}
