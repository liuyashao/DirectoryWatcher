CREATE TABLE br_ShoppingCart (
OrgId Int not null,
CompanyName varchar(100) not null,
Lno varchar(50) not null,
Description varchar(100) not null,
Qty Int not null,
FactoryLno varchar(50), 
Brand varchar(30),
SubAttrib01 varchar(200), 
SubAttrib02 varchar(50),
SubAttrib03 varchar(30),
Guid varchar(50) not null,
ShoppingDate timestamp,
CONSTRAINT PK_br_ShoppingCart PRIMARY KEY (OrgId, Lno)
)
go

create index idx_br_ShoppingCart_Guid on br_ShoppingCart(Guid)
go

