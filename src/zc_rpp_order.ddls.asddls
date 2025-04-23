@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consumo Order'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity ZC_RPP_ORDER 
  provider contract transactional_query 
  as projection on ZI_RPP_ORDER
{
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpp_order_VH',  element: 'Orderid' }, useForValidation: true }]
  key Orderid,
      @ObjectModel.text.element: [ 'CustomerName' ]
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpp_customer_VH',  element: 'CustomerId' }, useForValidation: true }]
      Customer,
      CustomerName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpp_vendor_VH',  element: 'VendorId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'VendorName' ]
      Vendor,
      VendorName,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'zc_rpp_company_VH',  element: 'CompanyId' }, useForValidation: true }]
      @ObjectModel.text.element: [ 'CompanyName' ]
      Company,
      CompanyName,
      Usnam,
      /* Associations */
      _Itens: redirected to composition child ZC_RPP_ORDER_IT
}
