select emp.firstName as "Employee First Name", 
emp.lastName as "Employee Last Name",
mgr.firstName as "Manager First Name",
mgr.lastName as "Manager Last Name"
from employee emp
inner join employee mgr on
mgr.employeeId = emp.managerId
;