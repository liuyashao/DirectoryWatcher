unit uOddDetailUtils;

interface

uses
  SysUtils, Classes, System.Generics.Defaults, System.Generics.Collections;

type
  TOddUnit = (ouYard, ouMetre);

  TOddUnitHelper = record helper for TOddUnit
  public
    function ToString: string; inline;
    function Parse(const Str: string): TOddUnit; inline;
  end;

  TOdd = record
    Piece: Integer;
    Spec: Double;
    constructor Create(APiece: Integer; ASpec: Double);
  end;

  IOddDetails = interface
    function GetUnit: TOddUnit;
    function GetCount: Integer;
    function GetTotalPieces: Integer;
    function GetTotalQty: Double;
    function TotalQtyConvertTo(AUnit: TOddUnit): Double;
    function GetItem(Index: Integer): TOdd;
    procedure SetItem(Index: Integer; const Value: TOdd);
    function ToString: string; overload;
    function ToString(AUnit: TOddUnit; Decimals: Integer = 2): string; overload;
    function ToStringWithUnit: string; overload;
    function ToStringWithUnit(AUnit: TOddUnit; Decimals: Integer = 2): string; overload;
    function Add(Value: TOdd): IOddDetails; overload;
    function Add(APiece: Integer; ASpec: Double): IOddDetails; overload;
    function Delete(Index: Integer): TOdd;
    function Clear: IOddDetails;
    function ConvertTo(AUnit: TOddUnit): IOddDetails;
    function Merge(Decimals: Integer = 4): IOddDetails;
    function Append(OddDetails: IOddDetails): IOddDetails;
    function GetEnumerator: TEnumerator<TOdd>;
    property Count: Integer read GetCount;
    property TotalPieces: Integer read GetTotalPieces;
    property TotalQty: Double read GetTotalQty;
	  property _Unit: TOddUnit read GetUnit;
    property Items[Index: Integer]: TOdd read GetItem write SetItem; default;
  end;

function ParseOD(const OddStr: string = ''; AUnit: TOddUnit = ouYard): IOddDetails;

implementation

type
  TOddDetails = class(TInterfacedObject, IOddDetails)
  private
    FItems: TList<TOdd>;
    FNeedReCalc: Boolean;
    FTotalPieces: Integer;
    FTotalQty: Double;
    FUnit: TOddUnit;
    procedure OnItemsNotify(Sender: TObject; const Item: TOdd;
      Action: TCollectionNotification);
    function DoFloatToStr(Value: Double; Decimals: Integer): string; inline;
    procedure DoParseOddStr(const OddStr: string);
    function GetConvertRate(AUnit: TOddUnit): Double; inline;
    procedure CalcTotal;
  protected
    { IOddDetails }
	  function GetUnit: TOddUnit;
    function GetCount: Integer;
    function GetTotalPieces: Integer;
    function GetTotalQty: Double;
    function TotalQtyConvertTo(AUnit: TOddUnit): Double;
    function GetItem(Index: Integer): TOdd;
    procedure SetItem(Index: Integer; const Value: TOdd);
    function ToString: string; overload;
    function ToString(AUnit: TOddUnit; Decimals: Integer = 2): string; overload;
    function ToStringWithUnit: string; overload;
    function ToStringWithUnit(AUnit: TOddUnit; Decimals: Integer = 2): string; overload;
    function Add(value: TOdd): IOddDetails; overload; inline;
    function Add(APiece: Integer; ASpec: Double): IOddDetails; overload; inline;
    function Delete(Index: Integer): TOdd;
    function Clear: IOddDetails;
    function ConvertTo(AUnit: TOddUnit): IOddDetails;
    function Merge(Decimals: Integer = 4): IOddDetails;
    function Append(OddDetails: IOddDetails): IOddDetails;
    function GetEnumerator: TEnumerator<TOdd>;
    property Count: Integer read GetCount;
    property TotalPieces: Integer read GetTotalPieces;
    property TotalQty: Double read GetTotalQty;
	  property _Unit: TOddUnit read GetUnit;
    property Items[Index: Integer]: TOdd read GetItem write SetItem;
  public
    constructor Create(const OddStr: string = ''; AUnit: TOddUnit = ouYard);
    destructor Destroy; override;
  end;

