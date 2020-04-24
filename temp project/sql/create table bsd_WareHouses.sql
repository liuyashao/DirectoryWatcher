create table bsd_WareHouses(
WHCode varchar(10) not null primary key,
WHName varchar(50) not null,
StoreNo varchar(20) not null,
SpecFlag int default 0,
LotFlag int default 0,
SeatFlag int default 0,
MinusFlag int default 0,
CostManageType int not null default 1,
--1为移动平均  2为批次计价
--批次计价时，LotFlag必须为1
Remark varchar(200),
)