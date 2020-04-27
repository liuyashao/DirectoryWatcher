create table sto_GoodsIO(
Id BIGINT NOT NULL PRIMARY KEY,
GoodsCode varchar(50) not null,
WHId int not null,
Lot varchar(30) not null default '',
Seat varchar(30)not null default '',
SpecY decimal(18, 2),

BillType varchar(30),
BillNo varchar(30),

InQtyY decimal(18, 2),
InPiece int,

OutQtyY decimal(18, 2),
OutPiece int, 

CostPriceY decimal(18, 4),
CostAmount decimal(18, 4),

GuestCode varchar(20),
GuestName varchar(60)
)
go

create index idx_GoodsIO_GoodsCode on sto_GoodsIO(GoodsCode, BillType, StoreId) 
go

create index idx_GoodsIO_StoreId on sto_GoodsIO(StoreId, GoodsCode, BillType)
go

create index idx_GoodsIO_BillType on sto_GoodsIO(BillType, GoodsCode, StoreId)
go