function ParseOD(const OddStr: string = ''; AUnit: TOddUnit = ouYard): IOddDetails;
begin
  Result := TOddDetails.Create(OddStr, AUnit);
end;

{ TOdd }

constructor TOdd.Create(APiece: Integer; ASpec: Double);
begin
  Self.Piece := APiece;
  Self.Spec := ASpec;
end;

{ TOddDetails }

constructor TOddDetails.Create(const OddStr: string; AUnit: TOddUnit);
begin
  FUnit := AUnit;
  FItems := TList<TOdd>.Create;
  FItems.OnNotify := OnItemsNotify;
  DoParseOddStr(OddStr);
  FNeedReCalc := True;
  FTotalPieces := 0;
  FTotalQty := 0;
end;

destructor TOddDetails.Destroy;
begin
  FItems.Free;
  inherited;
end;

procedure TOddDetails.DoParseOddStr(const OddStr: string);
var
  sl: TStringList;
  I: Integer;
  Odd: TOdd;

  function TryParse(const str: string; out Odd: TOdd): Boolean;
  var
    Index: Integer;
    Piece: Integer;
    Spec: Double;
  begin
    Index := Pos('*', str);
    if Index = Length(str) then
    begin
      Result := False;
      Exit;
    end;
    if 0 < Index then
    begin
      Result := TryStrToInt(Copy(str, 1, Index - 1), Piece) and TryStrToFloat(Copy(str, Index + 1, MaxInt), Spec)
    end
    else
    begin
      Result := TryStrToFloat(str, Spec);
      if Result then
        Piece := 1;
    end;
    Result := 0 < Piece * Spec;
    if Result then
      Odd := TOdd.Create(Piece, Spec);
  end;

begin
  sl := TStringList.Create;
  try
    sl.Delimiter := '+';
    sl.DelimitedText := StringReplace(OddStr, ' ', '', [rfReplaceAll]);
    for I := 0 to sl.Count - 1 do
      if TryParse(sl[I], Odd) then
        Add(Odd);
  finally
    sl.Free;
  end;
end;

procedure TOddDetails.OnItemsNotify(Sender: TObject; const Item: TOdd;
  Action: TCollectionNotification);
begin
  FNeedReCalc := True;
end;

function TOddDetails.GetUnit: TOddUnit;
begin
  Result := FUnit;
end;

function TOddDetails.GetTotalPieces: Integer;
begin
  CalcTotal;
  Result := FTotalPieces;
end;

function TOddDetails.GetTotalQty: Double;
begin
  CalcTotal;
  Result := FTotalQty;
end;

procedure TOddDetails.CalcTotal;
var
  I: TOdd;
begin
  if FNeedReCalc then begin
    FTotalPieces := 0;
    FTotalQty := 0;
    for I in FItems do begin
      FTotalPieces := FTotalPieces + I.Piece;
      FTotalQty := FTotalQty + I.Piece*I.Spec;
    end;
    FNeedReCalc := False;
  end;
end;

function TOddDetails.Clear: IOddDetails;
begin
  FItems.Clear;
  Result := Self;
end;

function TOddDetails.TotalQtyConvertTo(AUnit: TOddUnit): Double;
begin
  Result := GetTotalQty * GetConvertRate(AUnit);
end;

function TOddDetails.GetConvertRate(AUnit: TOddUnit): Double;
begin
  if AUnit = FUnit then
    Result := 1.0 else
  if (FUnit = ouMetre) and (AUnit = ouYard) then
    Result := 1.0/0.9144 else
  if (FUnit = ouYard) and (AUnit = ouMetre) then
    Result := 0.9144
  else
    Result := 1.0;
end;

function TOddDetails.Add(APiece: Integer; ASpec: Double): IOddDetails;
begin
  Result := Add(TOdd.Create(APiece, ASpec));
end;

function TOddDetails.Add(Value: TOdd): IOddDetails;
begin
  FItems.Add(Value);
  Result := Self;
end;

function TOddDetails.Delete(Index: Integer): TOdd;
begin
  Result := GetItem(Index);
  FItems.Delete(Index);
end;

function TOddDetails.GetCount: Integer;
begin
  Result := FItems.Count;
end;

function TOddDetails.GetEnumerator: TEnumerator<TOdd>;
begin
  Result := FItems.GetEnumerator;
end;

