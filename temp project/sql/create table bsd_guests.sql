create table bsd_guests(
Code varchar(30) not null,
Name varchar(60) not null,
StoreNo varchar(10) not null,
IsGuest int default 0,
IsSupplier int default 0,

Province varchar(20),
City varchar(20),
AddressProvince varchar(20),
AddressCity varchar(20),
AddressCounty varchar(20),
AddressTown varchar(20),
AddressDetail varchar(100),

LinkMan varchar(30),
HandPhone varchar(30),
Telephone varchar(30),
OtherPhone varchar(30),
Fax varchar(30),

Email varchar(50),
TaxNumber varchar(30),
Bank varchar(30),
BankNumber varchar(30),
InvoAddress varchar(100),

MaxAmount decimal(15, 4) default 5000,
AccountLimitDays int,

PYCode varchar(60), 
Remark varchar(200),

PrePay decimal(15, 4) default 0,
PreIncome decimal(15, 4) default 0,
WillPay decimal(15, 4) default 0,
WillIncome decimal(15, 4) default 0,
Balance decimal(15, 4) default 0,

CreateDate timestamp default current_timestamp,
LastBuyDate timestamp,
LastSaleDate timestamp,

CONSTRAINT PK_bsd_guests PRIMARY KEY (Code)
)
go

create index idx_guests_Name on bsd_guests(Name)
go

create index idx_guests_IsGuest on bsd_guests(IsGuest)
go

create index idx_guests_IsSupplier on bsd_guests(IsSupplier)
go


 