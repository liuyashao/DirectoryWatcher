unit uClasses

interface

uses
  SysUtils;
  
type 
  TCostManageType = (cmtMovingAverage=1, cmtLot=2);//('移动平均', '批次计价')
  
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
	class function LoadFromDB(const WHCode: string; Conn: TUniConn): TWHProperty; static;
  end;
  
 implementation
 
 uses
   uFunc;
  
 end.