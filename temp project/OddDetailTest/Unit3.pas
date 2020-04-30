unit Unit3;

interface

uses
  SysUtils, System.Classes, System.Generics.Defaults, System.Generics.Collections,
  DB, rtti;

type
  TCostManageType = (A, B);

  TWHProperty = record
  private class var
    FLock: TObject;
	  FCaches: TDictionary<Integer, TWHProperty>;
	  class constructor Create;
	  class destructor Destroy;
    class function TryGet(Id: Integer; out Value: TWHProperty): Boolean; static;
  private
    FNotFound: Boolean;
    FId: Integer;
    FName: string;
    FStoreNo: string;
    FSpecFlag: Boolean;
    FLotFlag: Boolean;
    FSeatFlag: Boolean;
    FCostManageType: TCostManageType;
  public
    property Id: Integer read FId;
    property Name: string read FName;
    property StoreNo: string read FStoreNo;
    property SpecFlag: Boolean read FSpecFlag;
    property LotFlag: Boolean read FLotFlag;
    property SeatFlag: Boolean read FSeatFlag;
    property CostManageType: TCostManageType read FCostManageType;
    procedure ResetLotAndSeatFieldValue(DataSet: TDataSet;
      const LotFieldName: string = 'Lot'; const SeatFieldName: string = 'Seat');
    function ExistsBusiness: Boolean;
  public
    class procedure ClearCache; static;
  end;

function TryGetWH(Id: Integer; out Value: TWHProperty): Boolean; inline;
function WH(Id: Integer): TWHProperty; inline;

implementation

uses System.Math, spFunc;

function WH(Id: Integer): TWHProperty;
begin
  if not TryGetWH(Id, Result) then
    raise Exception.CreateFmt('can not find Id[%d] warehouse', [Id]);
end;

function TryGetWH(Id: Integer; out Value: TWHProperty): Boolean;
begin
  Result := TWHProperty.TryGet(Id, Value);
end;

{ TWHProperty }

class constructor TWHProperty.Create;
begin
  FLock := TObject.Create;
  FCaches := TDictionary<Integer, TWHProperty>.Create;
end;

class destructor TWHProperty.Destroy;
begin
  FLock.Free;
  FCaches.Free;
end;

class procedure TWHProperty.ClearCache;
begin
  System.TMonitor.Enter(FLock);
  try
    FCaches.Clear;
  finally
    System.TMonitor.Exit(FLock);
  end;
end;

class function TWHProperty.TryGet(Id: Integer; out Value: TWHProperty): Boolean;

  function LoadFromDB(Id: Integer): TWHProperty;
  begin
    Result.FId := Id;
    Result.FNotFound := Odd(Id);
  end;

begin
  System.TMonitor.Enter(FLock);
  try
    if not FCaches.TryGetValue(Id, Value) then begin
      Value := LoadFromDB(Id);
      FCaches.Add(Id, Value);
    end;
    Result := not Value.FNotFound;
  finally
    System.TMonitor.Exit(FLock);
  end;
end;

procedure TWHProperty.ResetLotAndSeatFieldValue(DataSet: TDataSet;
  const LotFieldName, SeatFieldName: string);
var
  LotField: TField;
  SeatField: TField;
  This: TWHProperty;
begin
  if DataSet.IsEmpty then
    Exit;
  LotField := DataSet.FindField(LotFieldName);
  SeatField := DataSet.FindField(SeatFieldName);
  if (Assigned(LotField) and IsStringFieldType(LotField.DataType)) or
     (Assigned(SeatField) and IsStringFieldType(SeatField.DataType))
  then begin
    This := Self;
    ForEachRecord(DataSet, procedure (DataSet: TDataSet)
    begin
      DataSet.Edit;
      if not This.LotFlag and Assigned(LotField) then
        LotField.AsString := '';
      if not This.SeatFlag and Assigned(SeatField) then
        SeatField.AsString := '';
      DataSet.Post;
    end);
  end;
end;

function TWHProperty.ExistsBusiness: Boolean;
begin
  Result := False;
end;

end.
