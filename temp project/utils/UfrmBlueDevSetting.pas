unit UfrmBlueDevSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.ListBox, uSkinButtonType,
  uSkinFireMonkeyButton, uSkinFireMonkeyControl, uSkinPanelType,
  uSkinFireMonkeyPanel, uSkinFireMonkeyComboBox

{$IFDEF ANDROID}
{$IF CompilerVersion >= 27.0} // >= XE6
  ,Androidapi.Helpers
{$ENDIF}
  ,FMX.Helpers.Android,
  FMX.Platform.Android,
  Androidapi.JNI.JavaTypes,
  Androidapi.NativeActivity,
  Androidapi.JNIBridge,
  Androidapi.JNI.App,
  Androidapi.JNI.Location,
  QXMBlueTooth,
  Androidapi.JNI.LPAPI
{$ENDIF}
  ;

type
  TfrmSetBlueDevice = class(TFrame)
    plBlueSetMain: TPanel;
    plBlueSet: TPanel;
    sknfmxpnl7: TSkinFMXPanel;
    bntConSet: TSkinFMXButton;
    bntConReturn: TSkinFMXButton;
    SkinFMXButton1: TSkinFMXButton;
    SkinFMXButton2: TSkinFMXButton;
    cmbDevicesList: TSkinFMXComboBox;
    procedure bntConReturnClick(Sender: TObject);
    procedure SkinFMXButton1Click(Sender: TObject);
    procedure SkinFMXButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  frmSetBlueDevice: TfrmSetBlueDevice;
  tDevicesNameList : TStringList;
  tDevicesAddrList : TStringList;
  nDevicesCurrentID: integer = -1;
{$IFDEF ANDROID}
{$ENDIF}


implementation


{$R *.fmx}

constructor TfrmSetBlueDevice.Create(AOwner: TComponent);
begin
  inherited;
  if tDevicesNameList <> nil then
    cmbDevicesList.Items.Assign(tDevicesNameList);
  if cmbDevicesList.Items.Count > 0 then
    cmbDevicesList.ItemIndex := 0;
end;

procedure TfrmSetBlueDevice.SkinFMXButton1Click(Sender: TObject);
begin
{$IFDEF ANDROID}
  cmbDevicesList.Clear;
  FreeAndNil(tDevicesNameList);
  FreeAndNil(tDevicesAddrList);
  nDevicesCurrentID := -1;
  BluetoothIni;
  tDevicesNameList := GetDeviceNameList;
  tDevicesAddrList := GetDeviceAddressList;
  cmbDevicesList.Items.Assign(tDevicesNameList);
  if cmbDevicesList.Items.Count > 0 then
    cmbDevicesList.ItemIndex := 0;
  Application.ProcessMessages;
{$ENDIF}
end;

procedure TfrmSetBlueDevice.SkinFMXButton2Click(Sender: TObject);
var
  bBluetoothConnSts: boolean;
  bBluetoothPrinterSts: boolean;
begin
{$IFDEF ANDROID}
  try
    while true do
    begin
      bBluetoothConnSts := false;

      if cmbDevicesList.ItemIndex>=0 then
      begin
        //连接蓝牙通讯
        try
          bBluetoothConnSts := ConnectDevice(tDevicesAddrList[cmbDevicesList.ItemIndex]);
        finally
        end;

        //连接蓝牙成功后,需要继续打开打印机端口,保证随时打印
        if bBluetoothConnSts then
        begin

          CallInUIThreadAndWaitFinishing(
          procedure begin
            japi := TJLPAPI.Create;
          end);

          bBluetoothPrinterSts := false;
          bBluetoothPrinterSts := japi.openPrinter(StringToJString(tDevicesAddrList[cmbDevicesList.ItemIndex]));
          if not bBluetoothPrinterSts then
          begin
            showmessage('打印机未连接好');
            Exit;
          end;
          nDevicesCurrentID := cmbDevicesList.ItemIndex;

          //ShowMessage('连接成功');
          frmSetBlueDevice.Hide;
          frmSetBlueDevice.Parent:=nil;
          frmSetBlueDevice.Visible:=False;

          Break;
        end
        else
        begin
          if MessageDlg('连接失败,是否重试？', TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes,TmsgDlgBtn.mbNo], -1) = mrYes then
            Continue;
          {frmBlueDevSetting.Hide;
          frmBlueDevSetting.Parent:=nil;
          frmBlueDevSetting.Visible:=False;}
          Break;
        end;
      end;
    end;
  except on E:Exception do
  end;
{$ENDIF}
end;

procedure TfrmSetBlueDevice.bntConReturnClick(Sender: TObject);
begin
{$IFDEF ANDROID}
  try
        frmSetBlueDevice.Hide;
        frmSetBlueDevice.Parent:=nil;
        frmSetBlueDevice.Visible:=False;
  finally

  end;
{$ENDIF}
end;

initialization
  ;

finalization
  FreeAndNil(tDevicesNameList);
  FreeAndNil(tDevicesAddrList);

end.
