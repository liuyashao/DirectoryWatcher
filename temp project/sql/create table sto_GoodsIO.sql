create table sto_GoodsIO(
Id BIGINT NOT NULL PRIMARY KEY,
GoodsCode varchar(50) not null,
StoreNo varchar(20) not null,
Lot varchar(30) not null default '',
Seat varchar(30)not null default '',

BillType varchar(30),
BillNo varchar(30),

InQtyY decimal(18, 2),
InPiece int,
OutQtyY decimal(18, 2),
OutPiece int, 
CostAmount decimal(18, 4),

GuestCode varchar(20),
GuestName varchar(60)
)
go

create index idx_GoodsIO_GoodsCode on sto_GoodsIO(GoodsCode, BillType, StoreNo) 
go

create index idx_GoodsIO_StoreNo on sto_GoodsIO(StoreNo, GoodsCode, BillType)
go

create index idx_GoodsIO_BillType on sto_GoodsIO(BillType, GoodsCode, StoreNo)
go
