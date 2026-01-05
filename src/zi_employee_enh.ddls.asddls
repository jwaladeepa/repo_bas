
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS view for Parent Table'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_EMPLOYEE_ENH as select from zemployee_enh
    composition [0..*] of ZI_EMPSTATUS_ENH as _EmpStatus
{
    key emp_id as EmpId,
    emp_status as EmpStatus,
    emp_name as EmpName,
    dept as Department,
    _EmpStatus
}
