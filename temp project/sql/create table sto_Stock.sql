create table sto_Stock(
Id INT NOT NULL PRIMARY KEY,
StoreNo varchar(20) not null,
GoodsCode varchar(50) not null,
Qty decimal(18, 2) not null default 0;
SpecY decimal(18, 2) not null, 
Lot varchar(30),
Seat varchar(30),
CostPrice decimal(18, 4) not null default 0,
LastInDate timestamp,
LastSaleDate timestamp
)
go

create index idx_sto_Stock_GoodsCode on sto_Stock(GoodsCode, StoreNo) 
go

create index idx_sto_Stock_StoreNo on sto_Stock(StoreNo, GoodsCode, SpecY, Lot, Seat)
go

create index idx_sto_Stock_Qty on sto_Stock(Qty)
go

create index idx_sto_Stock_Lot on sto_Stock(Lot)
go

create index idx_sto_Stock_Seat on sto_Stock(Seat)
go

 
