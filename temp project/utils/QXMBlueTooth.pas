//������Ԫ by Į��
//��ʱ�ϳ����������õģ�ֻ�������Ӻ����ݷ��͡����ա����������ʲô�Ļ�û��
unit QXMBlueTooth;

interface
uses
System.Classes
,System.Bluetooth
,System.SysUtils
,FMX.Dialogs
,System.UITypes
{$IFDEF ANDROID}
,Androidapi.JNI.GraphicsContentViewText
,Androidapi.JNI.Provider
,Androidapi.JNI.JavaTypes
,Androidapi.Helpers
{$ENDIF}
,Androidapi.JNI.LPAPI
;
type
  TServerConnectionTH = class(TThread)
  private
    { Private declarations }
    FServerSocket: TBluetoothServerSocket;
    FSocket: TBluetoothSocket;
    FData: TBytes;
  protected
    procedure Execute; override;
  public
    { Public declarations }
    constructor Create(ACreateSuspended: Boolean);
    destructor Destroy; override;
  end;
Const
  ServiceGUI = '{00001101-0000-1000-8000-00805F9B34FB}';
var
  FBluetoothManager: TBluetoothManager;
  FDiscoverDevices: TBluetoothDeviceList;
  FPairedDevices: TBluetoothDeviceList;
  FAdapter: TBluetoothAdapter;
  FSocket: TBluetoothSocket;
{$IFDEF ANDROID}
  japi: JLPAPI;
{$ENDIF}
  function ManagerConnected:Boolean;
  procedure BluetoothIni;
  function ConnectDevice(Address:string):boolean;
  function SendBufData(ToSend:TBytes):boolean;
  function DisConnectDevice:boolean;
  function GetDeviceAddressList:TStringList;
  function GetDeviceNameList:TStringList;
{$IFDEF ANDROID}
  function printText(apiPrint:JLPAPI; bufData: String; x,y,width,height,size:Integer): boolean;
  function printText1DBarCode(apiPrint:JLPAPI; bufData: String; x,y,width,height,size:Integer; IBarCodeType: Integer=60): boolean;
  function printText2DQRCode(apiPrint:JLPAPI; bufData: String; x,y:Integer;size:Integer=15): boolean;
  function print2DQRCode(bufQTData, bufTextData: String; x,y:Integer;size:Integer=15): boolean; overload;
  function print2DQRCode(const QRCode, ProdName, Lot: String): Boolean; overload;
{$ENDIF}
implementation
{TServerConnection}

constructor TServerConnectionTH.Create(ACreateSuspended: Boolean);
begin
  inherited;
end;

destructor TServerConnectionTH.Destroy;
begin
  FSocket.Free;
  FServerSocket.Free;
  inherited;
end;

procedure TServerConnectionTH.execute;
var
  ASocket: TBluetoothSocket;
  Msg: string;
begin
  while not Terminated do
    try
      ASocket := nil;
      while not Terminated and (ASocket = nil) do
        ASocket := FServerSocket.Accept(100);
      if(ASocket <> nil) then
      begin
        FSocket := ASocket;
        while not Terminated do
        begin
          FData := ASocket.ReceiveData;
          if length(FData) > 0 then
            Synchronize(procedure
              begin
              end);
          sleep(100);
        end;
      end;
    except
      on E : Exception do
      begin
        Msg := E.Message;
        Synchronize(procedure
          begin
            showmessage('���������ѹر�');
          end);
      end;
    end;
end;


function ManagerConnected:Boolean;
begin
  if fBluetoothManager.ConnectionState = TBluetoothConnectionState.Connected then
  begin
    Result := True;
  end
  else
  begin
    Result := False;
    BluetoothIni;
  end
end;


procedure IntentsetAction;
{$IFDEF ANDROID}
var
  Intent: JIntent;
{$ENDIF}
begin
{$IFDEF ANDROID}
  Intent := TJIntent.Create;
  Intent.setAction(TJSettings.JavaClass.ACTION_BLUETOOTH_SETTINGS);
  SharedActivity.startActivity(Intent);
{$ENDIF}
end;


procedure BluetoothIni;
begin
  try
    fBluetoothManager := TBluetoothManager.Current;
    fBluetoothManager.SocketTimeout:=0;
    fAdapter := fBluetoothManager.CurrentAdapter;
    if ManagerConnected then
      fPairedDevices := FBluetoothManager.GetPairedDevices;
  except
    MessageDlg('���������ѹر�,�Ƿ�����������ã�', System.UITypes.TMsgDlgType.mtInformation,
    [ System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbCancel], 0,
    procedure(const AResult: TModalResult)
    begin
      if AResult = mrYES then
      begin
        IntentsetAction;
      end;
    end);
  end;
