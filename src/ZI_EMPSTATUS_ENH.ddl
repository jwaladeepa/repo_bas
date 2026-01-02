##Step 2: CDS view for Child

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for Child Table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_EMPSTATUS_ENH
  as select from zempstatus_enh
  association to parent ZI_EMPLOYEE_ENH as _Employee on
                                $projection.Empid     = _Employee.EmpId
{
  key status_id  as StatusID,
  key emp_id     as Empid,
      emp_status as EmpStatus,
      _Employee
}
