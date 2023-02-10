select "Customer"."FirstName","Customer"."LastName","Order"."OrderDate","Order"."ShippedDate","Part"."ItemName","Part"."ItemNumber","Order"."Quantity","Order"."Cost"
from "Order"
inner join "Customer" on "Customer"."Id"="Order"."CustomerId"
inner join "Part" on "Part"."Id"="Order"."PartId"
where "Customer"."CustomerNumber"=419
order by "Customer"."LastName"