end;
function GetDeviceByMac(Address:string):TBluetoothDevice;
var
  i:integer;
begin
  result:=nil;
  FPairedDevices := FBluetoothManager.GetPairedDevices;
  for i := 0 to FPairedDevices.Count-1 do begin
    if FPairedDevices[i].Address=Address then
    begin
      result:=FPairedDevices[i];
      break;
    end;
  end;

end;


function GetDeviceAddressList:TStringList;
var
  i:integer;
begin
  result:=TStringList.Create;;
  FPairedDevices := FBluetoothManager.GetPairedDevices;
  for i := 0 to FPairedDevices.Count-1 do begin
    result.Add(FPairedDevices[i].Address);
  end;

end;


function GetDeviceNameList:TStringList;
var
  i:integer;
begin
  result:=TStringList.Create;;
  FPairedDevices := FBluetoothManager.GetPairedDevices;
  for i := 0 to FPairedDevices.Count-1 do begin
    result.Add(FPairedDevices[i].DeviceName);
  end;

end;


function ConnectDevice(Address:string):boolean;
var
  aDevice:TBluetoothDevice;
begin
  result:=false;
  if ManagerConnected then
  begin
    aDevice:= GetDeviceByMac(Address);
    if assigned(aDevice) then begin
      FSocket := aDevice.CreateClientSocket(StringToGUID(ServiceGUI), False);
    end;
    try
      FSocket.Connect;
    except
      raise Exception.Create('���������豸ʧ��');
    end;
    if FSocket.Connected then
    begin
      result:=true;
    end
    else
    begin
      FreeAndNil(FSocket);
    end;

  end;
end;


function DisConnectDevice:boolean;
begin
  result:=true;
  if assigned(FSocket) then FSocket.Close;
  FreeAndNil(FSocket);
end;


function SendBufData(ToSend:TBytes):boolean;
begin
  result:=false;
  if (FSocket <> nil)  then
  begin
    try
      FSocket.SendData(ToSend);
      result:=true;
    except
      raise Exception.Create('��ӡʧ��');
      exit;
    end;
  end;
end;


{$IFDEF ANDROID}
function printText(apiPrint:JLPAPI; bufData: String; x,y,width,height,size:Integer): boolean;
begin
    result := false;
  try
    //for �ı���ӡ
    //���ÿ�ʼ����
    apiPrint.startJob(50, 15, 0);
    //���ô�ӡ�ı�����1.2,�����������ʾʹ��startPage�������¿�ʼҳ�棬���������drawText��Ĭ�ϵ���
    // �������:
    //1.��Ҫ���Ƶ��ı��ַ���
    //2.���Ƶ��ı������Ͻ�ˮƽλ��
    //3.���Ƶ��ı������ϽǴ�ֱλ��
    //4.���Ƶ��ı���ˮƽ���
    //5.���Ƶ��ı���ֱ�߶�
    //6.���ִ�С, ������
    apiPrint.drawText(StringToJString(bufData), 0, 0, 0, 0, 4);
    //�ύ��ӡ����1.3
    apiPrint.commitJob();
  except on E:Exception do
    begin
      result := false;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function printText1DBarCode(apiPrint:JLPAPI; bufData: String; x,y,width,height,size:Integer; IBarCodeType: Integer): boolean;
begin
    result := false;
  try
		// ��ʼ��ͼ���񣬴������(ҳ����, ҳ��߶�)
    apiPrint.startJob(50, 50, 0);

		// ��ʼһ��ҳ��Ļ��ƣ������ı��ַ���
		// �������(��Ҫ���Ƶ��ı��ַ���, ���Ƶ��ı������Ͻ�ˮƽλ��, ���Ƶ��ı������ϽǴ�ֱλ��, ���Ƶ��ı���ˮƽ���, ���Ƶ��ı���ֱ�߶�, ���ִ�С, ������)
		//apiPrint.drawText(StringToJString(bufData), 0, 0, 0, 0, 4);

		// ����֮����ƵĶ���������ת180��
		//japi.setItemOrientation(180);

		// ����һά�룬��һά�����ʱ���ݻ���ת180�ȣ�
		// �������(��Ҫ���Ƶ�һά�������, ���Ƶ�һά�����Ͻ�ˮƽλ��, ���Ƶ�һά�����ϽǴ�ֱλ��, ���Ƶ�һά��ˮƽ���, ���Ƶ�һά�봹ֱ�߶�)
		apiPrint.draw1DBarcode(StringToJString(bufData), IBarCodeType, x,y,width,height,size);

		// ������ͼ�����ύ��ӡ
		apiPrint.commitJob();
  except on E:Exception do
    begin
      result := false;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function printText2DQRCode(apiPrint:JLPAPI; bufData: String;  x,y:Integer; size:Integer): boolean;
