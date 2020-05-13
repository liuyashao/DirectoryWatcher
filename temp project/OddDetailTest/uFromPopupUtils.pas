unit uFromPopupUtils;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, cxGridCustomTableView;

type
  TFrmPopupBase = class(TForm)
    pnlBackground: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FIsClose: Boolean;
    procedure WMACTIVATE(var Message: TWMActivate); message WM_ACTIVATE;
  end;

  TPopup = record
    class function Show<T: TFrmPopupBase>(Position: TPoint): T; overload; static;
    class function Show<T: TFrmPopupBase>(AnchorControl: TControl): T; overload; static;
    class function Show<T: TFrmPopupBase>(Item: TcxCustomGridTableItem): T; overload; static;
  end;

implementation

{$R *.dfm}

{ TPopup }

class function TPopup.Show<T>(Position: TPoint): T;
begin
  Result := T.Create(Application);
  try
    if Position.X < 0 then
      Position.X := 2
    else if Screen.WorkAreaWidth < Position.X + Result.Width then
      Position.X := Screen.WorkAreaWidth - Result.Width - 2;
    if Position.Y < 0 then
      Position.Y := 2
    else if Screen.WorkAreaHeight < Position.Y + Result.Height then
      Position.Y := Screen.WorkAreaHeight - Result.Height - 2;
    Result.Left := Position.X;
    Result.Top := Position.Y;
    Result.Show;
  except
    on E: Exception do begin
      Result.Free;
      raise;
    end;
  end;
end;

class function TPopup.Show<T>(AnchorControl: TControl): T;
var
  Position: TPoint;
  P: TPoint;
begin
  Result := T.Create(Application);
  try
    Position := AnchorControl.ClientToScreen(Point(0, AnchorControl.Height));
    if Position.X < 0 then
      Position.X := 2
    else if Screen.WorkAreaWidth < Position.X + Result.Width then
      Position.X := Screen.WorkAreaWidth - Result.Width - 2;
    if Position.Y < 0 then
      Position.Y := 2
    else if Screen.WorkAreaHeight < Position.Y + Result.Height then begin
      P := AnchorControl.ClientToScreen(Point(0, 0));
      Position.Y := P.Y - Result.Height;
    end;
    Result.Left := Position.X;
    Result.Top := Position.Y;
    Result.Show;
  except
    on E: Exception do begin
      Result.Free;
      raise;
    end;
  end;
end;

class function TPopup.Show<T>(Item: TcxCustomGridTableItem): T;
var
  Position: TPoint;
  P: TPoint;
  ARect: TRect;
begin
  Result := T.Create(Application);
  try
    ARect := Item.FocusedCellViewInfo.Bounds;
    Position := Item.GridView.Site.Parent.ClientToScreen(ARect.TopLeft);
    Position.Y := Position.Y + ARect.Height;
    if Position.X < 0 then
      Position.X := 2
    else if Screen.WorkAreaWidth < Position.X + Result.Width then
      Position.X := Screen.WorkAreaWidth - Result.Width - 2;
    if Position.Y < 0 then
      Position.Y := 2
    else if Screen.WorkAreaHeight < Position.Y + Result.Height then begin
      P := Item.GridView.Site.Parent.ClientToScreen(ARect.TopLeft);
      Position.Y := P.Y - Result.Height;
    end;
    Result.Left := Position.X;
    Result.Top := Position.Y;
    Result.Show;
  except
    on E: Exception do begin
      Result.Free;
      raise;
    end;
  end;
end;

{ TFrmPopupBase }

procedure TFrmPopupBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FIsClose := True;
  Action := caFree;
end;

procedure TFrmPopupBase.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then begin
    Key := 0;
    Close;
  end;
end;

procedure TFrmPopupBase.WMACTIVATE(var Message: TWMActivate);
begin
  if (Message.Active = WA_INACTIVE) and not FIsClose then
    Close;
end;

end.
