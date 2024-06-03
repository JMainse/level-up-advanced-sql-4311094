SELECT cstmr.firstName, cstmr.lastName, sls.salesAmount, sls.soldDate
FROM customer cstmr
FULL OUTER JOIN sales sls ON cstmr.customerId = sls.customerId
;

/*Apparently FULL OUTER JOINS aren't supported in SQLite, so their proposed solution
involved using 2 union statements to stitch together 3 queries.
1 for Customer and Sales data that matched.
1 for where there's Customer data but no Sales data.
1 for where there's Sales data but no Customer data.