begin
    result := false;
  try
		// ��ʼ��ͼ���񣬴������(ҳ����, ҳ��߶�)
    apiPrint.startJob(50, 50, 0);

		// ��ʼһ��ҳ��Ļ��ƣ������ı��ַ���
		// �������(��Ҫ���Ƶ��ı��ַ���, ���Ƶ��ı������Ͻ�ˮƽλ��, ���Ƶ��ı������ϽǴ�ֱλ��, ���Ƶ��ı���ˮƽ���, ���Ƶ��ı���ֱ�߶�, ���ִ�С, ������)
		//apiPrint.drawText(StringToJString('��������'), 20, 3, 0, 0, 4);
		//apiPrint.drawText(StringToJString('��TM����'), 23, 10, 0, 0, 3);

		// ����֮����ƵĶ���������ת180��
		//japi.setItemOrientation(180);

		// ����һά�룬��һά�����ʱ���ݻ���ת180�ȣ�
		// �������(��Ҫ���Ƶ�һά�������, ���Ƶ�һά�����Ͻ�ˮƽλ��, ���Ƶ�һά�����ϽǴ�ֱλ��, ���Ƶ�һά��ˮƽ���, ���Ƶ�һά�봹ֱ�߶�)
		apiPrint.draw2DQRcode(StringToJString(bufData), x,y,size);

		// ������ͼ�����ύ��ӡ
		apiPrint.commitJob();
  except on E:Exception do
    begin
      result := false;
      raise Exception.Create(E.Message);
    end;
  end;
end;


function print2DQRCode(bufQTData, bufTextData: String; x,y:Integer;size:Integer=15): boolean;
begin
    result := false;
  try
		// ��ʼ��ͼ���񣬴������(ҳ����, ҳ��߶�)
    japi.startJob(40, 30, 0);
//    japi.startJob(50, 50, 0);

   		// �������(��Ҫ���Ƶ��ı��ַ���, ���Ƶ��ı������Ͻ�ˮƽλ��, ���Ƶ��ı������ϽǴ�ֱλ��, ���Ƶ��ı���ˮƽ���, ���Ƶ��ı���ֱ�߶�, ���ִ�С, ������)
     japi.drawText(StringToJString(bufTextData), 0.1, 0.4, 0, 0, 3);
      japi.draw2DQRcode(StringToJString(bufQTData), 10, 8.3, 19);

		// ������ͼ�����ύ��ӡ
		japi.commitJob();
  except on E:Exception do
    begin
      result := false;
      raise Exception.Create(E.Message);
    end;
  end;
end;

function print2DQRCode(const QRCode, ProdName, Lot: String): Boolean;
begin
    result := false;
  try
		// ��ʼ��ͼ���񣬴������(ҳ����, ҳ��߶�)
    japi.startJob(40, 30, 0);
//    japi.startJob(50, 50, 0);

   		// �������(��Ҫ���Ƶ��ı��ַ���, ���Ƶ��ı������Ͻ�ˮƽλ��, ���Ƶ��ı������ϽǴ�ֱλ��, ���Ƶ��ı���ˮƽ���, ���Ƶ��ı���ֱ�߶�, ���ִ�С, ������)
     japi.drawText(StringToJString(ProdName),   0.1, 0.5, 0, 0, 3);
     japi.draw2DQRcode(StringToJString(QRCode), 10,  5.0, 19);
     japi.drawText(StringToJString(Lot),        0.1, 24.4, 0, 0, 3);

		// ������ͼ�����ύ��ӡ
		japi.commitJob();
  except on E:Exception do
    begin
      result := false;
      raise Exception.Create(E.Message);
    end;
  end;
end;

{$ENDIF}

initialization
finalization
end.
