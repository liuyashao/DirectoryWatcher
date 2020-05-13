unit uFrmPopupBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGridTableView;

type
  TFrmPopupBase = class(TForm)
    pnlBackground: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FIsClose: Boolean;
    FInfo: NativeInt;
    procedure WMACTIVATE(var Message: TWMActivate); message WM_ACTIVATE;
    constructor Create(Info: NativeInt);
  protected
    property Info: NativeInt read FInfo;
  public
    class procedure Popup(Position: TPoint; Info: NativeInt = 0); overload;
    class procedure Popup(AnchorControl: TControl; Info: NativeInt = 0); overload;
    class procedure Popup(GridColumn: TcxGridColumn; Info: NativeInt = 0); overload;
  end;

implementation

{$R *.dfm}

{ TFrmPopupBase }

class procedure TFrmPopupBase.Popup(AnchorControl: TControl; Info: NativeInt);
var
  Position: TPoint;
  P: TPoint;
  Form: TFrmPopupBase;
begin
  Form := TFrmPopupBase.Create(Info);
  Position := AnchorControl.ClientToScreen(Point(0, AnchorControl.Height));
  if Position.X < 0 then
    Position.X := 2
  else if Screen.WorkAreaWidth < Position.X + Form.Width then
    Position.X := Screen.WorkAreaWidth - Form.Width - 2;
  if Position.Y < 0 then
    Position.Y := 2
  else if Screen.WorkAreaHeight < Position.Y + Form.Height then begin
    P := AnchorControl.ClientToScreen(Point(0, 0));
    Position.Y := P.Y - Form.Height;
  end;
  Form.Left := Position.X;
  Form.Top := Position.Y;
  Form.Show;
end;

class procedure TFrmPopupBase.Popup(Position: TPoint; Info: NativeInt);
var
  Form: TFrmPopupBase;
begin
  Form := TFrmPopupBase.Create(Info);
  if Position.X < 0 then
    Position.X := 2
  else if Screen.WorkAreaWidth < Position.X + Form.Width then
    Position.X := Screen.WorkAreaWidth - Form.Width - 2;
  if Position.Y < 0 then
    Position.Y := 2
  else if Screen.WorkAreaHeight < Position.Y + Form.Height then
    Position.Y := Screen.WorkAreaHeight - Form.Height - 2;
  Form.Left := Position.X;
  Form.Top := Position.Y;
  Form.Show;
end;

class procedure TFrmPopupBase.Popup(GridColumn: TcxGridColumn;
  Info: NativeInt);
var
  Form: TFrmPopupBase;
  Position: TPoint;
  P: TPoint;
  ARect: TRect;
begin
  if (GridView.Controller = nil) or (GridView.Controller.FocusedColumn = nil)
    or (GridView.Controller.FocusedColumn.FocusedCellViewInfo = nil)
  then
    Exit;
  ARect := GridView.Controller.FocusedColumn.FocusedCellViewInfo.Bounds;
  Form := TFrmPopupBase.Create(Info);
  ARect := GridView.Controller.FocusedColumn.FocusedCellViewInfo.Bounds;
  Position := GridView.Site.Parent.ClientToScreen(ARect.TopLeft);
  Position.Y := Position.Y + ARect.Height + 1;
  if Position.X < 0 then
    Position.X := 2
  else if Screen.WorkAreaWidth < Position.X + Form.Width then
    Position.X := Screen.WorkAreaWidth - Form.Width - 2;
  if Position.Y < 0 then
    Position.Y := 2
  else if Screen.WorkAreaHeight < Position.Y + Form.Height then begin
    P := GridView.Site.Parent.ClientToScreen(ARect.TopLeft);
    Position.Y := P.Y - Form.Height - 1;
  end;
  Form.Left := Position.X;
  Form.Top := Position.Y;
  Form.Show;
end;

constructor TFrmPopupBase.Create(Info: NativeInt);
begin
  FInfo := Info;
  inherited Create(nil);
end;

procedure TFrmPopupBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FIsClose := True;
  Action := caFree;
end;

procedure TFrmPopupBase.WMACTIVATE(var Message: TWMActivate);
begin
  if (Message.Active = WA_INACTIVE) and not FIsClose then
    Close;
end;

end.
