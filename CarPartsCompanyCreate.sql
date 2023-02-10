-- Create Customer Table
DROP TABLE IF EXISTS public."Order";
DROP TABLE IF EXISTS public."Customer";

CREATE TABLE IF NOT EXISTS public."Customer"
(
    "Id" serial,
    "CustomerNumber" integer,
    "FirstName" character varying(256),
    "LastName" character varying(256),
    "Address" character varying(256),
    "City" character varying(256),
    "State" character varying(256),
    "PostalCode" character varying(256),
    "Country" character varying(256),
    PRIMARY KEY ("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customer"
    OWNER to postgres;
    
-- Insert data
INSERT INTO public."Customer"(
	"CustomerNumber",
    "FirstName",
    "LastName",
    "Address",
    "City",
    "State",
    "PostalCode",
    "Country")
	VALUES 
	(305,'Joseph','Smith','14 Main St','Orlando','Florida','32789','USA'),
	(683,'Hank','Jones','26 Maple Ave','Guadalajara','Jalisco','45090','Mexico'),
	(501,'Martin','Lopez','22 Jamaica Ave','Queens','New York','11435','USA'),
	(511,'Benjamin','Franklin','317 Chectnut St','Philadelphia','Pennslyvania','14205','USA'),
	(419,'Albert','Einstein','112 Mercer St','Princeton','New Jersey','08540','USA'),
	(708,'Nikola','Tesla','8 West 40th Street','New York','New York','10018','USA');

-- Create Orders Table
DROP TABLE IF EXISTS public."Order";

CREATE TABLE IF NOT EXISTS public."Order"
(
    "Id" serial,
    "CustomerId" integer,
    "OrderDate" timestamp,
    "ShippedDate" timestamp,
    "ItemName" character varying(256),
    "ItemNumber" integer,
    "Quantity" integer,
    "Cost" money,
    PRIMARY KEY ("Id"),
    FOREIGN KEY ("CustomerId") REFERENCES "Customer"("Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Order"
    OWNER to postgres;
    
INSERT INTO public."Order"(
	"CustomerId",
    "OrderDate",
    "ShippedDate",
    "ItemName",
    "ItemNumber",
    "Quantity",
    "Cost")
	VALUES
(1,'2001-07-13','2001-08-21','Brakes',47109,9,359.82),
(1,'2003-08-21','2003-09-16','Lamp',50927,2,5.98),
(2,'2019-10-11','2019-10-11','Flange',90133,7,29.33),
(5,'2021-06-19','2021-06-21','Fan',715901,1,62.78),
(5,'2021-11-14','2021-11-26','Brakes',47109,4,159.92),
(5,'2022-04-17','2022-05-15','Lamp',50927,2,5.98),
(4,'2021-11-14','2021-11-26','Motor',39419,4,394.00),
(3,'2023-01-08','2023-01-19','Muffler',81945,1,89.99);
