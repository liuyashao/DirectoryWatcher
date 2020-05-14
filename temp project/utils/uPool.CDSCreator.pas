unit uPool.CDSCreator;

interface

uses
  SysUtils, SyncObjs, Classes, DBClient, uPoolFactory, Variants;

type
  TCDSCreator = class(TInterfacedObject, ICreator<TClientDataSet>)
  private
    function CreateInstance: TClientDataSet;
    procedure Initialize(anInstance: TClientDataSet);
    procedure Finalize(anInstance: TClientDataSet);
  end;

implementation

{ TCDSCreator }

function TCDSCreator.CreateInstance: TClientDataSet;
begin
  Result := TClientDataSet.Create(nil);
end;

procedure TCDSCreator.Finalize(anInstance: TClientDataSet);
begin
  anInstance.Data := null;
  anInstance.Filter := '';
  anInstance.Filtered := False;
  anInstance.Params.Clear;
  anInstance.Fields.Clear;
  anInstance.FieldDefs.Clear;
  anInstance.IndexFieldNames := '';
  anInstance.IndexName := '';
  anInstance.IndexDefs.Clear;
  anInstance.Constraints.Clear;
  anInstance.AggregatesActive := False;
  anInstance.Aggregates.Clear;
  anInstance.ProviderName := '';
  anInstance.ReadOnly := False;
  anInstance.FilterOptions := [];
  anInstance.ProviderName := '';
  anInstance.RemoteServer := nil;
  anInstance.MasterFields := '';
  anInstance.MasterSource := nil;
  anInstance.BeforeOpen := nil;
  anInstance.AfterOpen := nil;
  anInstance.BeforeClose := nil;
  anInstance.AfterClose := nil;
  anInstance.BeforeInsert := nil;
  anInstance.AfterInsert := nil;
  anInstance.BeforeEdit := nil;
  anInstance.AfterEdit := nil;
  anInstance.BeforePost := nil;
  anInstance.AfterPost := nil;
  anInstance.BeforeCancel := nil;
  anInstance.AfterCancel := nil;
  anInstance.BeforeDelete := nil;
  anInstance.AfterDelete := nil;
  anInstance.BeforeScroll := nil;
  anInstance.AfterScroll := nil;
  anInstance.BeforeRefresh := nil;
  anInstance.AfterRefresh := nil;
  anInstance.OnCalcFields := nil;
  anInstance.OnDeleteError := nil;
  anInstance.OnEditError := nil;
  anInstance.OnFilterRecord := nil;
  anInstance.OnNewRecord := nil;
  anInstance.OnPostError := nil;
  anInstance.OnReconcileError := nil;
  anInstance.BeforeApplyUpdates := nil;
  anInstance.AfterApplyUpdates := nil;
  anInstance.BeforeGetRecords := nil;
  anInstance.AfterGetRecords := nil;
  anInstance.BeforeRowRequest := nil;
  anInstance.AfterRowRequest := nil;
  anInstance.BeforeExecute := nil;
  anInstance.AfterExecute := nil;
  anInstance.BeforeGetParams := nil;
  anInstance.AfterGetParams := nil;
end;

procedure TCDSCreator.Initialize(anInstance: TClientDataSet);
begin
end;

initialization
  Pool<TClientDataSet>.RegisterCreator(TCDSCreator.Create);

end.
