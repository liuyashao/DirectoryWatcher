unit uOddDetailUtils;

interface

uses
  SysUtils, Classes, System.Generics.Defaults, System.Generics.Collections;

type
  TOddUnit = (ouYard, ouMetre);

  TOdd = record
    Piece: Integer;
    Spec: Double;
  end;

  IOddDetails = interface
    function GetCount: Integer;
    function GetTotalPieces: Integer;
    function GetTotalQty: Double;
    function GetItem(Index: Integer): TOdd;
    procedure SetItem(Index: Integer; const Value: TOdd);
    function ToString: string;
    function Add(value: TOdd): Integer;
    function Delete(Index: Integer): TOdd;
    property Count: Integer read GetCount;
    property TotalPieces: Integer read GetTotalPieces;
    property TotalQty: Double read GetTotalQty;
    property Items[Index: Integer]: TOdd read GetItem write SetItem;
  end;

  TOddDetails = class(TInterfacedObject, IOddDetails)
  private
    FItems: TList<TOdd>;
    FTotalPieces: Integer;
    FTotalQty: Double;
  protected
    { IOddDetails }
    function GetCount: Integer;
    function GetTotalPieces: Integer;
    function GetTotalQty: Double;
    function GetItem(Index: Integer): TOdd;
    procedure SetItem(Index: Integer; const Value: TOdd);
    function ToString: string;
    function Add(value: TOdd): Integer;
    function Delete(Index: Integer): TOdd;
    property Count: Integer read GetCount;
    property TotalPieces: Integer read GetTotalPieces;
    property TotalQty: Double read GetTotalQty;
    property Items[Index: Integer]: TOdd read GetItem write SetItem;
  public
    constructor Create(const OddStr: string = ''; OddUnit: TOddUnit = ouYard);
    destructor Destroy; override;
  end;

implementation

{ TOddDetails }

constructor TOddDetails.Create(const OddStr: string; OddUnit: TOddUnit);
begin
  FItems := TList<TOdd>.Create;
  FTotalPieces := 0;
  FTotalQty := 0;
end;

destructor TOddDetails.Destroy;
begin

  inherited;
end;

function TOddDetails.Add(value: TOdd): Integer;
begin

end;

function TOddDetails.Delete(Index: Integer): TOdd;
begin

end;

function TOddDetails.GetCount: Integer;
begin

end;

function TOddDetails.GetItem(Index: Integer): TOdd;
begin

end;

function TOddDetails.GetTotalPieces: Integer;
begin

end;

function TOddDetails.GetTotalQty: Double;
begin

end;

procedure TOddDetails.SetItem(Index: Integer; const Value: TOdd);
begin

end;

function TOddDetails.ToString: string;
begin

end;

end.