function TOddDetails.GetItem(Index: Integer): TOdd;
begin
  Result := FItems[Index];
end;

procedure TOddDetails.SetItem(Index: Integer; const Value: TOdd);
begin
  FItems[Index] := Value;
end;

function TOddDetails.ToString: string;
begin
  Result := ToString(FUnit);
end;

function TOddDetails.ToString(AUnit: TOddUnit; Decimals: Integer): string;
var
  Rate: Double;
  I: TOdd;
begin
  if Count = 0 then
    Exit('');
  Rate := GetConvertRate(AUnit);
  Result := '';
  for I in FItems do begin
    if I.Piece = 1 then
      Result := Result + '+' + DoFloatToStr(I.Spec*Rate, Decimals)
    else
      Result := Result + '+' + Format('%d*%s', [I.Piece, DoFloatToStr(I.Spec*Rate, Decimals)]);
  end;
  if Result.Length > 0 then
    Result := Result.Substring(1);
end;

function TOddDetails.ToStringWithUnit: string;
begin
  Result := ToStringWithUnit(FUnit);
end;

function TOddDetails.ToStringWithUnit(AUnit: TOddUnit; Decimals: Integer = 2): string;
begin
  Result := ToString(AUnit, Decimals);
  if not Result.IsEmpty then
    Result := Format('(%s)%s', [Result, AUnit.ToString]);
end;

function TOddDetails.DoFloatToStr(Value: Double; Decimals: Integer): string;
var
  fs: string;
begin
  fs := '%.' + Decimals.ToString + 'f';
  Result := Format(fs, [Value]);
  while (0 < Length(Result)) and (Result[Length(Result)] in ['0']) do
    Result := Copy(Result, 1, Length(Result) - 1);
  if (0 < Length(Result)) and (Result[Length(Result)] in ['.']) then
    Result := Copy(Result, 1, Length(Result) - 1);
end;

function TOddDetails.ConvertTo(AUnit: TOddUnit): IOddDetails;
var
  Rate: Double;
  I: Integer;
begin
  if AUnit <> FUnit then begin
    Rate := GetConvertRate(AUnit);
    for I := 0 to Count - 1 do
      Items[I] := TOdd.Create(Items[I].Piece, Items[I].Spec*Rate);
    FUnit := AUnit;
  end;
  Result := Self;
end;

function TOddDetails.Merge(Decimals: Integer): IOddDetails;
var
  List: TArray<TOdd>;
  Dic: TObjectDictionary<string, Integer>;
  Index: Integer;
  Item: TOdd;
  SpecStr: string;
  fs: string;
  TotalPiece: Integer;
  TotalQty: Double;
begin
  if Count = 1 then
    Exit(Self);
  List := FItems.ToArray;
  fs := '%.' + Decimals.ToString + 'f';
  Dic := TObjectDictionary<string, Integer>.Create;
  try
    FItems.Clear;
    for Item in List do begin
      SpecStr := Format(fs, [Item.Spec]);
      if Dic.TryGetValue(SpecStr, Index) then begin
        TotalPiece := Item.Piece + Items[Index].Piece;
        TotalQty := Item.Piece*Item.Spec + Items[Index].Piece*Items[Index].Spec;
        FItems.Delete(Index);
        FItems.Insert(Index, TOdd.Create(TotalPiece, TotalQty/TotalPiece));
      end
      else begin
        FItems.Add(Item);
        Dic.Add(SpecStr, FItems.Count-1);
      end;
    end;
  finally
    Dic.Free;
  end;
  Result := Self;
end;

function TOddDetails.Append(OddDetails: IOddDetails): IOddDetails;
var
  Rate: Double;
  I: TOdd;
begin
  Rate := 1.0/GetConvertRate(OddDetails._Unit);
  for I in OddDetails do
    Add(I.Piece, I.Spec*Rate);
  Result := Self;
end;


{ TOddUnitHelper }

function TOddUnitHelper.Parse(const Str: string): TOddUnit;
begin
  if SameText(Str, 'รื') or SameText(Str, 'M') or SameText(Str, 'Metre') then
    Result := ouMetre
  else
    Result := ouYard;
end;

function TOddUnitHelper.ToString: string;
begin
  case Self of
    ouYard: Result := 'ย๋';
    ouMetre: Result := 'รื';
  end;
end;

end.
