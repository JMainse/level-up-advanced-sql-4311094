/*Find Salespeople who have zero sales*/
--Sales Person

SELECT *
FROM employee emp
LEFT JOIN sales sal ON emp.employeeId = sal.employeeId
WHERE sal.salesAmount IS NULL
AND emp.title = 'Sales Person'
;