##Step 3: Projection view for Parent

@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
@UI: {
    headerInfo: {
        typeName: 'Employee',
        typeNamePlural: 'Employees',
        title: { type: #STANDARD, value: 'EmpName' }
    }
}
define root view entity ZC_Employee_ENH
  as projection on ZI_Employee_ENH
{
  key EmpID,
      EmpName,
      Department,
      EmpStatus,
      _EmpStatus : redirected to composition child ZC_EmpStatus_ENH
}
