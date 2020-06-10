//蓝牙单元 by 漠北
//临时赶出来给别人用的，只做了连接和数据发送。接收、搜索和配对什么的还没做
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
            showmessage('蓝牙连接已关闭');
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
    MessageDlg('蓝牙可能已关闭,是否进行蓝牙设置？', System.UITypes.TMsgDlgType.mtInformation,
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
      raise Exception.Create('连接蓝牙设备失败');
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
      raise Exception.Create('打印失败');
      exit;
    end;
  end;
end;


{$IFDEF ANDROID}
function printText(apiPrint:JLPAPI; bufData: String; x,y,width,height,size:Integer): boolean;
begin
    result := false;
  try
    //for 文本打印
    //设置开始任务
    apiPrint.startJob(50, 15, 0);
    //设置打印文本内容1.2,在这里可以显示使用startPage方法重新开始页面，如果不调用drawText将默认调用
    // 传入参数:
    //1.需要绘制的文本字符串
    //2.绘制的文本框左上角水平位置
    //3.绘制的文本框左上角垂直位置
    //4.绘制的文本框水平宽度
    //5.绘制的文本框垂直高度
    //6.文字大小, 字体风格
    apiPrint.drawText(StringToJString(bufData), 0, 0, 0, 0, 4);
    //提交打印任务1.3
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
		// 开始绘图任务，传入参数(页面宽度, 页面高度)
    apiPrint.startJob(50, 50, 0);

		// 开始一个页面的绘制，绘制文本字符串
		// 传入参数(需要绘制的文本字符串, 绘制的文本框左上角水平位置, 绘制的文本框左上角垂直位置, 绘制的文本框水平宽度, 绘制的文本框垂直高度, 文字大小, 字体风格)
		//apiPrint.drawText(StringToJString(bufData), 0, 0, 0, 0, 4);

		// 设置之后绘制的对象内容旋转180度
		//japi.setItemOrientation(180);

		// 绘制一维码，此一维码绘制时内容会旋转180度，
		// 传入参数(需要绘制的一维码的数据, 绘制的一维码左上角水平位置, 绘制的一维码左上角垂直位置, 绘制的一维码水平宽度, 绘制的一维码垂直高度)
		apiPrint.draw1DBarcode(StringToJString(bufData), IBarCodeType, x,y,width,height,size);

		// 结束绘图任务提交打印
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
		// 开始绘图任务，传入参数(页面宽度, 页面高度)
    apiPrint.startJob(50, 50, 0);

		// 开始一个页面的绘制，绘制文本字符串
		// 传入参数(需要绘制的文本字符串, 绘制的文本框左上角水平位置, 绘制的文本框左上角垂直位置, 绘制的文本框水平宽度, 绘制的文本框垂直高度, 文字大小, 字体风格)
		//apiPrint.drawText(StringToJString('调试蓝牙'), 20, 3, 0, 0, 4);
		//apiPrint.drawText(StringToJString('真TM郁闷'), 23, 10, 0, 0, 3);

		// 设置之后绘制的对象内容旋转180度
		//japi.setItemOrientation(180);

		// 绘制一维码，此一维码绘制时内容会旋转180度，
		// 传入参数(需要绘制的一维码的数据, 绘制的一维码左上角水平位置, 绘制的一维码左上角垂直位置, 绘制的一维码水平宽度, 绘制的一维码垂直高度)
		apiPrint.draw2DQRcode(StringToJString(bufData), x,y,size);

		// 结束绘图任务提交打印
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
		// 开始绘图任务，传入参数(页面宽度, 页面高度)
    japi.startJob(40, 30, 0);
//    japi.startJob(50, 50, 0);

   		// 传入参数(需要绘制的文本字符串, 绘制的文本框左上角水平位置, 绘制的文本框左上角垂直位置, 绘制的文本框水平宽度, 绘制的文本框垂直高度, 文字大小, 字体风格)
     japi.drawText(StringToJString(bufTextData), 0.1, 0.4, 0, 0, 3);
      japi.draw2DQRcode(StringToJString(bufQTData), 10, 8.3, 19);

		// 结束绘图任务提交打印
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
		// 开始绘图任务，传入参数(页面宽度, 页面高度)
    japi.startJob(40, 30, 0);
//    japi.startJob(50, 50, 0);

   		// 传入参数(需要绘制的文本字符串, 绘制的文本框左上角水平位置, 绘制的文本框左上角垂直位置, 绘制的文本框水平宽度, 绘制的文本框垂直高度, 文字大小, 字体风格)
     japi.drawText(StringToJString(ProdName),   0.1, 0.5, 0, 0, 3);
     japi.draw2DQRcode(StringToJString(QRCode), 10,  5.0, 19);
     japi.drawText(StringToJString(Lot),        0.1, 24.4, 0, 0, 3);

		// 结束绘图任务提交打印
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
