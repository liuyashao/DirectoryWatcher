create table sto_GoodsIO(
Id INT NOT NULL PRIMARY KEY,
GoodsCode varchar(50) not null,
StoreNo varchar(20) not null,
Lot varchar(30) not null default '',
Seat varchar(30)not null default '' ,
SpecY decimal(18, 2) not null default 0,

GuestCode varchar(20),


BillType varchar(30),
BillNo varchar(30),

Operation varchar(40),--操作类型
OperationPerson varchar(30),--操作人
OccurDate timestamp,--时间

InQtyY decimal(18, 2),
In
InPiece int, 

OutQtyY decimal(18, 2),
OutPiece int, 


GuestCode varchar(20)
GuestName varchar(60)
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

 
