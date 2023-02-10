-- Script for YouTube Video "Introduction to SQL Joins": https://youtu.be/Mkhf0pPxefQ
-- YouTube Channel: https://www.youtube.com/@DatabasesAndSQLForBeginners
--
SELECT 
"Customer"."FirstName",
"Customer"."LastName",
"Order"."OrderDate",
"Order"."ShippedDate",
"Order"."ItemName",
"Order"."ItemNumber",
"Order"."Quantity",
"Order"."Cost"
FROM "Customer"
left join "Order" on "Customer"."Id" = "Order"."CustomerId"
order by "Customer"."LastName"
