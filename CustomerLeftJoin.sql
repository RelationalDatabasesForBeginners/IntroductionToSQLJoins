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
