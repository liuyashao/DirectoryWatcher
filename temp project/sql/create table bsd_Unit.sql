create table bsd_Unit(
Unit varchar(10) not null primary key,
IsSys int default 0
end);
go

insert into bsd_Unit(Unit, IsSys) values('码', 1);
go

insert into bsd_Unit(Unit, IsSys) values('米', 1);
go

insert into bsd_Unit(Unit, IsSys) values('支', 1);
go