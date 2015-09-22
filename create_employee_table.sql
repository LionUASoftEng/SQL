create table employee
(
id 		uuid 			not null,
firstname 	character varying(50) 	not null default ''::character varying,
lastname 	character varying(50) 	not null default ''::character varying,
employeeid 	int 			not null default ((0)),
active 		boolean 		not null default ((TRUE)),
classification 	character(5),
manager 	uuid 			references employee(id),
password 	character varying(50) 	default (''),
createdon 	timestamp 		without time zone not null default now(),
constraint 	employee_pkey 		primary key (id),
constraint 	classificationRange 	CHECK (classification IN ('gm', 'sm', 'cash'))
)
WITH ( OIDS = FALSE );

