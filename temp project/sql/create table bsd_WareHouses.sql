create table bsd_WareHouses(
Id int not null,
Name varchar(50) not null,
StoreNo varchar(10) not null,
SpecFlag int default 0,
LotFlag int default 0,
SeatFlag int default 0,
MinusFlag int default 0,
CostManageType int default 1 not null,
--1为移动平均  2为批次计价
--批次计价时，LotFlag必须为1
Remark varchar(200),
CONSTRAINT PK_bsd_WareHouses PRIMARY KEY (Id)
)
go

create index idx_bsd_WareHouses_StoreNo on bsd_WareHouses(StoreNo)
go

create view vwCostManageType 
as
select * from (
select cast(1 as int) as CostManageType, cast('移动平均' as varchar(20)) as CostManageTypeName FROM RDB$DATABASE union all
select cast(2 as int) as CostManageType, cast('批次计价' as varchar(20)) as CostManageTypeName FROM RDB$DATABASE
) a
go