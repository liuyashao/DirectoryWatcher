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
    function Add(Value: TOdd): Integer; overload;
    function Add(APiece: Integer; ASpec: Double): Integer; overload;
    function Delete(Index: Integer): TOdd;
    property Count: Integer read GetCount;
    property TotalPieces: Integer read GetTotalPieces;
    property TotalQty: Double read GetTotalQty;
    property Items[Index: Integer]: TOdd read GetItem write SetItem;
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
    procedure DoReCalc; inline;
    function DoFloatToStr(Value: Double; Decimals: Integer): string; inline;
    procedure DoParseOddStr(const OddStr: string);
    function DoGetRate(AUnit: TOddUnit): Double; inline;
  protected
    { IOddDetails }
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
    function Add(value: TOdd): Integer; overload; inline;
    function Add(APiece: Integer; ASpec: Double): Integer; overload; inline;
    function Delete(Index: Integer): TOdd;
    property Count: Integer read GetCount;
    property TotalPieces: Integer read GetTotalPieces;
    property TotalQty: Double read GetTotalQty;
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

function TOddDetails.GetTotalPieces: Integer;
begin
  if FNeedReCalc then begin
    DoReCalc;
    FNeedReCalc := False;
  end;
  Result := FTotalPieces;
end;

function TOddDetails.GetTotalQty: Double;
begin
  if FNeedReCalc then begin
    DoReCalc;
    FNeedReCalc := False;
  end;
  Result := FTotalQty;
end;

function TOddDetails.TotalQtyConvertTo(AUnit: TOddUnit): Double;
begin
  Result := GetTotalQty * DoGetRate(AUnit);
end;

function TOddDetails.DoGetRate(AUnit: TOddUnit): Double;
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

procedure TOddDetails.DoReCalc;
var
  I: TOdd;
begin
  FTotalPieces := 0;
  FTotalQty := 0;
  for I in FItems do begin
    FTotalPieces := FTotalPieces + I.Piece;
    FTotalQty := FTotalQty + I.Piece*I.Spec;
  end;
end;

function TOddDetails.Add(APiece: Integer; ASpec: Double): Integer;
begin
  Result := Add(TOdd.Create(APiece, ASpec));
end;

function TOddDetails.Add(Value: TOdd): Integer;
begin
  Result := FItems.Add(Value);
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

function TOddDetails.GetItem(Index: Integer): TOdd;
begin
  Result := FItems[Index];
end;

procedure TOddDetails.SetItem(Index: Integer; const Value: TOdd);
begin
  FItems[Index] := Value;
  FNeedReCalc := True;
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
  Rate := DoGetRate(AUnit);
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
  d: string;
begin
  d := '%.' + Decimals.ToString + 'f';
  Result := Format(d, [Value]);
  while (0 < Length(Result)) and (Result[Length(Result)] in ['0']) do
    Result := Copy(Result, 1, Length(Result) - 1);
  if (0 < Length(Result)) and (Result[Length(Result)] in ['.']) then
    Result := Copy(Result, 1, Length(Result) - 1);
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
