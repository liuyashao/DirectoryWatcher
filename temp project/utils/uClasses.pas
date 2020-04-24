unit uClasses

interface

uses
  SysUtils;
  
type 
  TCostManageType = (cmtMovingAverage=1, cmtLot=2);//('移动平均', '批次计价')
  
  TCostManageTypeHelper = record helper of TCostManageType
    function ToString: string;
	function ToInteger: Integer;
	class function Parse(const Str: string): TCostManageType; static;
  end
  
  TWHProperty = record
    Code: string;
    Name: string;
    StoreNo: string;
    SpecFlag: Boolean;
    LotFlag: Boolean;
    SeatFlag: Boolean;
    CostManageType: TCostManageType;
    class function LoadFromDB(const WHCode: string; Conn: TUniConn = nil): TWHProperty; static;	
  end;
  
  TGoodsProperty = record
    Code: string;
    Name: string;
    Group: string;
    ColorIndex: Integer;
    Color: string;
    SaleUnit: string;
    PurchaseUnit: string;
    SpecY: Double;
    SpecM: Double;
    SpecSaleY: Double;
	SpecSaleM: Double;
    Price: Double;
    Price: Double;
    MinPrice: Double;
    BottomCloth: string;
    Grain: string;
    Thick: string;
    Size: string;
    DefaultltSeat: string;
    FactoryCode: string;
    SupplierCode: string;
    SupplierName: string;
    Disabled: Boolean;
    PYCode: string;
	class function LoadFromDB(const GoodsCode: string; Conn: TUniConn): TWHProperty; static;
  end;
  
 implementation
 
 uses
   uFunc;
   
{ TCostManageTypeHelper }
   
function TCostManageTypeHelper.ToString: string;
begin
  case Self of
    cmtMovingAverage: Result := '移动平均';
	cmtLot: Result := '批次计价';
  end;	
end;

function TCostManageTypeHelper.ToInteger: Integer;
begin
  Result := Ord(Self):
end;

class function TCostManageTypeHelper.Parse(const Str: string): TCostManageType;
begin
  if SameTextEx(Str, ['移动平均', cmtMovingAverage.ToInteger.ToString]) then
    Result := cmtMovingAverage else
  if SameTextEx(Str, ['批次计价', cmtLot.ToInteger.ToString]) then
    Result := cmtLot
  else
    raise Exception.CreateFmt('can not Parse %s to TCostManageType type', [Str]);
end;

{ TWHProperty }

class function TWHProperty.LoadFromDB(const WHCode: string; Conn: TUniConn = nil): TWHProperty;
begin

end;

{ TGoodsProperty }

class function TGoodsProperty.LoadFromDB(const GoodsCode: string; Conn: TUniConn): TWHProperty;
begin

end;
  
end.