create table bsd_Store(
StoreNo varchar(10) not null,
Name varchar(100) not null,
Id int not null,
LinkPerson varchar(20),
Telphone varchar(100),
AddressProvince varchar(20),
AddressCity varchar(20),
AddressCounty varchar(20),
AddressTown varchar(20),
AddressDetail varchar(100),
CONSTRAINT PK_bsd_Store PRIMARY KEY (StoreNo)
)

go

create unique index idx_bsd_Store_Id on bsd_Store(Id)
go

create unique index idx_bsd_Store_Name on bsd_Store(Name)
go
