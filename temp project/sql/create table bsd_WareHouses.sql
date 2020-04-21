create table bsd_WareHouses(
WHCode varchar(10) not null primary key,
WHName varchar(100) not null,
StoreNo varchar(20) not null,
SpecFlag int default 0，
LotFlag int default 0，
SeatFlag int default 0，
CostManageType varchar(20) not null check(CostManageType in ('移动平均', '批次计价'))
--批次计价时，LotFlag必须为1
)