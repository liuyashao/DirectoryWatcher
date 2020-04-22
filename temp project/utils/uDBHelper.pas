unit uDBHelper

interface

uses
  SysUtils;
  
type
  TWHProperty = record
    Code: string;
    Name: string;
    StoreNo: string;
    SpecFlag: Boolean;
    LotFlag: Boolean;
    SeatFlag: Boolean;
    //CostManageType varchar(20) not null check(CostManageType in ('移动平均', '批次计价'))  
  end;

  TDBHelper = class  
  public
    class function StockWHFlagFrom(const WHCode, GoodsCode, Lot, Seat: string; SpecY: Double): string; static; 
    class function GetWHProperty(const WHCode: string): TWHProperty; 	
  end;
  
implementation

class function TDBHelper.StockWHFlagFrom(const WHCode, GoodsCode, Lot, Seat: string; SpecY: Double): string;
begin
  Result := Format(#13#10'from sto_Stock a join bsd_WareHouses b on a.WHCode=b.WHCode'
                   #13#10'where a.WHCode=%s and GoodsCode=%s and (a.SpecY=%.2f or b.SpecFlag=0) and (a.Lot=%s or b.LotFlag=0) and (a.Seat=%s or b.SeatFlag=0)',
            [WHCode, GoodsCode, SpecY, Lot, Seat]);				   
end;

class function TDBHelper.GetWHProperty(const WHCode: string): TWHProperty;
begin

end;

end.