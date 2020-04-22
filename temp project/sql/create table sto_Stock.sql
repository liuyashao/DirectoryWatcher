create table sto_Stock(
Id INT NOT NULL PRIMARY KEY,
WHCode varchar(10) not null,
GoodsCode varchar(50) not null,
QtyY decimal(18, 2) not null default 0;
SpecY decimal(18, 2) not null, 
Lot varchar(30) default '',
Seat varchar(30) default '',
CostPrice decimal(18, 4) not null default 0,
LastInDate timestamp,
LastOutDate timestamp
)


create index idx_sto_Stock_WHCode on sto_Stock(WHCode, GoodsCode, SpecY, Lot, Seat) 
go

create index idx_sto_Stock_GoodsCode on sto_Stock(GoodsCode, WHCode) 
go

create index idx_sto_Stock_SpecY on sto_Stock(SpecY)
go

create index idx_sto_Stock_Lot on sto_Stock(Lot)
go

create index idx_sto_Stock_Seat on sto_Stock(Seat)
go

 
