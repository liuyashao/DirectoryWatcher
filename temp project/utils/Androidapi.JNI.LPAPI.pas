//====================================================
//
//  转换来自JavaOrClass2Pas(原JavaClassToDelphiUnit)
//  原始作者：ying32
//  QQ: 1444386932、396506155
//  Email：yuanfen3287@vip.qq.com
//
//  修改 By：Flying Wang & 爱吃猪头肉
//  请不要移除以上的任何信息。
//  请不要将本版本发到城通网盘，否则死全家。
//
//  Email：1765535979@qq.com
//  QQ Group：165232328
//
//  生成时间：2017/12/7 14:15:49
//  工具版本：1.0.2016.12.19
//
//====================================================
unit Androidapi.JNI.LPAPI;

interface

{$IFDEF ANDROID}
uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.os,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Bluetooth,
  Androidapi.JNI.App,
  Androidapi.JNI.Widget,
  {Androidapi.JNI.java.text.SimpleDateFormat,
  Androidapi.JNI.org.xmlpull.v1.XmlPullParser,
  Androidapi.JNI.org.xmlpull.v1.XmlSerializer,  }
  Androidapi.JNI.JavaUtil,
  Androidapi.JNI.Webkit;


type
// ===== Forward declarations =====

  Ja = interface; //com.dothantech.a.a.a
  Jb_a = interface; //com.dothantech.a.a.b$a
  Jb = interface; //com.dothantech.a.a.b
  Jc = interface; //com.dothantech.a.a.c
  Jd = interface; //com.dothantech.a.a.d
  Ja_a = interface; //com.dothantech.b.a$a
  Ja_b = interface; //com.dothantech.b.a$b
  Ja_007 = interface; //com.dothantech.b.a
  Jb_a_008 = interface; //com.dothantech.b.b$a
  Jb_009 = interface; //com.dothantech.b.b
  Jc_010 = interface; //com.dothantech.b.c
  Jd_011 = interface; //com.dothantech.b.d
  Ja_012 = interface; //com.dothantech.c.a.a.a
  Jb_013 = interface; //com.dothantech.c.a.a.b
  Jc_014 = interface; //com.dothantech.c.a.a.c
  Ja_015 = interface; //com.dothantech.c.a.a
  Jb_016 = interface; //com.dothantech.c.a.b
  Jc_017 = interface; //com.dothantech.c.a.c
  Ja_018 = interface; //com.dothantech.c.a
  Ja_019 = interface; //com.dothantech.c.b.a
  Jb_020 = interface; //com.dothantech.c.b.b
  Jc_021 = interface; //com.dothantech.c.b.c
  Jd_a = interface; //com.dothantech.c.b.d$a
  Jd_b = interface; //com.dothantech.c.b.d$b
  Jd_024 = interface; //com.dothantech.c.b.d
  Je = interface; //com.dothantech.c.b.e
  Jf = interface; //com.dothantech.c.b.f
  Jg_a = interface; //com.dothantech.c.b.g$a
  Jg_b = interface; //com.dothantech.c.b.g$b
  Jg = interface; //com.dothantech.c.b.g
  Jh_a = interface; //com.dothantech.c.b.h$a
  Jh = interface; //com.dothantech.c.b.h
  Ji = interface; //com.dothantech.c.b.i
  Jj_a = interface; //com.dothantech.c.b.j$a
  Jj_b = interface; //com.dothantech.c.b.j$b
  Jj_c = interface; //com.dothantech.c.b.j$c
  Jj_d = interface; //com.dothantech.c.b.j$d
  Jj = interface; //com.dothantech.c.b.j
  Jk = interface; //com.dothantech.c.b.k
  Jl = interface; //com.dothantech.c.b.l
  Jm_a = interface; //com.dothantech.c.b.m$a
  Jm = interface; //com.dothantech.c.b.m
  Jb_042 = interface; //com.dothantech.c.b
  Ja_043 = interface; //com.dothantech.c.c.a.a
  Jb_044 = interface; //com.dothantech.c.c.a.b
  Jc_a = interface; //com.dothantech.c.c.a.c$a
  Jc_b = interface; //com.dothantech.c.c.a.c$b
  Jc_047 = interface; //com.dothantech.c.c.a.c
  Ja_048 = interface; //com.dothantech.c.c.b.a
  Jb_049 = interface; //com.dothantech.c.c.b.b
  Jc_050 = interface; //com.dothantech.c.c.b.c
  Jd_051 = interface; //com.dothantech.c.c.b.d
  Je_052 = interface; //com.dothantech.c.c.b.e
  Jc_053 = interface; //com.dothantech.c.c
  Jd_054 = interface; //com.dothantech.c.d
  Je_055 = interface; //com.dothantech.c.e
  Ja_a_056 = interface; //com.dothantech.common.a$a
  Ja_b_057 = interface; //com.dothantech.common.a$b
  Ja_058 = interface; //com.dothantech.common.a
  Jaa = interface; //com.dothantech.common.aa
  Jab = interface; //com.dothantech.common.ab
  Jac = interface; //com.dothantech.common.ac
  Jad = interface; //com.dothantech.common.ad
  Jae = interface; //com.dothantech.common.ae
  Jaf = interface; //com.dothantech.common.af
  Jag_a = interface; //com.dothantech.common.ag$a
  Jag = interface; //com.dothantech.common.ag
  Jah = interface; //com.dothantech.common.ah
  Jai = interface; //com.dothantech.common.ai
  Jaj = interface; //com.dothantech.common.aj
  Jak = interface; //com.dothantech.common.ak
  Jal = interface; //com.dothantech.common.al
  Jam = interface; //com.dothantech.common.am
  Jan = interface; //com.dothantech.common.an
  Jao = interface; //com.dothantech.common.ao
  Jap = interface; //com.dothantech.common.ap
  Jb_076 = interface; //com.dothantech.common.b
  Jc_077 = interface; //com.dothantech.common.c
  Jd_078 = interface; //com.dothantech.common.d
  JDzSystem = interface; //com.dothantech.common.DzSystem
  Je_080 = interface; //com.dothantech.common.e
  Jf_081 = interface; //com.dothantech.common.f
  Jg_a_082 = interface; //com.dothantech.common.g$a
  Jg_083 = interface; //com.dothantech.common.g
  Jh_084 = interface; //com.dothantech.common.h
  Ji_085 = interface; //com.dothantech.common.i
  Jj_086 = interface; //com.dothantech.common.j
  Jk_087 = interface; //com.dothantech.common.k
  Jl_088 = interface; //com.dothantech.common.l
  Jm_089 = interface; //com.dothantech.common.m
  Jn = interface; //com.dothantech.common.n
  Jo = interface; //com.dothantech.common.o
  Jp = interface; //com.dothantech.common.p
  Jq_a = interface; //com.dothantech.common.q$a
  Jq = interface; //com.dothantech.common.q
  Jr = interface; //com.dothantech.common.r
  Js = interface; //com.dothantech.common.s
  Jt = interface; //com.dothantech.common.t
  Ju = interface; //com.dothantech.common.u
  Jv = interface; //com.dothantech.common.v
  Jw = interface; //com.dothantech.common.w
  Jx = interface; //com.dothantech.common.x
  Jy = interface; //com.dothantech.common.y
  Jz_a = interface; //com.dothantech.common.z$a
  Jz = interface; //com.dothantech.common.z
  Ja_105 = interface; //com.dothantech.data.a
  Jb_106 = interface; //com.dothantech.data.b
  Jc_a_107 = interface; //com.dothantech.data.c$a
  Jc_b_108 = interface; //com.dothantech.data.c$b
  Jc_109 = interface; //com.dothantech.data.c
  JDzTagObject_a = interface; //com.dothantech.data.DzTagObject$a
  JDzTagObject = interface; //com.dothantech.data.DzTagObject
  Ja_112 = interface; //com.dothantech.lpapi.a
  Jb_113 = interface; //com.dothantech.lpapi.b
  JIAtBitmap_BarcodeType1D = interface; //com.dothantech.lpapi.IAtBitmap$BarcodeType1D
  JIAtBitmap_BarcodeType2D = interface; //com.dothantech.lpapi.IAtBitmap$BarcodeType2D
  JIAtBitmap_Factory = interface; //com.dothantech.lpapi.IAtBitmap$Factory
  JIAtBitmap_FontStyle = interface; //com.dothantech.lpapi.IAtBitmap$FontStyle
  JIAtBitmap_ItemAlignment = interface; //com.dothantech.lpapi.IAtBitmap$ItemAlignment
  JIAtBitmap_LabelScaleUnit = interface; //com.dothantech.lpapi.IAtBitmap$LabelScaleUnit
  JIAtBitmap_PenAlignment = interface; //com.dothantech.lpapi.IAtBitmap$PenAlignment
  JIAtBitmap_ResultCode = interface; //com.dothantech.lpapi.IAtBitmap$ResultCode
  JIAtBitmap = interface; //com.dothantech.lpapi.IAtBitmap
  JLPAPI_BarcodeType = interface; //com.dothantech.lpapi.LPAPI$BarcodeType
  JLPAPI_Callback = interface; //com.dothantech.lpapi.LPAPI$Callback
  JLPAPI_Factory = interface; //com.dothantech.lpapi.LPAPI$Factory
  JLPAPI_FontStyle = interface; //com.dothantech.lpapi.LPAPI$FontStyle
  JLPAPI_ItemAlignment = interface; //com.dothantech.lpapi.LPAPI$ItemAlignment
  JLPAPI_PenAlignment = interface; //com.dothantech.lpapi.LPAPI$PenAlignment
  JLPAPI = interface; //com.dothantech.lpapi.LPAPI
  Ja_a_130 = interface; //com.dothantech.printer.a$a
  Ja_131 = interface; //com.dothantech.printer.a
  Jb_132 = interface; //com.dothantech.printer.b
  Jc_133 = interface; //com.dothantech.printer.c
  Jd_134 = interface; //com.dothantech.printer.d
  JDzPrinter_a = interface; //com.dothantech.printer.DzPrinter$a
  JDzPrinter_b = interface; //com.dothantech.printer.DzPrinter$b
  JDzPrinter = interface; //com.dothantech.printer.DzPrinter
  Je_138 = interface; //com.dothantech.printer.e
  Jf_139 = interface; //com.dothantech.printer.f
  Jg_140 = interface; //com.dothantech.printer.g
  Jh_141 = interface; //com.dothantech.printer.h
  Ji_142 = interface; //com.dothantech.printer.i
  JIDzPrinter_AddressType = interface; //com.dothantech.printer.IDzPrinter$AddressType
  JIDzPrinter_Factory = interface; //com.dothantech.printer.IDzPrinter$Factory
  JIDzPrinter_IDzPrinterCallback = interface; //com.dothantech.printer.IDzPrinter$IDzPrinterCallback
  JIDzPrinter_PrinterAddress = interface; //com.dothantech.printer.IDzPrinter$PrinterAddress
  JIDzPrinter_PrinterInfo = interface; //com.dothantech.printer.IDzPrinter$PrinterInfo
  JIDzPrinter_PrinterState = interface; //com.dothantech.printer.IDzPrinter$PrinterState
  JIDzPrinter_PrintFailReason = interface; //com.dothantech.printer.IDzPrinter$PrintFailReason
  JIDzPrinter_PrintParamName = interface; //com.dothantech.printer.IDzPrinter$PrintParamName
  JIDzPrinter_PrintParamValue = interface; //com.dothantech.printer.IDzPrinter$PrintParamValue
  JIDzPrinter_PrintProgress = interface; //com.dothantech.printer.IDzPrinter$PrintProgress
  JIDzPrinter_ProgressInfo = interface; //com.dothantech.printer.IDzPrinter$ProgressInfo
  JIDzPrinter = interface; //com.dothantech.printer.IDzPrinter
  JIDzPrinter2_DeviceAddrTypeConverter = interface; //com.dothantech.printer.IDzPrinter2$DeviceAddrTypeConverter
  JIDzPrinter2_GeneralProgress = interface; //com.dothantech.printer.IDzPrinter2$GeneralProgress
  JIDzPrinter2_IDzPrinterCallback2 = interface; //com.dothantech.printer.IDzPrinter2$IDzPrinterCallback2
  JIDzPrinter2_PrinterParam = interface; //com.dothantech.printer.IDzPrinter2$PrinterParam
  JIDzPrinter2_PrinterParamName = interface; //com.dothantech.printer.IDzPrinter2$PrinterParamName
  JIDzPrinter2 = interface; //com.dothantech.printer.IDzPrinter2
  Jj_161 = interface; //com.dothantech.printer.j
  Jk_162 = interface; //com.dothantech.printer.k
  Jl_163 = interface; //com.dothantech.printer.l
  Jm_164 = interface; //com.dothantech.printer.m
  Jn_165 = interface; //com.dothantech.printer.n
  Jo_166 = interface; //com.dothantech.printer.o
  Jp_167 = interface; //com.dothantech.printer.p
  Ja_168 = interface; //com.dothantech.view.a
  Jb_169 = interface; //com.dothantech.view.b
  Jc_170 = interface; //com.dothantech.view.c
  JDzWindow_ViewInfo = interface; //com.dothantech.view.DzWindow$ViewInfo
  JDzWindow = interface; //com.dothantech.view.DzWindow

// ===== Interface declarations =====

  JaClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/a/a/b
  ['{C405F43C-B4CF-4F95-A355-B8FC09311B0A}']
    { static Property Methods }

    { static Methods }
    {class} function init: Ja; cdecl; overload; //()V
    {class} function init(P1: Ja): Ja; cdecl; overload; //(Lcom/dothantech/c/a;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/a/a/a')]
  Ja = interface(JObject) // or JObject // SuperSignature: com/dothantech/a/a/b
  ['{6DED9C62-AA9E-4AF3-A02E-C9F3A0CC176D}']
    { Property Methods }

    { methods }
    function a(P1: JString; P2: Integer; P3: Integer): Jc; cdecl; //(Ljava/lang/String;II)Lcom/dothantech/a/a/c;

    { Property }
  end;

  TJa = class(TJavaGenericImport<JaClass, Ja>) end;

  Jb_aClass = interface(JObjectClass)
  ['{56971303-9365-4339-B847-613338261B6C}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Ja; P2: JString): Jb_a; cdecl; overload; //(Lcom/dothantech/c/a;Ljava/lang/String;)V
    {class} function init(P1: Ja; P2: JString; P3: Boolean; P4: Boolean; P5: Boolean): Jb_a; cdecl; overload; //(Lcom/dothantech/c/a;Ljava/lang/String;ZZZ)V
    {class} function init(P1: Ja; P2: JString; P3: Boolean; P4: Boolean; P5: Boolean; P6: Boolean): Jb_a; cdecl; overload; //(Lcom/dothantech/c/a;Ljava/lang/String;ZZZZ)V
    {class} function init(P1: Jb_a; P2: Ja): Jb_a; cdecl; overload; //(Lcom/dothantech/a/a/b$a;Lcom/dothantech/c/a;)V
    {class} function init(P1: Jb_a; P2: Boolean): Jb_a; cdecl; overload; //(Lcom/dothantech/a/a/b$a;Z)V
    {class} function init(P1: Jb_a; P2: JString; P3: Boolean): Jb_a; cdecl; overload; //(Lcom/dothantech/a/a/b$a;Ljava/lang/String;Z)V
    {class} function init(P1: Jb_a; P2: JString; P3: Boolean; P4: Boolean): Jb_a; cdecl; overload; //(Lcom/dothantech/a/a/b$a;Ljava/lang/String;ZZ)V
    {class} function a(P1: TJavaObjectArray<JEnum>; P2: JObject; P3: JEnum): JEnum; cdecl; overload; //([Ljava/lang/Enum;Ljava/lang/Object;Ljava/lang/Enum;)Ljava/lang/Enum;
    {class} function a(P1: JMessage): JMessage; cdecl; overload; //(Landroid/os/Message;)Landroid/os/Message;

    { static Property }
  end;

  [JavaSignature('com/dothantech/a/a/b$a')]
  Jb_a = interface(JObject)
  ['{DF4DC3DA-FA4C-4483-B7D8-22EB3D0FCF13}']
    { Property Methods }
    function _Geta: JString; //Ljava/lang/String;
    procedure _Seta(aa: JString); //(Ljava/lang/String;)V
    function _Getb: Boolean; //Z
    procedure _Setb(ab: Boolean); //(Z)V
    function _Getc: Boolean; //Z
    procedure _Setc(ac: Boolean); //(Z)V

    { methods }

    { Property }
    property a: JString read _Geta write _Seta;
    property b: Boolean read _Getb write _Setb;
    property c: Boolean read _Getc write _Setc;
  end;

  TJb_a = class(TJavaGenericImport<Jb_aClass, Jb_a>) end;

  JbClass = interface(JObjectClass)
  ['{E6BA26C1-721E-4182-B3D4-75A281290293}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jb; cdecl; //()V
    {class} function a(P1: Jb): JBitmap; cdecl; overload; //(Lcom/dothantech/c/a/b;)Landroid/graphics/Bitmap;
    {class} function a(P1: JBitmap; P2: Ji): JBitmap; cdecl; overload; //(Landroid/graphics/Bitmap;Lcom/dothantech/common/i;)Landroid/graphics/Bitmap;
    {class} function a(P1: JBitmap; P2: JBitmap_Config): JBitmap; cdecl; overload; //(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    {class} function a(P1: Integer; P2: Boolean): Boolean; cdecl; overload; //(IZ)Z
    {class} function a: JResources; cdecl; overload; //()Landroid/content/res/Resources;
    {class} function a(P1: Integer): JString; cdecl; overload; //(I)Ljava/lang/String;
    {class} function a(P1: Integer; P2: TJavaObjectArray<JObject>): JString; cdecl; overload; //(I[Ljava/lang/Object;)Ljava/lang/String;
    {class} function b(P1: Integer; P2: TJavaObjectArray<JObject>): JString; cdecl; //(I[Ljava/lang/Object;)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/dothantech/a/a/b')]
  Jb = interface(JObject)
  ['{D3CAD02D-5950-456F-83BE-E5724FD30F71}']
    { Property Methods }

    { methods }
    function a(P1: JString; P2: Integer; P3: Integer): Jc; cdecl; overload; //(Ljava/lang/String;II)Lcom/dothantech/a/a/c;

    { Property }
  end;

  TJb = class(TJavaGenericImport<JbClass, Jb>) end;

  JcClass = interface(JObjectClass)
  ['{40B9042F-0EAC-4086-BABE-D02360D4BCEF}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Jb_a; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Jb): Jc; cdecl; //(Lcom/dothantech/a/a/b$a;IIIILcom/dothantech/c/a/b;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/a/a/c')]
  Jc = interface(JObject)
  ['{ACFE3040-2B2E-4EFA-AD8F-81FA0A0ED6F0}']
    { Property Methods }
    function _Geta: Jb; //Lcom/dothantech/c/a/b;
    procedure _Seta(aa: Jb); //(Lcom/dothantech/c/a/b;)V

    { methods }

    { Property }
    property a: Jb read _Geta write _Seta;
  end;

  TJc = class(TJavaGenericImport<JcClass, Jc>) end;

  JdClass = interface(JbClass) // or JObjectClass // SuperSignature: com/dothantech/a/a/b
  ['{D42F0356-4816-4580-B3CC-D8342B287C38}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jd; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/a/a/d')]
  Jd = interface(Jb) // or JObject // SuperSignature: com/dothantech/a/a/b
  ['{758FEAFB-6BCD-464E-977C-C52C57A732E8}']
    { Property Methods }

    { methods }
    function a(P1: JString; P2: Integer; P3: Integer): Jc; cdecl; //(Ljava/lang/String;II)Lcom/dothantech/a/a/c;

    { Property }
  end;

  TJd = class(TJavaGenericImport<JdClass, Jd>) end;

  Ja_aClass = interface(JObjectClass)
  ['{DF3156F4-AFB3-4EC6-9591-04F04229C589}']
    { static Property Methods }

    { static Methods }
    {class} function init: Ja_a; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/b/a$a')]
  Ja_a = interface(JObject)
  ['{6F84BE63-4729-4EDF-833B-360E7F2FA482}']
    { Property Methods }
    function _Geta: Integer; //I
    procedure _Seta(aa: Integer); //(I)V

    { methods }

    { Property }
    property a: Integer read _Geta write _Seta;
  end;

  TJa_a = class(TJavaGenericImport<Ja_aClass, Ja_a>) end;

  Ja_bClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{2FD298DB-20B4-4B98-B597-A529F7F6DC55}']
    { static Property Methods }
    {class} function _Geta: Ja_b; //Lcom/dothantech/b/a$b;
    {class} function _Getb: Ja_b; //Lcom/dothantech/b/a$b;
    {class} function _Getc: Ja_b; //Lcom/dothantech/b/a$b;
    {class} function _Getd: Ja_b; //Lcom/dothantech/b/a$b;
    {class} function _Gete: Ja_b; //Lcom/dothantech/b/a$b;

    { static Methods }
    {class} function values: TJavaObjectArray<Ja_b>; cdecl; //()[Lcom/dothantech/b/a$b;
    {class} function valueOf(P1: JString): Ja_b; cdecl; //(Ljava/lang/String;)Lcom/dothantech/b/a$b;

    { static Property }
    {class} property a: Ja_b read _Geta;
    {class} property b: Ja_b read _Getb;
    {class} property c: Ja_b read _Getc;
    {class} property d: Ja_b read _Getd;
    {class} property e: Ja_b read _Gete;
  end;

  [JavaSignature('com/dothantech/b/a$b')]
  Ja_b = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{0F87DA2A-DE59-42B7-8CCA-E2A5F9840596}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_b = class(TJavaGenericImport<Ja_bClass, Ja_b>) end;

  Ja_007Class = interface(JObjectClass)
  ['{4774F399-EE7B-4C5C-82CA-7927993EF92D}']
    { static Property Methods }
    {class} function _Geta: JUUID; //Ljava/util/UUID;

    { static Methods }
    {class} function a: JSet; cdecl; overload; //()Ljava/util/Set;
    {class} function a(P1: JString): JBluetoothDevice; cdecl; overload; //(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    {class} function a(P1: JBluetoothAdapter; P2: JString): JBluetoothDevice; cdecl; overload; //(Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    {class} function b(P1: JString): JString; cdecl; overload; //(Ljava/lang/String;)Ljava/lang/String;
    {class} function a(P1: JBluetoothDevice): Boolean; cdecl; overload; //(Landroid/bluetooth/BluetoothDevice;)Z
    {class} function a(P1: JBluetoothDevice; P2: JString): Boolean; cdecl; overload; //(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    {class} procedure a(P1: JBluetoothSocket); cdecl; overload; //(Landroid/bluetooth/BluetoothSocket;)V
    {class} procedure b; cdecl; overload; //()V
    {class} function c(P1: JString): JString; cdecl; overload; //(Ljava/lang/String;)Ljava/lang/String;
    {class} function b(P1: JBluetoothDevice): Ja_b; cdecl; overload; //(Landroid/bluetooth/BluetoothDevice;)Lcom/dothantech/b/a$b;
    {class} function d(P1: JString): Ja_b; cdecl; //(Ljava/lang/String;)Lcom/dothantech/b/a$b;
    {class} function a(P1: JString; P2: Ja_a): Ja_b; cdecl; overload; //(Ljava/lang/String;Lcom/dothantech/b/a$a;)Lcom/dothantech/b/a$b;
    {class} function c(P1: JBluetoothDevice): Boolean; cdecl; overload; //(Landroid/bluetooth/BluetoothDevice;)Z
    {class} function e(P1: JString): JIDzPrinter_PrinterAddress; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$PrinterAddress;

    { static Property }
    {class} property a: JUUID read _Geta;
  end;

  [JavaSignature('com/dothantech/b/a')]
  Ja_007 = interface(JObject)
  ['{AF6183B9-E93A-4854-9F27-F7F09F48B8B1}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_007 = class(TJavaGenericImport<Ja_007Class, Ja_007>) end;

  Jb_a_008Class = interface(JObjectClass)
  ['{72747673-5101-424A-9E9B-5D8D6C4104DB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/b/b$a')]
  Jb_a_008 = interface(IJavaInstance)
  ['{9B3CDDBB-5208-4698-9823-2B786BDAFE7D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJb_a_008 = class(TJavaGenericImport<Jb_a_008Class, Jb_a_008>) end;

  Jb_009Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/b/c
  ['{6EBE4A2B-A0BD-4A3A-BDE1-522FB319572D}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JInputStream): Jb_009; cdecl; //(Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/b/b')]
  Jb_009 = interface(JObject) // or JObject // SuperSignature: com/dothantech/b/c
  ['{7C483443-137D-415A-8D28-64417551C73D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJb_009 = class(TJavaGenericImport<Jb_009Class, Jb_009>) end;

  Jc_010Class = interface(JObjectClass)
  ['{C959980B-569F-4F72-AD10-75FC68AFCC4A}']
    { static Property Methods }
    {class} function _Geta: Ju; //Lcom/dothantech/common/u;

    { static Methods }
    {class} function init(P1: JInputStream): Jc_010; cdecl; //(Ljava/io/InputStream;)V

    { static Property }
    {class} property a: Ju read _Geta;
  end;

  [JavaSignature('com/dothantech/b/c')]
  Jc_010 = interface(JObject)
  ['{11003CF2-D181-4102-83F3-1BE9BCF72F60}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJc_010 = class(TJavaGenericImport<Jc_010Class, Jc_010>) end;

  Jd_011Class = interface(JThreadClass) // or JObjectClass // SuperSignature: java/lang/Thread
  ['{142F0772-13D1-4FE1-A506-B26A10AE2C6B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/b/d')]
  Jd_011 = interface(JThread) // or JObject // SuperSignature: java/lang/Thread
  ['{9B0F739D-B5B9-4CA1-B43B-4FA11E6DBC61}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJd_011 = class(TJavaGenericImport<Jd_011Class, Jd_011>) end;

  Ja_012Class = interface(JObjectClass)
  ['{23491675-004F-40B9-9D31-643743B87A1D}']
    { static Property Methods }
    {class} function _Geta: Ja; //Lcom/dothantech/c/a/a/a;

    { static Methods }

    { static Property }
    {class} property a: Ja read _Geta;
  end;

  [JavaSignature('com/dothantech/c/a/a/a')]
  Ja_012 = interface(JObject)
  ['{4698312E-AE01-456A-B215-C938DF8D7DF5}']
    { Property Methods }

    { methods }
    function b: Integer; cdecl; //()I
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJa_012 = class(TJavaGenericImport<Ja_012Class, Ja_012>) end;

  Jb_013Class = interface(JObjectClass)
  ['{20101E14-6D7D-42B3-A912-01BEB5D24C7D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/a/a/b')]
  Jb_013 = interface(JObject)
  ['{F6D1E26B-5369-4474-BEDC-996E3052C466}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJb_013 = class(TJavaGenericImport<Jb_013Class, Jb_013>) end;

  Jc_014Class = interface(JObjectClass)
  ['{ED3DB852-79F2-4BB0-8618-80A805902613}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Ja): Jc_014; cdecl; //(Lcom/dothantech/c/a/a/a;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/a/a/c')]
  Jc_014 = interface(JObject)
  ['{7F70C434-7A75-4A53-91BB-1669CEC20BE1}']
    { Property Methods }

    { methods }
    procedure a(P1: TJavaArray<Integer>; P2: Integer); cdecl; //([II)V

    { Property }
  end;

  TJc_014 = class(TJavaGenericImport<Jc_014Class, Jc_014>) end;

  Ja_015Class = interface(JObjectClass)
  ['{5ACAB86D-1135-4EB6-8419-CE4F4CB885B4}']
    { static Property Methods }

    { static Methods }
    {class} function init: Ja_015; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/a/a')]
  Ja_015 = interface(JObject)
  ['{3D0BE6E7-F3E3-4B57-8E29-B0A78EE65F23}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload; //()I
    function b: Integer; cdecl; overload; //()I
    function a(P1: Integer): Boolean; cdecl; overload; //(I)Z
    procedure a(P1: Boolean); cdecl; overload; //(Z)V
    procedure a(P1: Integer; P2: Integer); cdecl; overload; //(II)V
    procedure a(P1: Ja); cdecl; overload; //(Lcom/dothantech/c/a/a;)V
    procedure b(P1: Ja); cdecl; overload; //(Lcom/dothantech/c/a/a;)V
    procedure a(P1: Integer; P2: TJavaArray<Byte>; P3: Integer; P4: Integer); cdecl; overload; //(I[BII)V
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function hashCode: Integer; cdecl; //()I
    function toString: JString; cdecl; //()Ljava/lang/String;
    function clone: JObject; cdecl; //()Ljava/lang/Object;

    { Property }
  end;

  TJa_015 = class(TJavaGenericImport<Ja_015Class, Ja_015>) end;

  Jb_016Class = interface(JObjectClass)
  ['{784A4129-6BD1-4887-A862-58D5D3AE4CE3}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Integer; P2: Integer): Jb_016; cdecl; //(II)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/a/b')]
  Jb_016 = interface(JObject)
  ['{8F967A75-7F50-4203-B6CB-7734B55A07DB}']
    { Property Methods }

    { methods }
    function a(P1: Integer; P2: Integer): Boolean; cdecl; overload; //(II)Z
    procedure a(P1: Integer; P2: Integer; P3: Integer; P4: Integer); cdecl; overload; //(IIII)V
    function a: Integer; cdecl; overload; //()I
    function b: Integer; cdecl; //()I
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function hashCode: Integer; cdecl; //()I
    function toString: JString; cdecl; //()Ljava/lang/String;
    function clone: JObject; cdecl; //()Ljava/lang/Object;

    { Property }
  end;

  TJb_016 = class(TJavaGenericImport<Jb_016Class, Jb_016>) end;

  Jc_017Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{31C877DC-D5C2-4C39-A756-554B2479460E}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JString): Jc; cdecl; overload; //(Ljava/lang/String;)Lcom/dothantech/c/a/c;
    {class} function values: TJavaObjectArray<Jc>; cdecl; //()[Lcom/dothantech/c/a/c;
    {class} function valueOf(P1: JString): Jc; cdecl; //(Ljava/lang/String;)Lcom/dothantech/c/a/c;

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/a/c')]
  Jc_017 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{161631B6-0B9C-4434-B248-DBC607E88B0A}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload; //()I

    { Property }
  end;

  TJc_017 = class(TJavaGenericImport<Jc_017Class, Jc_017>) end;

  Ja_018Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{11DB3680-CF5F-4E4C-BB71-C128E3A370F4}']
    { static Property Methods }
    {class} function _Geta: Ja; //Lcom/dothantech/c/a;
    {class} function _Getb: Ja; //Lcom/dothantech/c/a;
    {class} function _Getc: Ja; //Lcom/dothantech/c/a;
    {class} function _Getd: Ja; //Lcom/dothantech/c/a;
    {class} function _Gete: Ja; //Lcom/dothantech/c/a;
    {class} function _Getf: Ja; //Lcom/dothantech/c/a;
    {class} function _Getg: Ja; //Lcom/dothantech/c/a;
    {class} function _Geth: Ja; //Lcom/dothantech/c/a;
    {class} function _Geti: Ja; //Lcom/dothantech/c/a;
    {class} function _Getj: Ja; //Lcom/dothantech/c/a;
    {class} function _Getk: Ja; //Lcom/dothantech/c/a;
    {class} function _Getl: Ja; //Lcom/dothantech/c/a;
    {class} function _Getm: Ja; //Lcom/dothantech/c/a;
    {class} function _Getn: Ja; //Lcom/dothantech/c/a;
    {class} function _Geto: Ja; //Lcom/dothantech/c/a;
    {class} function _Getp: Ja; //Lcom/dothantech/c/a;
    {class} function _Getq: Ja; //Lcom/dothantech/c/a;
    {class} function _Getr: Ja; //Lcom/dothantech/c/a;
    {class} function _Gets: Ja; //Lcom/dothantech/c/a;
    {class} function _Gett: Ja; //Lcom/dothantech/c/a;
    {class} function _Getu: Ja; //Lcom/dothantech/c/a;
    {class} function _Getv: Ja; //Lcom/dothantech/c/a;
    {class} function _Getw: Ja; //Lcom/dothantech/c/a;

    { static Methods }
    {class} function values: TJavaObjectArray<Ja>; cdecl; //()[Lcom/dothantech/c/a;
    {class} function valueOf(P1: JString): Ja; cdecl; //(Ljava/lang/String;)Lcom/dothantech/c/a;

    { static Property }
    {class} property a: Ja read _Geta;
    {class} property b: Ja read _Getb;
    {class} property c: Ja read _Getc;
    {class} property d: Ja read _Getd;
    {class} property e: Ja read _Gete;
    {class} property f: Ja read _Getf;
    {class} property g: Ja read _Getg;
    {class} property h: Ja read _Geth;
    {class} property i: Ja read _Geti;
    {class} property j: Ja read _Getj;
    {class} property k: Ja read _Getk;
    {class} property l: Ja read _Getl;
    {class} property m: Ja read _Getm;
    {class} property n: Ja read _Getn;
    {class} property o: Ja read _Geto;
    {class} property p: Ja read _Getp;
    {class} property q: Ja read _Getq;
    {class} property r: Ja read _Getr;
    {class} property s: Ja read _Gets;
    {class} property t: Ja read _Gett;
    {class} property u: Ja read _Getu;
    {class} property v: Ja read _Getv;
    {class} property w: Ja read _Getw;
  end;

  [JavaSignature('com/dothantech/c/a')]
  Ja_018 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{6CF1C89A-6AFD-4C96-94AA-0BF7F060826E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_018 = class(TJavaGenericImport<Ja_018Class, Ja_018>) end;

  Ja_019Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/k
  ['{F225313A-26EE-43BC-AEA2-5E128ED81B6F}']
    { static Property Methods }

    { static Methods }
    {class} function init: Ja_019; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/a')]
  Ja_019 = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/k
  ['{A5B93F9A-8558-45FF-8D43-AA1408D844BF}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJa_019 = class(TJavaGenericImport<Ja_019Class, Ja_019>) end;

  Jb_020Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/k
  ['{4992721C-4FB8-49AE-B6B1-7CD8E13FB91C}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jb_020; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/b')]
  Jb_020 = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/k
  ['{F0CDCE76-ED20-4B18-93F1-0BB95A61F249}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJb_020 = class(TJavaGenericImport<Jb_020Class, Jb_020>) end;

  Jc_021Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/g
  ['{DB8D6789-8591-4D4C-B17E-D4C0CB392380}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/c')]
  Jc_021 = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/g
  ['{346F7A15-73EE-4B9A-B059-21782C30940A}']
    { Property Methods }

    { methods }
    function a(P1: Char): Boolean; cdecl; //(C)Z

    { Property }
  end;

  TJc_021 = class(TJavaGenericImport<Jc_021Class, Jc_021>) end;

  Jd_aClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/d
  ['{55238965-6605-4180-B28F-98506F3CCCB1}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jd_a; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/d$a')]
  Jd_a = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/d
  ['{9B3E4B10-E74B-4224-94E4-D02ACBA55B2C}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJd_a = class(TJavaGenericImport<Jd_aClass, Jd_a>) end;

  Jd_bClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/d
  ['{E4EC2519-B3B0-4D83-AD60-789CB97B520E}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jd_b; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/d$b')]
  Jd_b = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/d
  ['{5EED54BE-7051-442F-90D1-D20F3CC0522F}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJd_b = class(TJavaGenericImport<Jd_bClass, Jd_b>) end;

  Jd_024Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/k
  ['{BB1B65E1-FE42-4978-9865-A1A67EFFBB73}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jd_024; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/d')]
  Jd_024 = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/k
  ['{E513A086-8CE5-491F-A4B0-D2121C06101A}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJd_024 = class(TJavaGenericImport<Jd_024Class, Jd_024>) end;

  JeClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/g
  ['{97F5F9C4-B54C-4A2A-A65D-C648E9A799B6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/e')]
  Je = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/g
  ['{57F21AF4-857F-42E3-8F0A-706550CA1821}']
    { Property Methods }

    { methods }
    function a(P1: Char): Boolean; cdecl; //(C)Z

    { Property }
  end;

  TJe = class(TJavaGenericImport<JeClass, Je>) end;

  JfClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/g
  ['{67B78364-70A0-4634-902C-4C09788C9777}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/f')]
  Jf = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/g
  ['{DB03B79C-F1BE-48EB-86EC-1A3E3ADF876E}']
    { Property Methods }

    { methods }
    function a(P1: Char): Boolean; cdecl; //(C)Z

    { Property }
  end;

  TJf = class(TJavaGenericImport<JfClass, Jf>) end;

  Jg_aClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/g
  ['{7EBC60EB-CD8C-4BC1-B52F-ED10A3F7A0D6}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jg_a; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/g$a')]
  Jg_a = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/g
  ['{CA6FE594-3615-4F5C-A32C-B04713D0C877}']
    { Property Methods }

    { methods }
    function a(P1: Char): Boolean; cdecl; //(C)Z

    { Property }
  end;

  TJg_a = class(TJavaGenericImport<Jg_aClass, Jg_a>) end;

  Jg_bClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/g
  ['{2D0E3248-093D-4B6D-A4A9-633F752AA96E}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): Jg_b; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/g$b')]
  Jg_b = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/g
  ['{41F86FE6-6344-42A3-8EED-EBFA691AB047}']
    { Property Methods }

    { methods }
    function a(P1: Char): Boolean; cdecl; //(C)Z

    { Property }
  end;

  TJg_b = class(TJavaGenericImport<Jg_bClass, Jg_b>) end;

  JgClass = interface(JObjectClass)
  ['{8A3F8BCA-9235-43C6-B348-51C68EBFD764}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jg; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/g')]
  Jg = interface(JObject)
  ['{17FFA79B-FF7B-4DFF-AE56-4926D13F062E}']
    { Property Methods }

    { methods }
    function a(P1: Char): Boolean; cdecl; //(C)Z

    { Property }
  end;

  TJg = class(TJavaGenericImport<JgClass, Jg>) end;

  Jh_aClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/h
  ['{D161E761-2A2D-4F35-BAD5-B82E2B774EE9}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jh_a; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/h$a')]
  Jh_a = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/h
  ['{FC42505C-991D-4A6E-ACF3-46B58C5C7904}']
    { Property Methods }

    { methods }
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJh_a = class(TJavaGenericImport<Jh_aClass, Jh_a>) end;

  JhClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/m
  ['{76767024-FCAB-4A29-A1DB-E2405BBCC61D}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jh; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/h')]
  Jh = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/m
  ['{7CAD578A-DA34-45A4-BC38-0464E07F5544}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJh = class(TJavaGenericImport<JhClass, Jh>) end;

  JiClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/m
  ['{63C6592B-060B-43EF-A5BD-689A75F10AB8}']
    { static Property Methods }

    { static Methods }
    {class} function init: Ji; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/i')]
  Ji = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/m
  ['{FA4466BC-4E02-40D1-9C7C-2E8892D0C1B0}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJi = class(TJavaGenericImport<JiClass, Ji>) end;

  Jj_aClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/j
  ['{FD3545D0-A643-4E2C-B73D-2DEBBC636ED6}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jj_a; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/j$a')]
  Jj_a = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/j
  ['{20C2C8E6-C58E-4A59-B057-90B6F60EC8EA}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJj_a = class(TJavaGenericImport<Jj_aClass, Jj_a>) end;

  Jj_bClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/j
  ['{61344100-E090-4F80-898B-6598548006B8}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jj_b; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/j$b')]
  Jj_b = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/j
  ['{89142042-8277-43A3-BA5F-D219262BF6B4}']
    { Property Methods }

    { methods }
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJj_b = class(TJavaGenericImport<Jj_bClass, Jj_b>) end;

  Jj_cClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/j
  ['{AD163BDE-5E72-4814-8425-4C4EF16E1AF0}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jj_c; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/j$c')]
  Jj_c = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/j
  ['{1FDE23A7-F7A9-480F-8002-BB2B7EDDBE5F}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJj_c = class(TJavaGenericImport<Jj_cClass, Jj_c>) end;

  Jj_dClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/j
  ['{9D44B470-F9D4-4A4A-92C1-B3D325DD93CD}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jj_d; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/j$d')]
  Jj_d = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/j
  ['{22618FA4-D42D-48A8-8052-75A79C8D0C02}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJj_d = class(TJavaGenericImport<Jj_dClass, Jj_d>) end;

  JjClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/k
  ['{A60E37BF-9A47-43E3-B590-C10E817D6EDB}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jj; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/j')]
  Jj = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/k
  ['{08F00F73-E4DD-4DFC-998E-50A9EFF16ADD}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJj = class(TJavaGenericImport<JjClass, Jj>) end;

  JkClass = interface(JObjectClass)
  ['{E930E080-7DA6-4AEA-9569-2E0A577EC222}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jk; cdecl; //()V
    {class} function a(P1: Ja; P2: JString; P3: Integer; P4: Char): Jb_a; cdecl; overload; //(Lcom/dothantech/c/a;Ljava/lang/String;IC)Lcom/dothantech/a/a/b$a;
    {class} function a(P1: Ja; P2: JString; P3: Integer; P4: JString; P5: Char): Jb_a; cdecl; overload; //(Lcom/dothantech/c/a;Ljava/lang/String;ILjava/lang/String;C)Lcom/dothantech/a/a/b$a;
    {class} function a(P1: Ja; P2: JString; P3: Integer; P4: Jg; P5: Char): Jb_a; cdecl; overload; //(Lcom/dothantech/c/a;Ljava/lang/String;ILcom/dothantech/c/b/g;C)Lcom/dothantech/a/a/b$a;

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/k')]
  Jk = interface(JObject)
  ['{213616A2-A6E8-4CEA-82E2-6C27EE356460}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; overload; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJk = class(TJavaGenericImport<JkClass, Jk>) end;

  JlClass = interface(JkClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/k
  ['{C27874E4-4129-45ED-934C-6882C4DF4464}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jl; cdecl; //()V
    {class} function d(P1: JString): Char; cdecl; //(Ljava/lang/String;)C

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/l')]
  Jl = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/k
  ['{80EBF145-D80B-4573-9348-4BBA9E42F0B6}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJl = class(TJavaGenericImport<JlClass, Jl>) end;

  Jm_aClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/m
  ['{5FD96A97-D3E1-452B-9551-A5D5EE576478}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jm_a; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/m$a')]
  Jm_a = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/m
  ['{831B6EE6-ECA5-4AB5-B831-F738EA9F1D0C}']
    { Property Methods }

    { methods }
    function a(P1: JString): TJavaArray<Boolean>; cdecl; //(Ljava/lang/String;)[Z
    function b(P1: JString): Jb_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/a/a/b$a;

    { Property }
  end;

  TJm_a = class(TJavaGenericImport<Jm_aClass, Jm_a>) end;

  JmClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/b/k
  ['{D706519D-06FB-446D-912D-D1FE7848DA23}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jm; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/b/m')]
  Jm = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/b/k
  ['{E3E75F4A-8F82-439C-A128-157DD34F057D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJm = class(TJavaGenericImport<JmClass, Jm>) end;

  Jb_042Class = interface(JObjectClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{6A9A20BA-8A42-448A-B3E9-5F5708FE0A74}']
    { static Property Methods }
    {class} function _Geta: Jb; //Lcom/dothantech/c/b;
    {class} function _Getb: Jb; //Lcom/dothantech/c/b;

    { static Methods }
    {class} function values: TJavaObjectArray<Jb>; cdecl; //()[Lcom/dothantech/c/b;
    {class} function valueOf(P1: JString): Jb; cdecl; //(Ljava/lang/String;)Lcom/dothantech/c/b;

    { static Property }
    {class} property a: Jb read _Geta;
    {class} property b: Jb read _Getb;
  end;

  [JavaSignature('com/dothantech/c/b')]
  Jb_042 = interface(JObject) // or JObject // SuperSignature: java/lang/Enum
  ['{C4749C57-F34C-4050-BE61-FD980DA7E082}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJb_042 = class(TJavaGenericImport<Jb_042Class, Jb_042>) end;

  Ja_043Class = interface(JObjectClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{74C81698-8C44-41AA-8F7E-3B1261CD2D9A}']
    { static Property Methods }
    {class} function _Geta: Ja; //Lcom/dothantech/c/c/a/a;

    { static Methods }
    {class} function values: TJavaObjectArray<Ja>; cdecl; //()[Lcom/dothantech/c/c/a/a;
    {class} function valueOf(P1: JString): Ja; cdecl; //(Ljava/lang/String;)Lcom/dothantech/c/c/a/a;

    { static Property }
    {class} property a: Ja read _Geta;
  end;

  [JavaSignature('com/dothantech/c/c/a/a')]
  Ja_043 = interface(JObject) // or JObject // SuperSignature: java/lang/Enum
  ['{E7A98AC0-4755-477C-9D05-BCBB72F7B323}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; //()I

    { Property }
  end;

  TJa_043 = class(TJavaGenericImport<Ja_043Class, Ja_043>) end;

  Jb_044Class = interface(JObjectClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{F45AF167-4066-4A5F-AB63-9A92FD8FFBB7}']
    { static Property Methods }
    {class} function _Geta: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Getb: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Getc: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Getd: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Gete: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Getf: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Getg: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Geth: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Geti: Jb; //Lcom/dothantech/c/c/a/b;
    {class} function _Getj: Jb; //Lcom/dothantech/c/c/a/b;

    { static Methods }
    {class} function values: TJavaObjectArray<Jb>; cdecl; //()[Lcom/dothantech/c/c/a/b;
    {class} function valueOf(P1: JString): Jb; cdecl; //(Ljava/lang/String;)Lcom/dothantech/c/c/a/b;

    { static Property }
    {class} property a: Jb read _Geta;
    {class} property b: Jb read _Getb;
    {class} property c: Jb read _Getc;
    {class} property d: Jb read _Getd;
    {class} property e: Jb read _Gete;
    {class} property f: Jb read _Getf;
    {class} property g: Jb read _Getg;
    {class} property h: Jb read _Geth;
    {class} property i: Jb read _Geti;
    {class} property j: Jb read _Getj;
  end;

  [JavaSignature('com/dothantech/c/c/a/b')]
  Jb_044 = interface(JObject) // or JObject // SuperSignature: java/lang/Enum
  ['{333860CF-E956-4403-BF9B-9DECF68FE881}']
    { Property Methods }

    { methods }
    function a(P1: Jc): Integer; cdecl; overload; //(Lcom/dothantech/c/c/a/c;)I
    function a: Integer; cdecl; overload; //()I

    { Property }
  end;

  TJb_044 = class(TJavaGenericImport<Jb_044Class, Jb_044>) end;

  Jc_aClass = interface(JObjectClass)
  ['{21D1C40F-8A47-4817-9CD7-B841DDD4EB34}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/a/c$a')]
  Jc_a = interface(JObject)
  ['{5AA91AF0-93B0-4580-AC88-19A659A4F802}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; //()I
    function b: Integer; cdecl; //()I

    { Property }
  end;

  TJc_a = class(TJavaGenericImport<Jc_aClass, Jc_a>) end;

  Jc_bClass = interface(JObjectClass)
  ['{7F49BE74-D6BF-4C30-8134-BDF29E11E3BB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/a/c$b')]
  Jc_b = interface(JObject)
  ['{ED0ECED4-46EE-4A45-87D8-DCBBC8D1D7B9}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; //()I
    function b: Integer; cdecl; //()I
    function c: Integer; cdecl; //()I
    function d: TJavaObjectArray<Jc_a>; cdecl; //()[Lcom/dothantech/c/c/a/c$a;

    { Property }
  end;

  TJc_b = class(TJavaGenericImport<Jc_bClass, Jc_b>) end;

  Jc_047Class = interface(JObjectClass)
  ['{54566A9A-B38D-49C9-9CB3-A3E08626A4F9}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: Integer): Jc; cdecl; overload; //(I)Lcom/dothantech/c/c/a/c;

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/a/c')]
  Jc_047 = interface(JObject)
  ['{377CF3CF-0C65-4EE8-B671-A5242707AD9F}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload; //()I
    function b: Integer; cdecl; //()I
    function c: Integer; cdecl; //()I
    function a(P1: Ja): Jc_b; cdecl; overload; //(Lcom/dothantech/c/c/a/a;)Lcom/dothantech/c/c/a/c$b;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJc_047 = class(TJavaGenericImport<Jc_047Class, Jc_047>) end;

  Ja_048Class = interface(JObjectClass)
  ['{4FA8A2D1-0136-42FE-9A54-28AC585C9EB1}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/b/a')]
  Ja_048 = interface(JObject)
  ['{AB97706E-6E09-4121-A14D-C8C2660337B8}']
    { Property Methods }

    { methods }
    function a: TJavaArray<Byte>; cdecl; //()[B
    function b: TJavaArray<Byte>; cdecl; //()[B

    { Property }
  end;

  TJa_048 = class(TJavaGenericImport<Ja_048Class, Ja_048>) end;

  Jb_049Class = interface(JObjectClass)
  ['{2D5693E8-8C80-4E91-93F0-38C1D941945C}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Integer; P2: Integer): Jb_049; cdecl; //(II)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/b/b')]
  Jb_049 = interface(JObject)
  ['{E2CCD447-EE0B-4835-BE96-08B12D69273C}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload; //()I
    function b: Integer; cdecl; //()I
    function a(P1: Integer; P2: Integer): Byte; cdecl; overload; //(II)B
    function c: TJavaArray<TJavaArray<Byte>>; cdecl; //()[[B
    procedure a(P1: Integer; P2: Integer; P3: Integer); cdecl; overload; //(III)V
    procedure a(P1: Integer; P2: Integer; P3: Boolean); cdecl; overload; //(IIZ)V
    procedure a(P1: Byte); cdecl; overload; //(B)V
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJb_049 = class(TJavaGenericImport<Jb_049Class, Jb_049>) end;

  Jc_050Class = interface(JObjectClass)
  ['{F5118DB6-E259-4081-8D6F-70E00836139C}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JString; P2: Ja; P3: JMap): Je; cdecl; //(Ljava/lang/String;Lcom/dothantech/c/c/a/a;Ljava/util/Map;)Lcom/dothantech/c/c/b/e;

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/b/c')]
  Jc_050 = interface(JObject)
  ['{11234A1B-6750-4AAE-B63B-8DD36D3A0F90}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJc_050 = class(TJavaGenericImport<Jc_050Class, Jc_050>) end;

  Jd_051Class = interface(JObjectClass)
  ['{7DAB674C-75F1-4973-A06E-4736AA930F54}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/b/d')]
  Jd_051 = interface(JObject)
  ['{67A2E7B5-A6F3-4C90-AF82-9D1E1A82095A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJd_051 = class(TJavaGenericImport<Jd_051Class, Jd_051>) end;

  Je_052Class = interface(JObjectClass)
  ['{08BAB41B-0D19-4244-BDC8-9C7E2F94F603}']
    { static Property Methods }

    { static Methods }
    {class} function init: Je_052; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c/b/e')]
  Je_052 = interface(JObject)
  ['{6A6C2195-355F-4093-BF3A-C7A4A357D01D}']
    { Property Methods }

    { methods }
    function a: Jb; cdecl; overload; //()Lcom/dothantech/c/c/b/b;
    function toString: JString; cdecl; //()Ljava/lang/String;
    procedure a(P1: Jb); cdecl; overload; //(Lcom/dothantech/c/c/a/b;)V
    procedure a(P1: Ja); cdecl; overload; //(Lcom/dothantech/c/c/a/a;)V
    procedure a(P1: Jc); cdecl; overload; //(Lcom/dothantech/c/c/a/c;)V
    procedure a(P1: Integer); cdecl; overload; //(I)V
    //procedure a(P1: Jb); cdecl; overload; //(Lcom/dothantech/c/c/b/b;)V

    { Property }
  end;

  TJe_052 = class(TJavaGenericImport<Je_052Class, Je_052>) end;

  Jc_053Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/c/d
  ['{19AFD93B-44A9-446E-A992-421DF2042BA8}']
    { static Property Methods }

    { static Methods }
    {class} function a: Jc; cdecl; //()Lcom/dothantech/c/c;

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/c')]
  Jc_053 = interface(JObject) // or JObject // SuperSignature: com/dothantech/c/d
  ['{CD6272B5-29F6-4A23-9096-DA665A325145}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJc_053 = class(TJavaGenericImport<Jc_053Class, Jc_053>) end;

  Jd_054Class = interface(JExceptionClass) // or JObjectClass // SuperSignature: java/lang/Exception
  ['{78FF6204-51E0-46D5-99F6-CFF5D439377B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/d')]
  Jd_054 = interface(JException) // or JObject // SuperSignature: java/lang/Exception
  ['{69D74059-6578-4C14-AC2C-85BFAB5BAAF3}']
    { Property Methods }

    { methods }
    function fillInStackTrace: JThrowable; cdecl; //()Ljava/lang/Throwable;

    { Property }
  end;

  TJd_054 = class(TJavaGenericImport<Jd_054Class, Jd_054>) end;

  Je_055Class = interface(JExceptionClass) // or JObjectClass // SuperSignature: java/lang/Exception
  ['{DB56B408-8676-41D6-B1FD-C1B5ADBB5803}']
    { static Property Methods }

    { static Methods }
    {class} function init: Je_055; cdecl; overload; //()V
    {class} function init(P1: JString): Je_055; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(P1: JThrowable): Je_055; cdecl; overload; //(Ljava/lang/Throwable;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/c/e')]
  Je_055 = interface(JException) // or JObject // SuperSignature: java/lang/Exception
  ['{27E6C165-8422-4D19-A19C-A918CA933438}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJe_055 = class(TJavaGenericImport<Je_055Class, Je_055>) end;

  Ja_a_056Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{98C5613A-2812-44B9-9D9C-C5EFF2E67C39}']
    { static Property Methods }
    {class} function _Geta: Ja_a; //Lcom/dothantech/common/a$a;
    {class} function _Getb: Ja_a; //Lcom/dothantech/common/a$a;
    {class} function _Getc: Ja_a; //Lcom/dothantech/common/a$a;
    {class} function _Getd: Ja_a; //Lcom/dothantech/common/a$a;

    { static Methods }
    {class} function values: TJavaObjectArray<Ja_a>; cdecl; //()[Lcom/dothantech/common/a$a;
    {class} function valueOf(P1: JString): Ja_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/common/a$a;

    { static Property }
    {class} property a: Ja_a read _Geta;
    {class} property b: Ja_a read _Getb;
    {class} property c: Ja_a read _Getc;
    {class} property d: Ja_a read _Getd;
  end;

  [JavaSignature('com/dothantech/common/a$a')]
  Ja_a_056 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{5A5262A6-B66E-479C-8DF4-959F95B9EF25}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_a_056 = class(TJavaGenericImport<Ja_a_056Class, Ja_a_056>) end;

  Ja_b_057Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{9CA9F5C0-BDF0-4298-BB40-55CE92D8C237}']
    { static Property Methods }
    {class} function _Geta: Ja_b; //Lcom/dothantech/common/a$b;
    {class} function _Getb: Ja_b; //Lcom/dothantech/common/a$b;
    {class} function _Getc: Ja_b; //Lcom/dothantech/common/a$b;

    { static Methods }
    {class} function values: TJavaObjectArray<Ja_b>; cdecl; //()[Lcom/dothantech/common/a$b;
    {class} function valueOf(P1: JString): Ja_b; cdecl; //(Ljava/lang/String;)Lcom/dothantech/common/a$b;

    { static Property }
    {class} property a: Ja_b read _Geta;
    {class} property b: Ja_b read _Getb;
    {class} property c: Ja_b read _Getc;
  end;

  [JavaSignature('com/dothantech/common/a$b')]
  Ja_b_057 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{0AA9B027-F324-44C2-B182-A6DC46A6379A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_b_057 = class(TJavaGenericImport<Ja_b_057Class, Ja_b_057>) end;

  Ja_058Class = interface(JApplicationClass) // or JObjectClass // SuperSignature: android/app/Application
  ['{B76DAE0A-38E4-43C5-A093-6DE19213A877}']
    { static Property Methods }
    {class} function _Geta: Ju; //Lcom/dothantech/common/u;
    {class} function _Getb: Jak; //Lcom/dothantech/common/ak;
    {class} function _Getc: JObject; //Ljava/lang/Object;

    { static Methods }
    {class} function a: JApplication; cdecl; overload; //()Landroid/app/Application;
    {class} function b: JContext; cdecl; overload; //()Landroid/content/Context;
    {class} function a(P1: Boolean): JString; cdecl; overload; //(Z)Ljava/lang/String;
    {class} function c: Boolean; cdecl; //()Z
    {class} function d: Ja_b; cdecl; //()Lcom/dothantech/common/a$b;
    {class} function e: Boolean; cdecl; //()Z
    {class} function a(P1: JString): JString; cdecl; overload; //(Ljava/lang/String;)Ljava/lang/String;
    {class} function a(P1: JString; P2: JString): Boolean; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Z
    {class} function b(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    {class} procedure a(P1: JHandler); cdecl; overload; //(Landroid/os/Handler;)V
    {class} procedure f; cdecl; //()V
    {class} procedure a(P1: Int64); cdecl; overload; //(J)V
    {class} function g: Ja_b; cdecl; //()Lcom/dothantech/common/a$b;
    {class} procedure h; cdecl; //()V

    { static Property }
    {class} property a: Ju read _Geta;
    {class} property b: Jak read _Getb;
    {class} property c: JObject read _Getc;
  end;

  [JavaSignature('com/dothantech/common/a')]
  Ja_058 = interface(JApplication) // or JObject // SuperSignature: android/app/Application
  ['{C3E620C2-FFB8-422B-BADA-079F01D1CEE1}']
    { Property Methods }

    { methods }
    procedure onCreate; cdecl; //()V
    procedure onLowMemory; cdecl; //()V
    procedure onConfigurationChanged(P1: JConfiguration); cdecl; //(Landroid/content/res/Configuration;)V
    procedure onTerminate; cdecl; //()V

    { Property }
  end;

  TJa_058 = class(TJavaGenericImport<Ja_058Class, Ja_058>) end;

  JaaClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/common/z$a
  ['{06AC453A-D315-4B12-AF7C-291FD7BE3D62}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/aa')]
  Jaa = interface(JObject) // or JObject // SuperSignature: com/dothantech/common/z$a
  ['{6CD529B5-847F-47BF-A955-B5D352837039}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJaa = class(TJavaGenericImport<JaaClass, Jaa>) end;

  JabClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/common/z$a
  ['{314B388A-6231-4C84-84C0-424EFFDFD46E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ab')]
  Jab = interface(JObject) // or JObject // SuperSignature: com/dothantech/common/z$a
  ['{516B2E06-6920-4A16-BEEF-551F99C94705}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJab = class(TJavaGenericImport<JabClass, Jab>) end;

  JacClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/common/z$a
  ['{E5979CE4-98EF-41A6-A2B0-CE768EB52A0B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ac')]
  Jac = interface(JObject) // or JObject // SuperSignature: com/dothantech/common/z$a
  ['{1F8E2FA5-126A-47AD-B271-4AF419433190}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJac = class(TJavaGenericImport<JacClass, Jac>) end;

  JadClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/common/z$a
  ['{6DC68A10-488C-4699-B7F8-FAAFF56AE87F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ad')]
  Jad = interface(JObject) // or JObject // SuperSignature: com/dothantech/common/z$a
  ['{F22E0BE4-99C2-4C18-88C8-4CFD98C754A2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJad = class(TJavaGenericImport<JadClass, Jad>) end;

  JaeClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/common/z$a
  ['{D67A7354-5851-4D33-9073-08946C1B6E26}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ae')]
  Jae = interface(JObject) // or JObject // SuperSignature: com/dothantech/common/z$a
  ['{CB744971-C062-4E1C-854E-188A52AAFFFD}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJae = class(TJavaGenericImport<JaeClass, Jae>) end;

  JafClass = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/common/z$a
  ['{4BDA048E-C354-460B-B3F3-7216C56BF173}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/af')]
  Jaf = interface(JObject) // or JObject // SuperSignature: com/dothantech/common/z$a
  ['{40B3AF6B-9962-44C0-A2A5-C8A95BFC4914}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJaf = class(TJavaGenericImport<JafClass, Jaf>) end;

  Jag_aClass = interface(JObjectClass)
  ['{D6C577C5-6071-4CDD-8F60-63A6855AFF14}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JToast): Jag_a; cdecl; //(Landroid/widget/Toast;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ag$a')]
  Jag_a = interface(JObject)
  ['{4D934895-6FD2-41DA-BEC2-32307B0660C0}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJag_a = class(TJavaGenericImport<Jag_aClass, Jag_a>) end;

  JagClass = interface(JObjectClass)
  ['{5C002294-47C4-4683-8C98-7158C708A747}']
    { static Property Methods }
    {class} function _Geta: Ju; //Lcom/dothantech/common/u;

    { static Methods }
    {class} function init: Jag; cdecl; //()V
    {class} function a(P1: JCharSequence): JToast; cdecl; //(Ljava/lang/CharSequence;)Landroid/widget/Toast;

    { static Property }
    {class} property a: Ju read _Geta;
  end;

  [JavaSignature('com/dothantech/common/ag')]
  Jag = interface(JObject)
  ['{A6D26A48-F460-44D0-838D-A1C3967BE464}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJag = class(TJavaGenericImport<JagClass, Jag>) end;

  JahClass = interface(JObjectClass)
  ['{6BCEF6A3-0271-4899-892E-F0CDD62DFC4C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ah')]
  Jah = interface(JObject)
  ['{3A049AC3-4427-4190-909A-47DE68224612}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJah = class(TJavaGenericImport<JahClass, Jah>) end;

  JaiClass = interface(JObjectClass)
  ['{694091FD-9BB1-462A-9E6F-4EA5B2E7B9AC}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): Jai; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ai')]
  Jai = interface(JObject)
  ['{1D97A832-91FC-4918-B4A0-B3301D06D28E}']
    { Property Methods }
    function _Geta: Integer; //I
    procedure _Seta(aa: Integer); //(I)V

    { methods }
    function a(P1: Integer; P2: Integer; P3: Integer; P4: JObject): Integer; cdecl; overload; //(IIILjava/lang/Object;)I
    procedure a(P1: Integer); cdecl; overload; //(I)V
    procedure a(P1: Integer; P2: Integer); cdecl; overload; //(II)V
    procedure a(P1: Integer; P2: Integer; P3: JObject); cdecl; overload; //(IILjava/lang/Object;)V
    function b(P1: Integer): Integer; cdecl; overload; //(I)I
    function b(P1: Integer; P2: Integer; P3: JObject): Integer; cdecl; overload; //(IILjava/lang/Object;)I
    function c(P1: Integer; P2: Integer; P3: JObject): Boolean; cdecl; overload; //(IILjava/lang/Object;)Z
    procedure a(P1: Int64); cdecl; overload; //(J)V
    procedure b(P1: Int64); cdecl; overload; //(J)V
    procedure c(P1: Int64); cdecl; overload; //(J)V
    procedure a; cdecl; overload; //()V
    procedure b; cdecl; overload; //()V
    procedure c; cdecl; overload; //()V
    function d: Boolean; cdecl; //()Z
    function e: Boolean; cdecl; //()Z

    { Property }
    property a: Integer read _Geta write _Seta;
  end;

  TJai = class(TJavaGenericImport<JaiClass, Jai>) end;

  JajClass = interface(JObjectClass)
  ['{010F5840-5485-43CA-BB28-4EC5BF403C7A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/aj')]
  Jaj = interface(JObject)
  ['{A0FF32DD-7BE9-4C40-895E-5056296C692E}']
    { Property Methods }

    { methods }
    function handleMessage(P1: JMessage): Boolean; cdecl; //(Landroid/os/Message;)Z

    { Property }
  end;

  TJaj = class(TJavaGenericImport<JajClass, Jaj>) end;

  JakClass = interface(JObjectClass)
  ['{C9B16B99-327D-4D28-BA5E-DCEEB2C39632}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jak; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ak')]
  Jak = interface(JObject)
  ['{1AB88F97-E755-4FEA-8B74-C249201F6D88}']
    { Property Methods }

    { methods }
    procedure a(P1: JHandler); cdecl; overload; //(Landroid/os/Handler;)V
    procedure b(P1: JHandler); cdecl; //(Landroid/os/Handler;)V
    function a(P1: Integer; P2: JObject): Boolean; cdecl; overload; //(ILjava/lang/Object;)Z
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJak = class(TJavaGenericImport<JakClass, Jak>) end;

  JalClass = interface(JObjectClass)
  ['{F62C24F6-D89A-4FC9-AFD8-1E9332E3C72E}']
    { static Property Methods }
    {class} function _Geta: Integer; //I
    {class} function _Getb: Integer; //I
    {class} function _Getc: Integer; //I
    {class} function _Getd: Integer; //I
    {class} function _Gete: Integer; //I
    {class} function _Getf: Integer; //I
    {class} function _Getg: Integer; //I
    {class} function _Geth: Integer; //I
    {class} function _Geti: Integer; //I

    { static Methods }

    { static Property }
    {class} property a: Integer read _Geta;
    {class} property b: Integer read _Getb;
    {class} property c: Integer read _Getc;
    {class} property d: Integer read _Getd;
    {class} property e: Integer read _Gete;
    {class} property f: Integer read _Getf;
    {class} property g: Integer read _Getg;
    {class} property h: Integer read _Geth;
    {class} property i: Integer read _Geti;
  end;

  [JavaSignature('com/dothantech/common/al')]
  Jal = interface(JObject)
  ['{059CE46E-1687-4B2F-B245-64B371EEEE93}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJal = class(TJavaGenericImport<JalClass, Jal>) end;

  JamClass = interface(JObjectClass)
  ['{DDCFC044-008A-4E33-8ECB-FE7F0B438EB0}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jam; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/am')]
  Jam = interface(JObject)
  ['{F1BB6657-A10E-4CB5-A6C6-83777E1D1A58}']
    { Property Methods }

    { methods }
    function a: Boolean; cdecl; overload; //()Z
    function a(P1: Int64): Boolean; cdecl; overload; //(J)Z
    procedure b; cdecl; //()V
    procedure c; cdecl; //()V

    { Property }
  end;

  TJam = class(TJavaGenericImport<JamClass, Jam>) end;

  JanClass = interface(JObjectClass)
  ['{66B3EB1D-4B4A-4687-9D3F-7089805887BA}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jan; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/an')]
  Jan = interface(JObject)
  ['{AB70FD4D-677F-46E9-B0B7-1E5BCDB692D6}']
    { Property Methods }

    { methods }
    function a(P1: Integer): Boolean; cdecl; overload; //(I)Z
    function a: Boolean; cdecl; overload; //()Z
    function a(P1: JMessage): Boolean; cdecl; overload; //(Landroid/os/Message;)Z
    function b(P1: Integer): Boolean; cdecl; overload; //(I)Z
    function a(P1: Integer; P2: Integer): Boolean; cdecl; overload; //(II)Z
    function a(P1: Integer; P2: JObject): Boolean; cdecl; overload; //(ILjava/lang/Object;)Z
    function a(P1: Integer; P2: Integer; P3: JObject): Boolean; cdecl; overload; //(IILjava/lang/Object;)Z
    function a(P1: JRunnable; P2: Int64): Boolean; cdecl; overload; //(Ljava/lang/Runnable;J)Z
    procedure b; cdecl; overload; //()V
    procedure a(P1: JRunnable); cdecl; overload; //(Ljava/lang/Runnable;)V
    procedure quit; cdecl; //()V
    procedure run; cdecl; //()V

    { Property }
  end;

  TJan = class(TJavaGenericImport<JanClass, Jan>) end;

  JaoClass = interface(JObjectClass)
  ['{D8F5D00B-F605-446B-B048-518346F7B983}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ao')]
  Jao = interface(JObject)
  ['{D74A85AE-E931-4378-AFD5-E249EFAA74C3}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJao = class(TJavaGenericImport<JaoClass, Jao>) end;

  JapClass = interface(JObjectClass)
  ['{D251A2EF-E588-4A64-BAAC-65B87A17C8D5}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/ap')]
  Jap = interface(JObject)
  ['{8BD8900C-94A1-48C3-BD6F-E68375D58DDC}']
    { Property Methods }

    { methods }
    function handleMessage(P1: JMessage): Boolean; cdecl; //(Landroid/os/Message;)Z

    { Property }
  end;

  TJap = class(TJavaGenericImport<JapClass, Jap>) end;

  Jb_076Class = interface(JObjectClass)
  ['{153C8ACF-2C38-4B5B-ADD6-80B30E7E8360}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/b')]
  Jb_076 = interface(JObject)
  ['{45CFB9EE-E5F7-4079-937A-96927337361D}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJb_076 = class(TJavaGenericImport<Jb_076Class, Jb_076>) end;

  Jc_077Class = interface(JBroadcastReceiverClass) // or JObjectClass // SuperSignature: android/content/BroadcastReceiver
  ['{C6F2AA0E-5421-4F8C-A6C7-7BA1D0BA918F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/c')]
  Jc_077 = interface(JBroadcastReceiver) // or JObject // SuperSignature: android/content/BroadcastReceiver
  ['{A2264DFD-C7A7-403D-96A7-F111A0094A55}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl; //(Landroid/content/Context;Landroid/content/Intent;)V

    { Property }
  end;

  TJc_077 = class(TJavaGenericImport<Jc_077Class, Jc_077>) end;

  Jd_078Class = interface(JObjectClass)
  ['{837796D6-C928-419E-A5F2-A983F0BD6820}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/d')]
  Jd_078 = interface(JObject)
  ['{A0A76D3B-50C2-46DD-A550-003EB92903B4}']
    { Property Methods }

    { methods }
    procedure onActivityCreated(P1: JActivity; P2: JBundle); cdecl; //(Landroid/app/Activity;Landroid/os/Bundle;)V
    procedure onActivityStarted(P1: JActivity); cdecl; //(Landroid/app/Activity;)V
    procedure onActivityResumed(P1: JActivity); cdecl; //(Landroid/app/Activity;)V
    procedure onActivityPaused(P1: JActivity); cdecl; //(Landroid/app/Activity;)V
    procedure onActivityStopped(P1: JActivity); cdecl; //(Landroid/app/Activity;)V
    procedure onActivitySaveInstanceState(P1: JActivity; P2: JBundle); cdecl; //(Landroid/app/Activity;Landroid/os/Bundle;)V
    procedure onActivityDestroyed(P1: JActivity); cdecl; //(Landroid/app/Activity;)V

    { Property }
  end;

  TJd_078 = class(TJavaGenericImport<Jd_078Class, Jd_078>) end;

  JDzSystemClass = interface(JObjectClass)
  ['{B2CB9A2D-F3FE-4B2E-B210-703349FE904A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDzSystem; cdecl; //()V
    {class} function getSystemVersion: Integer; cdecl; //()I

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/DzSystem')]
  JDzSystem = interface(JObject)
  ['{D891FF35-49CD-4D33-AAAC-F5B51247D0DC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDzSystem = class(TJavaGenericImport<JDzSystemClass, JDzSystem>) end;

  Je_080Class = interface(JObjectClass)
  ['{B47E5787-B8BE-4708-B82F-0A44BFADF7DB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/e')]
  Je_080 = interface(JObject)
  ['{B9143F69-73C9-479A-BE8C-4834A07A1629}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJe_080 = class(TJavaGenericImport<Je_080Class, Je_080>) end;

  Jf_081Class = interface(JArrayListClass) // or JObjectClass // SuperSignature: java/util/ArrayList
  ['{AE574F55-396B-442E-A7A8-96AA0AD31AB2}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jf_081; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/f')]
  Jf_081 = interface(JArrayList) // or JObject // SuperSignature: java/util/ArrayList
  ['{72FA1CAF-53E2-415A-A024-5B0D32240E80}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJf_081 = class(TJavaGenericImport<Jf_081Class, Jf_081>) end;

  Jg_a_082Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{4EC6044C-F555-42AE-AC0A-9F958327A83C}']
    { static Property Methods }
    {class} function _Geta: Jg_a; //Lcom/dothantech/common/g$a;
    {class} function _Getb: Jg_a; //Lcom/dothantech/common/g$a;
    {class} function _Getc: Jg_a; //Lcom/dothantech/common/g$a;

    { static Methods }
    {class} function values: TJavaObjectArray<Jg_a>; cdecl; //()[Lcom/dothantech/common/g$a;
    {class} function valueOf(P1: JString): Jg_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/common/g$a;

    { static Property }
    {class} property a: Jg_a read _Geta;
    {class} property b: Jg_a read _Getb;
    {class} property c: Jg_a read _Getc;
  end;

  [JavaSignature('com/dothantech/common/g$a')]
  Jg_a_082 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{6F1F0B1D-016D-43CC-9F8A-6C68E949DCB9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJg_a_082 = class(TJavaGenericImport<Jg_a_082Class, Jg_a_082>) end;

  Jg_083Class = interface(JObjectClass)
  ['{9A38003A-50DB-4B50-99F0-E48701074139}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: TJavaArray<Byte>; P2: Jg_a): JString; cdecl; overload; //([BLcom/dothantech/common/g$a;)Ljava/lang/String;
    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): JString; cdecl; overload; //([BII)Ljava/lang/String;
    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer; P4: Jg_a): JString; cdecl; overload; //([BIILcom/dothantech/common/g$a;)Ljava/lang/String;
    {class} procedure a(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>); cdecl; overload; //([BI[B)V
    {class} procedure a(P1: TJavaArray<Byte>; P2: Integer; P3: TJavaArray<Byte>; P4: Integer; P5: Integer); cdecl; overload; //([BI[BII)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/g')]
  Jg_083 = interface(JObject)
  ['{D3DBF366-304C-406E-8EDD-C5F2691146E2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJg_083 = class(TJavaGenericImport<Jg_083Class, Jg_083>) end;

  Jh_084Class = interface(JObjectClass)
  ['{0E869316-39C5-40A5-8225-20807BE7B396}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jh_084; cdecl; //()V
    {class} function a(P1: JString; P2: Integer): JString; cdecl; //(Ljava/lang/String;I)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/h')]
  Jh_084 = interface(JObject)
  ['{AC9D2B5F-0536-47FF-A25A-2C749FA4F3A7}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJh_084 = class(TJavaGenericImport<Jh_084Class, Jh_084>) end;

  Ji_085Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{2F516FB0-D410-412D-A9AD-6253B14B5E01}']
    { static Property Methods }
    {class} function _Geta: Ji; //Lcom/dothantech/common/i;

    { static Methods }
    {class} function a(P1: Integer): Ji; cdecl; overload; //(I)Lcom/dothantech/common/i;
    {class} function values: TJavaObjectArray<Ji>; cdecl; //()[Lcom/dothantech/common/i;
    {class} function valueOf(P1: JString): Ji; cdecl; //(Ljava/lang/String;)Lcom/dothantech/common/i;

    { static Property }
    {class} property a: Ji read _Geta;
  end;

  [JavaSignature('com/dothantech/common/i')]
  Ji_085 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{917B30FA-3B37-4316-9455-B9A7D0EC6212}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; overload; //()I

    { Property }
  end;

  TJi_085 = class(TJavaGenericImport<Ji_085Class, Ji_085>) end;

  Jj_086Class = interface(JObjectClass)
  ['{81F2DC75-BF9E-43B7-9CBA-CDFACCBF37BE}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JString; P2: Boolean): Boolean; cdecl; //(Ljava/lang/String;Z)Z
    {class} function init: Jj_086; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/j')]
  Jj_086 = interface(JObject)
  ['{A592A16A-E12B-4F9F-9C5C-FC0594E17DAA}']
    { Property Methods }

    { methods }
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I

    { Property }
  end;

  TJj_086 = class(TJavaGenericImport<Jj_086Class, Jj_086>) end;

  Jk_087Class = interface(JObjectClass)
  ['{06A36B92-EC7E-4404-8AFC-1A2A4D991077}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: Byte): Integer; cdecl; //(B)I

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/k')]
  Jk_087 = interface(JObject)
  ['{1F4F049F-E936-49E9-BB9C-9CC0C5109F43}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJk_087 = class(TJavaGenericImport<Jk_087Class, Jk_087>) end;

  Jl_088Class = interface(JObjectClass)
  ['{87E688DF-9278-4CC8-995A-D2669B78FBA4}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JObject; P2: JString): Boolean; cdecl; overload; //(Ljava/lang/Object;Ljava/lang/String;)Z
    {class} function b(P1: JObject; P2: JString): JObject; cdecl; //(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    {class} function a(P1: Jlang_Class; P2: JString; P3: TJavaObjectArray<Jlang_Class>): JMethod; cdecl; overload; //(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/l')]
  Jl_088 = interface(JObject)
  ['{115B6D92-7932-4F42-9C7E-2B1D74CB13D2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJl_088 = class(TJavaGenericImport<Jl_088Class, Jl_088>) end;

  Jm_089Class = interface(JObjectClass)
  ['{8FF92ACD-2086-4B14-A0AC-BA174DFBF6B4}']
    { static Property Methods }

    { static Methods }
    {class} procedure a(P1: Jb_a); cdecl; //(Lcom/dothantech/b/b$a;)V
    {class} function init: Jm_089; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/m')]
  Jm_089 = interface(JObject)
  ['{0C24F52F-7502-4959-8142-EA334CFE3779}']
    { Property Methods }

    { methods }
    procedure uncaughtException(P1: JThread; P2: JThrowable); cdecl; //(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    { Property }
  end;

  TJm_089 = class(TJavaGenericImport<Jm_089Class, Jm_089>) end;

  JnClass = interface(JThreadClass) // or JObjectClass // SuperSignature: java/lang/Thread
  ['{0D32A42B-4ADF-4638-BBC2-9433C8F7AC69}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/n')]
  Jn = interface(JThread) // or JObject // SuperSignature: java/lang/Thread
  ['{03070D9C-67D1-4946-A8E8-F78E6573F643}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJn = class(TJavaGenericImport<JnClass, Jn>) end;

  JoClass = interface(JObjectClass)
  ['{1A350FB8-E07C-430D-BCE9-3354BE34E01F}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JString): JString; cdecl; //(Ljava/lang/String;)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/o')]
  Jo = interface(JObject)
  ['{BE6BF0F6-3104-4780-9E29-4871A7345904}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJo = class(TJavaGenericImport<JoClass, Jo>) end;

  JpClass = interface(JObjectClass)
  ['{F00D0B23-E287-4367-8671-8CC7789F4163}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/p')]
  Jp = interface(IJavaInstance)
  ['{EF0AE452-B81C-4CDB-A1E1-80B74544EC2D}']
    { Property Methods }

    { methods }
    function a: Integer; cdecl; //()I

    { Property }
  end;

  TJp = class(TJavaGenericImport<JpClass, Jp>) end;

  Jq_aClass = interface(JObjectClass)
  ['{2DFB63FA-444C-46C5-8B21-6A2944C97A07}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): Jq_a; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/q$a')]
  Jq_a = interface(JObject)
  ['{813D1008-5F01-4F0E-9AAC-7AD7E795291A}']
    { Property Methods }
    function _Geta: JString; //Ljava/lang/String;
    procedure _Seta(aa: JString); //(Ljava/lang/String;)V
    function _Getb: Integer; //I
    procedure _Setb(ab: Integer); //(I)V
    function _Getc: JString; //Ljava/lang/String;
    procedure _Setc(ac: JString); //(Ljava/lang/String;)V

    { methods }

    { Property }
    property a: JString read _Geta write _Seta;
    property b: Integer read _Getb write _Setb;
    property c: JString read _Getc write _Setc;
  end;

  TJq_a = class(TJavaGenericImport<Jq_aClass, Jq_a>) end;

  JqClass = interface(JObjectClass)
  ['{2AED8797-D53C-4D3F-A815-227F25DA2A3C}']
    { static Property Methods }
    {class} function _Geta: JComparator; //Ljava/util/Comparator;

    { static Methods }
    {class} function a(P1: JString): JString; cdecl; overload; //(Ljava/lang/String;)Ljava/lang/String;
    {class} function a(P1: JString; P2: JString; P3: JString): JString; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    {class} function b(P1: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    {class} function a(P1: JInputStream; P2: JString): Boolean; cdecl; overload; //(Ljava/io/InputStream;Ljava/lang/String;)Z
    {class} function c(P1: JString): Boolean; cdecl; //(Ljava/lang/String;)Z

    { static Property }
    {class} property a: JComparator read _Geta;
  end;

  [JavaSignature('com/dothantech/common/q')]
  Jq = interface(JObject)
  ['{646E5093-1034-4E73-AABA-89C515470896}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJq = class(TJavaGenericImport<JqClass, Jq>) end;

  JrClass = interface(JObjectClass)
  ['{B2A56373-B4AD-4CA9-A5C5-CCD284DA8422}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/r')]
  Jr = interface(JObject)
  ['{22A1C26E-A10B-4F24-9267-F29CDF34DC83}']
    { Property Methods }

    { methods }
    function compare(P1: JObject; P2: JObject): Integer; cdecl; //(Ljava/lang/Object;Ljava/lang/Object;)I

    { Property }
  end;

  TJr = class(TJavaGenericImport<JrClass, Jr>) end;

  JsClass = interface(JObjectClass)
  ['{AEEA847D-62FA-4C24-92F3-760647136C3C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/s')]
  Js = interface(JObject)
  ['{AE4E0368-89B3-4535-8A21-55C64AA3F9E6}']
    { Property Methods }

    { methods }
    function compare(P1: JObject; P2: JObject): Integer; cdecl; //(Ljava/lang/Object;Ljava/lang/Object;)I

    { Property }
  end;

  TJs = class(TJavaGenericImport<JsClass, Js>) end;

  JtClass = interface(JObjectClass)
  ['{FBB1B699-1570-479C-9CDE-00D9336C4C5B}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: Byte; P2: Boolean): JString; cdecl; overload; //(BZ)Ljava/lang/String;
    {class} function a(P1: Byte; P2: Boolean; P3: Jg_a): JString; cdecl; overload; //(BZLcom/dothantech/common/g$a;)Ljava/lang/String;
    {class} function a(P1: Integer): JString; cdecl; overload; //(I)Ljava/lang/String;
    {class} function a(P1: Integer; P2: Boolean; P3: Jg_a): JString; cdecl; overload; //(IZLcom/dothantech/common/g$a;)Ljava/lang/String;
    {class} function a(P1: Byte; P2: Byte): Integer; cdecl; overload; //(BB)I
    {class} function init: Jt; cdecl; overload; //()V
    {class} function init(P1: Integer): Jt; cdecl; overload; //(I)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/t')]
  Jt = interface(JObject)
  ['{B6518B19-004A-4440-8F05-3CE73FE820DA}']
    { Property Methods }
    function _Geta: Integer; //I
    procedure _Seta(aa: Integer); //(I)V

    { methods }
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I

    { Property }
    property a: Integer read _Geta write _Seta;
  end;

  TJt = class(TJavaGenericImport<JtClass, Jt>) end;

  JuClass = interface(JObjectClass)
  ['{F30D5F91-C03D-41EE-9ACE-A3908F29D121}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JString): Ju; cdecl; overload; //(Ljava/lang/String;)Lcom/dothantech/common/u;
    {class} procedure e; cdecl; overload; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/u')]
  Ju = interface(JObject)
  ['{F2BF027B-DBCD-4209-B1FD-7C74D8DE432B}']
    { Property Methods }
    function _Geta: JString; //Ljava/lang/String;
    procedure _Seta(aa: JString); //(Ljava/lang/String;)V

    { methods }
    function a: Boolean; cdecl; overload; //()Z
    procedure b(P1: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure a(P1: JString; P2: TJavaObjectArray<JObject>); cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Object;)V
    function b: Boolean; cdecl; overload; //()Z
    procedure c(P1: JString); cdecl; overload; //(Ljava/lang/String;)V
    function c: Boolean; cdecl; overload; //()Z
    procedure d(P1: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure b(P1: JString; P2: TJavaObjectArray<JObject>); cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Object;)V
    procedure e(P1: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure c(P1: JString; P2: TJavaObjectArray<JObject>); cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Object;)V
    function d: Boolean; cdecl; overload; //()Z
    procedure f(P1: JString); cdecl; //(Ljava/lang/String;)V
    procedure d(P1: JString; P2: TJavaObjectArray<JObject>); cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Object;)V

    { Property }
    property a: JString read _Geta write _Seta;
  end;

  TJu = class(TJavaGenericImport<JuClass, Ju>) end;

  JvClass = interface(JObjectClass)
  ['{55DCC468-93D8-41E1-8694-C2B3ADCB5F3A}']
    { static Property Methods }

    { static Methods }
    {class} function a: Jv; cdecl; overload; //()Lcom/dothantech/common/v;

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/v')]
  Jv = interface(JObject)
  ['{233C3C03-935D-45BD-AAF2-655AE49DBDB7}']
    { Property Methods }

    { methods }
    function a(P1: TJavaObjectArray<JEnum>; P2: JString; P3: JEnum): JEnum; cdecl; overload; //([Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/Enum;

    { Property }
  end;

  TJv = class(TJavaGenericImport<JvClass, Jv>) end;

  JwClass = interface(JObjectClass)
  ['{6646E76E-4BAC-4F00-9E05-744FFCA58156}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JString; P2: JString): Boolean; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Z
    {class} function b(P1: JString; P2: JString): Integer; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)I
    {class} function c(P1: JString; P2: JString): Integer; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)I
    {class} function a(P1: JString): JString; cdecl; overload; //(Ljava/lang/String;)Ljava/lang/String;
    {class} function a(P1: TJavaArray<Byte>): JString; cdecl; overload; //([B)Ljava/lang/String;
    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): JString; cdecl; overload; //([BII)Ljava/lang/String;
    {class} function b(P1: JString): TJavaObjectArray<JString>; cdecl; overload; //(Ljava/lang/String;)[Ljava/lang/String;
    {class} function c(P1: JString): JArrayList; cdecl; overload; //(Ljava/lang/String;)Ljava/util/ArrayList;
    {class} function a(P1: Char; P2: Integer): JString; cdecl; overload; //(CI)Ljava/lang/String;
    {class} function init: Jw; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/w')]
  Jw = interface(JObject)
  ['{F0F3740A-9FBD-411D-8FBD-6B4B4B5BDF57}']
    { Property Methods }
    function _Geta: JString; //Ljava/lang/String;
    procedure _Seta(aa: JString); //(Ljava/lang/String;)V

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
    property a: JString read _Geta write _Seta;
  end;

  TJw = class(TJavaGenericImport<JwClass, Jw>) end;

  JxClass = interface(JObjectClass)
  ['{9984F7F5-3D8B-4F9F-A3AF-595F0CD55000}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/x')]
  Jx = interface(JObject)
  ['{B144DCE9-3BA7-4340-9622-C0EC9CF3085E}']
    { Property Methods }

    { methods }
    function compare(P1: JObject; P2: JObject): Integer; cdecl; //(Ljava/lang/Object;Ljava/lang/Object;)I

    { Property }
  end;

  TJx = class(TJavaGenericImport<JxClass, Jx>) end;

  JyClass = interface(JObjectClass)
  ['{EA4D2166-D1FB-49A2-B545-BD1915E30C61}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/y')]
  Jy = interface(JObject)
  ['{364C2672-486D-46DF-8823-BDAF0FE71D54}']
    { Property Methods }

    { methods }
    function compare(P1: JObject; P2: JObject): Integer; cdecl; //(Ljava/lang/Object;Ljava/lang/Object;)I

    { Property }
  end;

  TJy = class(TJavaGenericImport<JyClass, Jy>) end;

  Jz_aClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{69DD8565-0D07-4A52-A241-17BBC2DD9545}']
    { static Property Methods }
    {class} function _Geta: Jz_a; //Lcom/dothantech/common/z$a;

    { static Methods }
    {class} function values: TJavaObjectArray<Jz_a>; cdecl; //()[Lcom/dothantech/common/z$a;
    {class} function valueOf(P1: JString): Jz_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/common/z$a;

    { static Property }
    {class} property a: Jz_a read _Geta;
  end;

  [JavaSignature('com/dothantech/common/z$a')]
  Jz_a = interface(JObject) // or JObject // SuperSignature: java/lang/Enum
  ['{CD214EBE-A97F-492B-B5E3-84980C6AE729}']
    { Property Methods }
//    function _Getb: JSimpleDateFormat; //Ljava/text/SimpleDateFormat;
//    procedure _Setb(ab: JSimpleDateFormat); //(Ljava/text/SimpleDateFormat;)V

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
//    property b: JSimpleDateFormat read _Getb write _Setb;
  end;

  TJz_a = class(TJavaGenericImport<Jz_aClass, Jz_a>) end;

  JzClass = interface(JObjectClass)
  ['{1BA1F23E-7AA7-43FF-BB27-03AE0A820DB5}']
    { static Property Methods }

    { static Methods }
    {class} function a: JString; cdecl; //()Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/dothantech/common/z')]
  Jz = interface(JObject)
  ['{8839DC59-D7D9-437A-9209-F18095EBE577}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJz = class(TJavaGenericImport<JzClass, Jz>) end;

  Ja_105Class = interface(JObjectClass)
  ['{9E9695EE-622E-42D4-9C35-353A57652B86}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JIDzPrinter_PrinterAddress): JIDzPrinter2_PrinterParam; cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Lcom/dothantech/printer/IDzPrinter2$PrinterParam;

    { static Property }
  end;

  [JavaSignature('com/dothantech/data/a')]
  Ja_105 = interface(JObject)
  ['{2A0210A1-5810-40DB-A604-0D235C4F816D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_105 = class(TJavaGenericImport<Ja_105Class, Ja_105>) end;

  Jb_106Class = interface(JObjectClass)
  ['{4CCE97B7-A2DB-4943-9B01-92C0139B92C3}']
    { static Property Methods }
    {class} function _Geta: Byte; //B
    {class} function _Getb: Byte; //B

    { static Methods }
    {class} procedure a; cdecl; overload; //()V
    {class} procedure b; cdecl; overload; //()V
    {class} function c: Boolean; cdecl; //()Z
    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Jb; cdecl; overload; //([BII)Lcom/dothantech/data/b;
    {class} function a(P1: TJavaArray<Byte>): Jb; cdecl; overload; //([B)Lcom/dothantech/data/b;
    {class} function a(P1: TJavaArray<Byte>; P2: Integer): Jb; cdecl; overload; //([BI)Lcom/dothantech/data/b;
    {class} function init(P1: Byte): Jb_106; cdecl; overload; //(B)V
    {class} function init(P1: Byte; P2: TJavaArray<Byte>): Jb_106; cdecl; overload; //(B[B)V
    {class} function init(P1: Byte; P2: TJavaArray<Byte>; P3: Integer; P4: Integer; P5: TJavaArray<Byte>; P6: Integer; P7: Integer): Jb_106; cdecl; overload; //(B[BII[BII)V
    {class} function init(P1: Byte; P2: Byte): Jb_106; cdecl; overload; //(BB)V
    {class} function init(P1: Byte; P2: Word; P3: Boolean): Jb_106; cdecl; overload; //(BSZ)V
    {class} function a(P1: TJavaArray<Byte>; P2: Integer; P3: Word): Integer; cdecl; overload; //([BIS)I
    {class} function b(P1: TJavaArray<Byte>; P2: Integer; P3: Integer): Integer; cdecl; overload; //([BII)I

    { static Property }
    {class} property a: Byte read _Geta;
    {class} property b: Byte read _Getb;
  end;

  [JavaSignature('com/dothantech/data/b')]
  Jb_106 = interface(JObject)
  ['{2C63F752-2FCE-44A4-9248-5054AFEE675B}']
    { Property Methods }
    function _Getc: Byte; //B
    procedure _Setc(ac: Byte); //(B)V
    function _Getd: TJavaArray<Byte>; //[B
    procedure _Setd(ad: TJavaArray<Byte>); //([B)V

    { methods }
    function d: Byte; cdecl; //()B
    function e: Word; cdecl; //()S
    function f: Word; cdecl; //()S
    function g: Integer; cdecl; //()I
    function a(P1: Integer; P2: Integer): Integer; cdecl; overload; //(II)I
    function h: JString; cdecl; //()Ljava/lang/String;
    function i: TJavaArray<Integer>; cdecl; //()[I
    function j: Integer; cdecl; //()I
    function k: Integer; cdecl; //()I
    function l: TJavaArray<Byte>; cdecl; //()[B
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
    property c: Byte read _Getc write _Setc;
    property d: TJavaArray<Byte> read _Getd write _Setd;
  end;

  TJb_106 = class(TJavaGenericImport<Jb_106Class, Jb_106>) end;

  Jc_a_107Class = interface(JObjectClass)
  ['{9C0166D9-AC6E-4EFD-B5A7-20BC5FACC7E6}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jc_a_107; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/data/c$a')]
  Jc_a_107 = interface(JObject)
  ['{C7256629-55A3-4A84-A382-604B2F41A8CC}']
    { Property Methods }

    { methods }
    function a: Jc_b; cdecl; overload; //()Lcom/dothantech/data/c$b;
    function b: Integer; cdecl; //()I
    function c: Integer; cdecl; //()I
    function d: Boolean; cdecl; //()Z
    function a(P1: Jb): Boolean; cdecl; overload; //(Lcom/dothantech/data/b;)Z
    function a(P1: Byte; P2: TJavaArray<Byte>): Boolean; cdecl; overload; //(B[B)Z
    function a(P1: Byte; P2: Byte): Boolean; cdecl; overload; //(BB)Z
    function a(P1: Byte; P2: Word; P3: Boolean): Boolean; cdecl; overload; //(BSZ)Z
    function a(P1: Jc_a): Boolean; cdecl; overload; //(Lcom/dothantech/data/c$a;)Z

    { Property }
  end;

  TJc_a_107 = class(TJavaGenericImport<Jc_a_107Class, Jc_a_107>) end;

  Jc_b_108Class = interface(JObjectClass) // or JObjectClass // SuperSignature: com/dothantech/data/c
  ['{213D977A-563D-4A77-BDD8-556DD48899F9}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jc_b_108; cdecl; overload; //()V
    {class} function init(P1: TJavaArray<Byte>; P2: Integer): Jc_b_108; cdecl; overload; //([BI)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/data/c$b')]
  Jc_b_108 = interface(JObject) // or JObject // SuperSignature: com/dothantech/data/c
  ['{DCA2F1D1-F1FD-4667-A118-7F37F5A6D7F2}']
    { Property Methods }

    { methods }
    function d: Jc_b; cdecl; //()Lcom/dothantech/data/c$b;

    { Property }
  end;

  TJc_b_108 = class(TJavaGenericImport<Jc_b_108Class, Jc_b_108>) end;

  Jc_109Class = interface(JObjectClass)
  ['{E0AB5837-549B-4CFF-9E01-2B7372879186}']
    { static Property Methods }

    { static Methods }
    {class} function init: Jc_109; cdecl; overload; //()V
    {class} function init(P1: TJavaArray<Byte>; P2: Integer): Jc_109; cdecl; overload; //([BI)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/data/c')]
  Jc_109 = interface(JObject)
  ['{9926EC01-42CF-41B8-851A-98F4BB90251A}']
    { Property Methods }
    function _Geta: TJavaArray<Byte>; //[B
    procedure _Seta(aa: TJavaArray<Byte>); //([B)V

    { methods }
    function a: Integer; cdecl; overload; //()I
    function a(P1: TJavaArray<Byte>; P2: Integer): Boolean; cdecl; overload; //([BI)Z
    function a(P1: Byte): Boolean; cdecl; overload; //(B)Z
    function a(P1: Byte; P2: TJavaArray<Byte>): Boolean; cdecl; overload; //(B[B)Z
    function a(P1: Byte; P2: Byte): Boolean; cdecl; overload; //(BB)Z
    function a(P1: Byte; P2: Word; P3: Boolean): Boolean; cdecl; overload; //(BSZ)Z
    function b: Integer; cdecl; //()I
    function c: Integer; cdecl; //()I
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
    property a: TJavaArray<Byte> read _Geta write _Seta;
  end;

  TJc_109 = class(TJavaGenericImport<Jc_109Class, Jc_109>) end;

  JDzTagObject_aClass = interface(JObjectClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{C78DBABD-2BFB-41DD-AE78-B23713DAD4F3}']
    { static Property Methods }
    {class} function _Geta: JDzTagObject_a; //Lcom/dothantech/data/DzTagObject$a;
    {class} function _Getb: JDzTagObject_a; //Lcom/dothantech/data/DzTagObject$a;
    {class} function _Getc: JDzTagObject_a; //Lcom/dothantech/data/DzTagObject$a;

    { static Methods }
    {class} function values: TJavaObjectArray<JDzTagObject_a>; cdecl; //()[Lcom/dothantech/data/DzTagObject$a;
    {class} function valueOf(P1: JString): JDzTagObject_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/data/DzTagObject$a;

    { static Property }
    {class} property a: JDzTagObject_a read _Geta;
    {class} property b: JDzTagObject_a read _Getb;
    {class} property c: JDzTagObject_a read _Getc;
  end;

  [JavaSignature('com/dothantech/data/DzTagObject$a')]
  JDzTagObject_a = interface(JObject) // or JObject // SuperSignature: java/lang/Enum
  ['{D902E325-9684-4F2D-8388-7241F72A1B83}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDzTagObject_a = class(TJavaGenericImport<JDzTagObject_aClass, JDzTagObject_a>) end;

  JDzTagObjectClass = interface(JObjectClass)
  ['{23C99ADE-506E-44CD-929D-B7E62968EC17}']
    { static Property Methods }
    {class} function _GetXmlSerializerIndent: JString; //Ljava/lang/String;
    {class} function _GetXmlSerializerNewLine: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init(P1: JString): JDzTagObject; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(P1: JString; P2: JString; P3: JDzTagObject_a): JDzTagObject; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/dothantech/data/DzTagObject$a;)V
    {class} function load(P1: JXmlPullParser): JDzTagObject; cdecl; overload; //(Lorg/xmlpull/v1/XmlPullParser;)Lcom/dothantech/data/DzTagObject;
    {class} function load(P1: JInputStream): JDzTagObject; cdecl; overload; //(Ljava/io/InputStream;)Lcom/dothantech/data/DzTagObject;
    {class} function load(P1: JString): JDzTagObject; cdecl; overload; //(Ljava/lang/String;)Lcom/dothantech/data/DzTagObject;
    {class} function valueOf(P1: JString): JDzTagObject; cdecl; //(Ljava/lang/String;)Lcom/dothantech/data/DzTagObject;
    {class} function nextUntil(P1: JXmlPullParser; P2: Integer): Boolean; cdecl; //(Lorg/xmlpull/v1/XmlPullParser;I)Z

    { static Property }
    {class} property XmlSerializerIndent: JString read _GetXmlSerializerIndent;
    {class} property XmlSerializerNewLine: JString read _GetXmlSerializerNewLine;
  end;

  [JavaSignature('com/dothantech/data/DzTagObject')]
  JDzTagObject = interface(JObject)
  ['{05B188B8-999B-4F05-B629-96552B85AEC5}']
    { Property Methods }
    function _GetTagName: JString; //Ljava/lang/String;
    procedure _SetTagName(aTagName: JString); //(Ljava/lang/String;)V
    function _GetTagValue: JString; //Ljava/lang/String;
    procedure _SetTagValue(aTagValue: JString); //(Ljava/lang/String;)V
    function _GetTagType: JDzTagObject_a; //Lcom/dothantech/data/DzTagObject$a;
    procedure _SetTagType(aTagType: JDzTagObject_a); //(Lcom/dothantech/data/DzTagObject$a;)V
    function _GetChildren: Jf; //Lcom/dothantech/common/f;
    procedure _SetChildren(aChildren: Jf); //(Lcom/dothantech/common/f;)V

    { methods }
    function hashCode: Integer; cdecl; //()I
    function save(P1: JXmlSerializer; P2: JString): Boolean; cdecl; overload; //(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)Z
    function save(P1: JOutputStream; P2: JString): Boolean; cdecl; overload; //(Ljava/io/OutputStream;Ljava/lang/String;)Z
    function save(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    function toString: JString; cdecl; //()Ljava/lang/String;
    function isAttribute: Boolean; cdecl; //()Z
    function getProperty(P1: JString): JString; cdecl; overload; //(Ljava/lang/String;)Ljava/lang/String;
    function getProperty(P1: JString; P2: Boolean): JString; cdecl; overload; //(Ljava/lang/String;Z)Ljava/lang/String;
    function getContent: JString; cdecl; //()Ljava/lang/String;
    function safeChildren: Jf; cdecl; //()Lcom/dothantech/common/f;
    function getChild(P1: JString): JDzTagObject; cdecl; //(Ljava/lang/String;)Lcom/dothantech/data/DzTagObject;
    function getChildren(P1: JString): Jf; cdecl; //(Ljava/lang/String;)Lcom/dothantech/common/f;

    { Property }
    property TagName: JString read _GetTagName write _SetTagName;
    property TagValue: JString read _GetTagValue write _SetTagValue;
    property TagType: JDzTagObject_a read _GetTagType write _SetTagType;
    property Children: Jf read _GetChildren write _SetChildren;
  end;

  TJDzTagObject = class(TJavaGenericImport<JDzTagObjectClass, JDzTagObject>) end;

  Ja_112Class = interface(JObjectClass)
  ['{308BE4F5-5D67-442A-B2A2-3CD4220094B4}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JIDzPrinter): Ja_112; cdecl; //(Lcom/dothantech/printer/IDzPrinter;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/a')]
  Ja_112 = interface(JObject)
  ['{33F45E1B-558C-4162-A842-28CA9BDFFAD8}']
    { Property Methods }

    { methods }
    procedure setBackground(P1: Integer); cdecl; //(I)V
    function startJob(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: JString): Integer; cdecl; overload; //(IIIIILjava/lang/String;)I
    function startJob(P1: Integer; P2: Integer): Integer; cdecl; overload; //(II)I
    function startJob(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl; overload; //(III)I
    function startJob(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(IIII)I
    function abortJob: Integer; cdecl; //()I
    function endJob: Integer; cdecl; //()I
    function getJobPages(P1: JList): Integer; cdecl; //(Ljava/util/List;)I
    function a: JList; cdecl; //()Ljava/util/List;
    function startPage: Integer; cdecl; //()I
    function endPage: Integer; cdecl; //()I
    function setItemOrientation(P1: Integer): Integer; cdecl; //(I)I
    function getItemOrientation: Integer; cdecl; //()I
    function setItemHorizontalAlignment(P1: Integer): Integer; cdecl; //(I)I
    function getItemHorizontalAlignment: Integer; cdecl; //()I
    function setItemVerticalAlignment(P1: Integer): Integer; cdecl; //(I)I
    function getItemVerticalAlignment: Integer; cdecl; //()I
    function setItemPenAlignment(P1: Integer): Integer; cdecl; //(I)I
    function getItemPenAlignment: Integer; cdecl; //()I
    function getStrPrintSize(P1: JString; P2: Integer; P3: Integer): JPoint; cdecl; //(Ljava/lang/String;II)Landroid/graphics/Point;
    function drawText(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIIIII)I
    function drawText(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function drawText(P1: JString; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(Ljava/lang/String;III)I
    function drawRichText(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; //(Ljava/lang/String;IIIIII)I
    function draw1DBarcode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIIIII)I
    function draw1DBarcode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function draw2DQRCode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function draw2DQRCode(P1: JString; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(Ljava/lang/String;III)I
    function draw2DPdf417(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; //(Ljava/lang/String;IIII)I
    function drawRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; //(IIIII)I
    function drawFillRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; //(IIII)I
    function drawRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(IIIIIII)I
    function drawRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(IIIIII)I
    function drawFillRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(IIIIII)I
    function drawFillRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(IIIII)I
    function drawEllipse(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(IIIII)I
    function drawEllipse(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(IIII)I
    function drawFillEllipse(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(IIII)I
    function drawFillEllipse(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl; overload; //(III)I
    function drawLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; //(IIIII)I
    function drawDashLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: TJavaArray<Integer>; P7: Integer): Integer; cdecl; overload; //(IIIII[II)I
    function drawDashLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(IIIIIII)I
    function drawDashLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Integer): Integer; cdecl; overload; //(IIIIIIIII)I
    function drawImage(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIIII)I
    function drawImage(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function drawImage(P1: JString; P2: Integer; P3: Integer): Integer; cdecl; overload; //(Ljava/lang/String;II)I
    function drawBitmap(P1: JBitmap; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(Landroid/graphics/Bitmap;IIIII)I
    function drawBitmap(P1: JBitmap; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Landroid/graphics/Bitmap;IIII)I
    function drawBitmap(P1: JBitmap; P2: Integer; P3: Integer): Integer; cdecl; overload; //(Landroid/graphics/Bitmap;II)I
    function drawBitmap(P1: JInputStream; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(Ljava/io/InputStream;IIIII)I
    function drawBitmap(P1: JInputStream; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/io/InputStream;IIII)I
    function drawBitmap(P1: JInputStream; P2: Integer; P3: Integer): Integer; cdecl; overload; //(Ljava/io/InputStream;II)I

    { Property }
  end;

  TJa_112 = class(TJavaGenericImport<Ja_112Class, Ja_112>) end;

  Jb_113Class = interface(JThreadClass) // or JObjectClass // SuperSignature: java/lang/Thread
  ['{DB4649D6-2E49-4B7D-8A86-2AAF9A894AE6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/b')]
  Jb_113 = interface(JThread) // or JObject // SuperSignature: java/lang/Thread
  ['{5C883849-A438-4B68-89B9-AE7E09F89451}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJb_113 = class(TJavaGenericImport<Jb_113Class, Jb_113>) end;

  JIAtBitmap_BarcodeType1DClass = interface(JObjectClass)
  ['{1440D030-29C9-4710-A920-72D445AD1934}']
    { static Property Methods }
    {class} function _GetUPC_A: Integer; //I
    {class} function _GetUPC_E: Integer; //I
    {class} function _GetEAN13: Integer; //I
    {class} function _GetEAN8: Integer; //I
    {class} function _GetCODE39: Integer; //I
    {class} function _GetITF25: Integer; //I
    {class} function _GetCODABAR: Integer; //I
    {class} function _GetCODE93: Integer; //I
    {class} function _GetCODE128: Integer; //I
    {class} function _GetISBN: Integer; //I
    {class} function _GetECODE39: Integer; //I
    {class} function _GetAUTO: Integer; //I

    { static Methods }
    {class} function init: JIAtBitmap_BarcodeType1D; cdecl; //()V

    { static Property }
    {class} property UPC_A: Integer read _GetUPC_A;
    {class} property UPC_E: Integer read _GetUPC_E;
    {class} property EAN13: Integer read _GetEAN13;
    {class} property EAN8: Integer read _GetEAN8;
    {class} property CODE39: Integer read _GetCODE39;
    {class} property ITF25: Integer read _GetITF25;
    {class} property CODABAR: Integer read _GetCODABAR;
    {class} property CODE93: Integer read _GetCODE93;
    {class} property CODE128: Integer read _GetCODE128;
    {class} property ISBN: Integer read _GetISBN;
    {class} property ECODE39: Integer read _GetECODE39;
    {class} property AUTO: Integer read _GetAUTO;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$BarcodeType1D')]
  JIAtBitmap_BarcodeType1D = interface(JObject)
  ['{DFECFED7-DC45-4D68-AB21-F4CC465BC587}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_BarcodeType1D = class(TJavaGenericImport<JIAtBitmap_BarcodeType1DClass, JIAtBitmap_BarcodeType1D>) end;

  JIAtBitmap_BarcodeType2DClass = interface(JObjectClass)
  ['{F6AB1E36-EDF5-4079-831F-DCDBEBA1BFEC}']
    { static Property Methods }
    {class} function _GetQR_CODE: Integer; //I
    {class} function _GetDATA_MATRIX: Integer; //I
    {class} function _GetPDF_417: Integer; //I

    { static Methods }

    { static Property }
    {class} property QR_CODE: Integer read _GetQR_CODE;
    {class} property DATA_MATRIX: Integer read _GetDATA_MATRIX;
    {class} property PDF_417: Integer read _GetPDF_417;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$BarcodeType2D')]
  JIAtBitmap_BarcodeType2D = interface(IJavaInstance)
  ['{C2F2AC6E-92C6-4635-AE1E-2B2B3068E339}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_BarcodeType2D = class(TJavaGenericImport<JIAtBitmap_BarcodeType2DClass, JIAtBitmap_BarcodeType2D>) end;

  JIAtBitmap_FactoryClass = interface(JObjectClass)
  ['{ED841B12-0FDA-4643-AE14-CD48BFFCDBFE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIAtBitmap_Factory; cdecl; //()V
    {class} function createInstance: JIAtBitmap; cdecl; overload; //()Lcom/dothantech/lpapi/IAtBitmap;
    {class} function createInstance(P1: JIDzPrinter): JIAtBitmap; cdecl; overload; //(Lcom/dothantech/printer/IDzPrinter;)Lcom/dothantech/lpapi/IAtBitmap;

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$Factory')]
  JIAtBitmap_Factory = interface(JObject)
  ['{12614067-DEAC-43B3-B36E-8C9379CB4EB7}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_Factory = class(TJavaGenericImport<JIAtBitmap_FactoryClass, JIAtBitmap_Factory>) end;

  JIAtBitmap_FontStyleClass = interface(JObjectClass)
  ['{72CFE4F3-5E30-41BE-A98F-64D5D59A8743}']
    { static Property Methods }
    {class} function _GetREGULAR: Integer; //I
    {class} function _GetBOLD: Integer; //I
    {class} function _GetITALIC: Integer; //I
    {class} function _GetBOLDITALIC: Integer; //I
    {class} function _GetUNDERLINE: Integer; //I
    {class} function _GetSTRIKEOUT: Integer; //I

    { static Methods }

    { static Property }
    {class} property REGULAR: Integer read _GetREGULAR;
    {class} property BOLD: Integer read _GetBOLD;
    {class} property ITALIC: Integer read _GetITALIC;
    {class} property BOLDITALIC: Integer read _GetBOLDITALIC;
    {class} property UNDERLINE: Integer read _GetUNDERLINE;
    {class} property STRIKEOUT: Integer read _GetSTRIKEOUT;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$FontStyle')]
  JIAtBitmap_FontStyle = interface(IJavaInstance)
  ['{F830E696-11CD-4C98-85AC-C55E739FFCA0}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_FontStyle = class(TJavaGenericImport<JIAtBitmap_FontStyleClass, JIAtBitmap_FontStyle>) end;

  JIAtBitmap_ItemAlignmentClass = interface(JObjectClass)
  ['{ADC7347C-4FD3-4F23-A830-ACDFD202A623}']
    { static Property Methods }
    {class} function _GetNEAR: Integer; //I
    {class} function _GetCENTER: Integer; //I
    {class} function _GetFAR: Integer; //I
    {class} function _GetSAMEASITEM: Integer; //I
    {class} function _GetLEFT: Integer; //I
    {class} function _GetRIGHT: Integer; //I
    {class} function _GetTOP: Integer; //I
    {class} function _GetMIDDLE: Integer; //I
    {class} function _GetBOTTOM: Integer; //I

    { static Methods }

    { static Property }
    {class} property &NEAR: Integer read _GetNEAR;
    {class} property CENTER: Integer read _GetCENTER;
    {class} property &FAR: Integer read _GetFAR;
    {class} property SAMEASITEM: Integer read _GetSAMEASITEM;
    {class} property LEFT: Integer read _GetLEFT;
    {class} property RIGHT: Integer read _GetRIGHT;
    {class} property TOP: Integer read _GetTOP;
    {class} property MIDDLE: Integer read _GetMIDDLE;
    {class} property BOTTOM: Integer read _GetBOTTOM;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$ItemAlignment')]
  JIAtBitmap_ItemAlignment = interface(IJavaInstance)
  ['{77BD9F8D-3619-4987-9EF3-2E86A29B1238}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_ItemAlignment = class(TJavaGenericImport<JIAtBitmap_ItemAlignmentClass, JIAtBitmap_ItemAlignment>) end;

  JIAtBitmap_LabelScaleUnitClass = interface(JObjectClass)
  ['{4ABE2467-1A4C-4424-A746-70F76CD0FB6F}']
    { static Property Methods }
    {class} function _GetPIXEL: Integer; //I
    {class} function _GetMM01: Integer; //I

    { static Methods }

    { static Property }
    {class} property PIXEL: Integer read _GetPIXEL;
    {class} property MM01: Integer read _GetMM01;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$LabelScaleUnit')]
  JIAtBitmap_LabelScaleUnit = interface(IJavaInstance)
  ['{9672AC32-6847-4152-AF38-41F1C67FD427}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_LabelScaleUnit = class(TJavaGenericImport<JIAtBitmap_LabelScaleUnitClass, JIAtBitmap_LabelScaleUnit>) end;

  JIAtBitmap_PenAlignmentClass = interface(JObjectClass)
  ['{8D86DD1C-2B23-4D41-B74C-55849038AF37}']
    { static Property Methods }
    {class} function _GetCENTER: Integer; //I
    {class} function _GetINSET: Integer; //I

    { static Methods }

    { static Property }
    {class} property CENTER: Integer read _GetCENTER;
    {class} property INSET: Integer read _GetINSET;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$PenAlignment')]
  JIAtBitmap_PenAlignment = interface(IJavaInstance)
  ['{1548FE82-FB09-46DB-AE82-696E6216900F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_PenAlignment = class(TJavaGenericImport<JIAtBitmap_PenAlignmentClass, JIAtBitmap_PenAlignment>) end;

  JIAtBitmap_ResultCodeClass = interface(JObjectClass)
  ['{C91F2BE5-82A1-4280-9904-A3DE53D79AC9}']
    { static Property Methods }
    {class} function _GetOK: Integer; //I
    {class} function _GetPARAM_ERROR: Integer; //I
    {class} function _GetSYSTEM_ERROR: Integer; //I
    {class} function _GetNOPRINTDATA: Integer; //I
    {class} function _GetNOPAGEDIMENSION: Integer; //I
    {class} function _GetINVALID_FILE: Integer; //I
    {class} function _GetPRINTDATANOTREADY: Integer; //I

    { static Methods }

    { static Property }
    {class} property OK: Integer read _GetOK;
    {class} property PARAM_ERROR: Integer read _GetPARAM_ERROR;
    {class} property SYSTEM_ERROR: Integer read _GetSYSTEM_ERROR;
    {class} property NOPRINTDATA: Integer read _GetNOPRINTDATA;
    {class} property NOPAGEDIMENSION: Integer read _GetNOPAGEDIMENSION;
    {class} property INVALID_FILE: Integer read _GetINVALID_FILE;
    {class} property PRINTDATANOTREADY: Integer read _GetPRINTDATANOTREADY;
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap$ResultCode')]
  JIAtBitmap_ResultCode = interface(IJavaInstance)
  ['{AF22B197-B7ED-4336-A752-958B1ADEC110}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIAtBitmap_ResultCode = class(TJavaGenericImport<JIAtBitmap_ResultCodeClass, JIAtBitmap_ResultCode>) end;

  JIAtBitmapClass = interface(JObjectClass)
  ['{9540744C-B866-4FB5-B596-981B237BC037}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/IAtBitmap')]
  JIAtBitmap = interface(IJavaInstance)
  ['{FD7ACA33-4B34-4BC5-8564-EF5211D4737E}']
    { Property Methods }

    { methods }
    procedure setBackground(P1: Integer); cdecl; //(I)V
    function startJob(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: JString): Integer; cdecl; overload; //(IIIIILjava/lang/String;)I
    function startJob(P1: Integer; P2: Integer): Integer; cdecl; overload; //(II)I
    function startJob(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl; overload; //(III)I
    function startJob(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(IIII)I
    function abortJob: Integer; cdecl; //()I
    function endJob: Integer; cdecl; //()I
    function getJobPages(P1: JList): Integer; cdecl; //(Ljava/util/List;)I
    function startPage: Integer; cdecl; //()I
    function endPage: Integer; cdecl; //()I
    function setItemOrientation(P1: Integer): Integer; cdecl; //(I)I
    function getItemOrientation: Integer; cdecl; //()I
    function setItemHorizontalAlignment(P1: Integer): Integer; cdecl; //(I)I
    function getItemHorizontalAlignment: Integer; cdecl; //()I
    function setItemVerticalAlignment(P1: Integer): Integer; cdecl; //(I)I
    function getItemVerticalAlignment: Integer; cdecl; //()I
    function setItemPenAlignment(P1: Integer): Integer; cdecl; //(I)I
    function getItemPenAlignment: Integer; cdecl; //()I
    function getStrPrintSize(P1: JString; P2: Integer; P3: Integer): JPoint; cdecl; //(Ljava/lang/String;II)Landroid/graphics/Point;
    function drawText(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIIIII)I
    function drawText(P1: JString; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(Ljava/lang/String;III)I
    function drawText(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function drawRichText(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; //(Ljava/lang/String;IIIIII)I
    function draw1DBarcode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIIIII)I
    function draw1DBarcode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function draw2DQRCode(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function draw2DQRCode(P1: JString; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(Ljava/lang/String;III)I
    function draw2DPdf417(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; //(Ljava/lang/String;IIII)I
    function drawRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; //(IIIII)I
    function drawFillRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; //(IIII)I
    function drawRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(IIIIIII)I
    function drawRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(IIIIII)I
    function drawFillRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(IIIIII)I
    function drawFillRoundRectangle(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(IIIII)I
    function drawEllipse(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(IIIII)I
    function drawEllipse(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(IIII)I
    function drawFillEllipse(P1: Integer; P2: Integer; P3: Integer; P4: Integer): Integer; cdecl; overload; //(IIII)I
    function drawFillEllipse(P1: Integer; P2: Integer; P3: Integer): Integer; cdecl; overload; //(III)I
    function drawLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; //(IIIII)I
    function drawDashLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: TJavaArray<Integer>; P7: Integer): Integer; cdecl; overload; //(IIIII[II)I
    function drawDashLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer): Integer; cdecl; overload; //(IIIIIII)I
    function drawDashLine(P1: Integer; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer; P7: Integer; P8: Integer; P9: Integer): Integer; cdecl; overload; //(IIIIIIIII)I
    function drawImage(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIIII)I
    function drawImage(P1: JString; P2: Integer; P3: Integer): Integer; cdecl; overload; //(Ljava/lang/String;II)I
    function drawImage(P1: JString; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/lang/String;IIII)I
    function drawBitmap(P1: JBitmap; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(Landroid/graphics/Bitmap;IIIII)I
    function drawBitmap(P1: JBitmap; P2: Integer; P3: Integer): Integer; cdecl; overload; //(Landroid/graphics/Bitmap;II)I
    function drawBitmap(P1: JBitmap; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Landroid/graphics/Bitmap;IIII)I
    function drawBitmap(P1: JInputStream; P2: Integer; P3: Integer; P4: Integer; P5: Integer; P6: Integer): Integer; cdecl; overload; //(Ljava/io/InputStream;IIIII)I
    function drawBitmap(P1: JInputStream; P2: Integer; P3: Integer): Integer; cdecl; overload; //(Ljava/io/InputStream;II)I
    function drawBitmap(P1: JInputStream; P2: Integer; P3: Integer; P4: Integer; P5: Integer): Integer; cdecl; overload; //(Ljava/io/InputStream;IIII)I

    { Property }
  end;

  TJIAtBitmap = class(TJavaGenericImport<JIAtBitmapClass, JIAtBitmap>) end;

  JLPAPI_BarcodeTypeClass = interface(JIAtBitmap_BarcodeType1DClass) // or JObjectClass // SuperSignature: com/dothantech/lpapi/IAtBitmap$BarcodeType1D
  ['{AE17BDAE-6E64-4F83-8708-63BC4FC4EAE1}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLPAPI_BarcodeType; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI$BarcodeType')]
  JLPAPI_BarcodeType = interface(JIAtBitmap_BarcodeType1D) // or JObject // SuperSignature: com/dothantech/lpapi/IAtBitmap$BarcodeType1D
  ['{5261026F-14EE-43C8-9571-2990B1F1ECB2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLPAPI_BarcodeType = class(TJavaGenericImport<JLPAPI_BarcodeTypeClass, JLPAPI_BarcodeType>) end;

  JLPAPI_CallbackClass = interface(JObjectClass)
  ['{B3484944-F42E-4950-A6E5-38A02BD6D98C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI$Callback')]
  JLPAPI_Callback = interface(IJavaInstance)
  ['{74B5BBDD-F0BD-4BC6-8C2F-C3D2290B618C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLPAPI_Callback = class(TJavaGenericImport<JLPAPI_CallbackClass, JLPAPI_Callback>) end;

  JLPAPI_FactoryClass = interface(JObjectClass)
  ['{CA752BEF-A318-435B-AC68-EF27494803A1}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLPAPI_Factory; cdecl; //()V
    {class} function createInstance: JLPAPI; cdecl; overload; //()Lcom/dothantech/lpapi/LPAPI;
    {class} function createInstance(P1: JLPAPI_Callback): JLPAPI; cdecl; overload; //(Lcom/dothantech/lpapi/LPAPI$Callback;)Lcom/dothantech/lpapi/LPAPI;
    {class} function createInstance(P1: JWebView): JLPAPI; cdecl; overload; //(Landroid/webkit/WebView;)Lcom/dothantech/lpapi/LPAPI;
    {class} function createInstance(P1: JWebView; P2: JLPAPI_Callback): JLPAPI; cdecl; overload; //(Landroid/webkit/WebView;Lcom/dothantech/lpapi/LPAPI$Callback;)Lcom/dothantech/lpapi/LPAPI;
    {class} function createInstance(P1: JWebView; P2: JString; P3: JLPAPI_Callback): JLPAPI; cdecl; overload; //(Landroid/webkit/WebView;Ljava/lang/String;Lcom/dothantech/lpapi/LPAPI$Callback;)Lcom/dothantech/lpapi/LPAPI;

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI$Factory')]
  JLPAPI_Factory = interface(JObject)
  ['{1A6B4B4C-9905-4B53-8666-F30715828B84}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLPAPI_Factory = class(TJavaGenericImport<JLPAPI_FactoryClass, JLPAPI_Factory>) end;

  JLPAPI_FontStyleClass = interface(JObjectClass)
  ['{F71E5CFD-0C5F-484D-B6FD-FA9DDDA8DFD2}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI$FontStyle')]
  JLPAPI_FontStyle = interface(IJavaInstance)
  ['{4FEB1EC3-14AD-460D-B41C-8F3CAEE4684C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLPAPI_FontStyle = class(TJavaGenericImport<JLPAPI_FontStyleClass, JLPAPI_FontStyle>) end;

  JLPAPI_ItemAlignmentClass = interface(JObjectClass)
  ['{87483245-A78C-4D49-90A0-E3397F823FC6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI$ItemAlignment')]
  JLPAPI_ItemAlignment = interface(IJavaInstance)
  ['{579D75A5-B0DB-40DB-A110-CD8680AB9757}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLPAPI_ItemAlignment = class(TJavaGenericImport<JLPAPI_ItemAlignmentClass, JLPAPI_ItemAlignment>) end;

  JLPAPI_PenAlignmentClass = interface(JObjectClass)
  ['{F2B39A89-A4DB-4C43-9764-C16E0A1AF585}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI$PenAlignment')]
  JLPAPI_PenAlignment = interface(IJavaInstance)
  ['{B509B567-4828-40CF-809A-5AA121C5D6B0}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLPAPI_PenAlignment = class(TJavaGenericImport<JLPAPI_PenAlignmentClass, JLPAPI_PenAlignment>) end;

  JLPAPIClass = interface(JObjectClass)
  ['{825350CB-1C30-4FA6-A0EE-ACC2A367507D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLPAPI; cdecl;

    { static Property }
  end;

  [JavaSignature('com/dothantech/lpapi/LPAPI')]
  JLPAPI = interface(JObject)
  ['{88F631FB-BF2E-4FC0-853B-BEA20BA854BB}']
    { Property Methods }

    { methods }
    function getAllPrinters(P1: JString): JString; cdecl; //(Ljava/lang/String;)Ljava/lang/String;
    function getAllPrinterAddresses(P1: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;
    function getFirstPrinter: JIDzPrinter_PrinterAddress; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterAddress;
    function openPrinter(P1: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function openPrinterByAddress(P1: JIDzPrinter_PrinterAddress): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Z
    function openPrinterSync(P1: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function openPrinterByAddressSync(P1: JIDzPrinter_PrinterAddress): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Z
    function getPrinterName: JString; cdecl; //()Ljava/lang/String;
    function getPrinterInfo: JIDzPrinter_PrinterInfo; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterInfo;
    function getPrinterState: JIDzPrinter_PrinterState; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterState;
    function isPrinterOpened: Boolean; cdecl; //()Z
    procedure cancel; cdecl; //()V
    procedure closePrinter; cdecl; //()V
    function reopenPrinter: Boolean; cdecl; //()Z
    function reopenPrinterSync: Boolean; cdecl; //()Z
    procedure quit; cdecl; //()V
    function printBitmap(P1: JBitmap; P2: JBundle): Boolean; cdecl; //(Landroid/graphics/Bitmap;Landroid/os/Bundle;)Z
    function printATBitmap(P1: JIAtBitmap; P2: JBundle): Boolean; cdecl; //(Lcom/dothantech/lpapi/IAtBitmap;Landroid/os/Bundle;)Z
    function waitPrinterState(P1: JIDzPrinter_PrinterState; P2: Integer): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterState;I)Z
    function startJob(P1: Double; P2: Double; P3: Integer): Boolean; cdecl; //(DDI)Z
    procedure abortJob; cdecl; //()V
    function commitJob: Boolean; cdecl; //()Z
    function commitJobWithParam(P1: JBundle): Boolean; cdecl; //(Landroid/os/Bundle;)Z
    function startPage: Boolean; cdecl; //()Z
    procedure endPage; cdecl; //()V
    procedure endJob; cdecl; //()V
    function getJobPages: JList; cdecl; //()Ljava/util/List;
    function getItemOrientation: Integer; cdecl; //()I
    procedure setItemOrientation(P1: Integer); cdecl; //(I)V
    function getItemHorizontalAlignment: Integer; cdecl; //()I
    procedure setItemHorizontalAlignment(P1: Integer); cdecl; //(I)V
    function getItemVerticalAlignment: Integer; cdecl; //()I
    procedure setItemVerticalAlignment(P1: Integer); cdecl; //(I)V
    function getItemPenAlignment: Integer; cdecl; //()I
    procedure setItemPenAlignment(P1: Integer); cdecl; //(I)V
    function drawText(P1: JString; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double): Boolean; cdecl; //(Ljava/lang/String;DDDDD)Z
    function drawTextRegular(P1: JString; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double; P7: Integer): Boolean; cdecl; //(Ljava/lang/String;DDDDDI)Z
    function drawRichText(P1: JString; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double; P7: Integer): Boolean; cdecl; //(Ljava/lang/String;DDDDDI)Z
    function draw1DBarcode(P1: JString; P2: Integer; P3: Double; P4: Double; P5: Double; P6: Double; P7: Double): Boolean; cdecl; //(Ljava/lang/String;IDDDDD)Z
    function draw2DQRCode(P1: JString; P2: Double; P3: Double; P4: Double): Boolean; cdecl; //(Ljava/lang/String;DDD)Z
    function draw2DPdf417(P1: JString; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(Ljava/lang/String;DDDD)Z
    function drawRectangle(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(DDDDD)Z
    function fillRectangle(P1: Double; P2: Double; P3: Double; P4: Double): Boolean; cdecl; //(DDDD)Z
    function drawRoundRectangle(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double; P7: Double): Boolean; cdecl; //(DDDDDDD)Z
    function fillRoundRectangle(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double): Boolean; cdecl; //(DDDDDD)Z
    function drawEllipse(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(DDDDD)Z
    function fillEllipse(P1: Double; P2: Double; P3: Double; P4: Double): Boolean; cdecl; //(DDDD)Z
    function drawCircle(P1: Double; P2: Double; P3: Double; P4: Double): Boolean; cdecl; //(DDDD)Z
    function fillCircle(P1: Double; P2: Double; P3: Double): Boolean; cdecl; //(DDD)Z
    function drawLine(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(DDDDD)Z
    function drawDashLine(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double; P6: TJavaArray<Double>; P7: Integer): Boolean; cdecl; //(DDDDD[DI)Z
    function drawDashLine2(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double; P7: Double): Boolean; cdecl; //(DDDDDDD)Z
    function drawDashLine4(P1: Double; P2: Double; P3: Double; P4: Double; P5: Double; P6: Double; P7: Double; P8: Double; P9: Double): Boolean; cdecl; //(DDDDDDDDD)Z
    function drawImageWithThreshold(P1: JString; P2: Double; P3: Double; P4: Double; P5: Double; P6: Integer): Boolean; cdecl; //(Ljava/lang/String;DDDDI)Z
    function drawImage(P1: JString; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(Ljava/lang/String;DDDD)Z
    function drawImageWithActualSize(P1: JString; P2: Double; P3: Double): Boolean; cdecl; //(Ljava/lang/String;DD)Z
    function drawBitmapWithThreshold(P1: JBitmap; P2: Double; P3: Double; P4: Double; P5: Double; P6: Integer): Boolean; cdecl; //(Landroid/graphics/Bitmap;DDDDI)Z
    function drawBitmap(P1: JBitmap; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(Landroid/graphics/Bitmap;DDDD)Z
    function drawBitmapWithActualSize(P1: JBitmap; P2: Double; P3: Double): Boolean; cdecl; //(Landroid/graphics/Bitmap;DD)Z
    function drawBitmapStreamWithThreshold(P1: JInputStream; P2: Double; P3: Double; P4: Double; P5: Double; P6: Integer): Boolean; cdecl; //(Ljava/io/InputStream;DDDDI)Z
    function drawBitmapStream(P1: JInputStream; P2: Double; P3: Double; P4: Double; P5: Double): Boolean; cdecl; //(Ljava/io/InputStream;DDDD)Z
    function drawBitmapStreamWithActualSize(P1: JInputStream; P2: Double; P3: Double): Boolean; cdecl; //(Ljava/io/InputStream;DD)Z

    { Property }
  end;

  TJLPAPI = class(TJavaGenericImport<JLPAPIClass, JLPAPI>) end;

  Ja_a_130Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{5DF79242-C5DC-4E75-B4E0-48967CE79143}']
    { static Property Methods }
    {class} function _Geta: Ja_a; //Lcom/dothantech/printer/a$a;
    {class} function _Getb: Ja_a; //Lcom/dothantech/printer/a$a;
    {class} function _Getc: Ja_a; //Lcom/dothantech/printer/a$a;

    { static Methods }
    {class} function values: TJavaObjectArray<Ja_a>; cdecl; //()[Lcom/dothantech/printer/a$a;
    {class} function valueOf(P1: JString): Ja_a; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/a$a;

    { static Property }
    {class} property a: Ja_a read _Geta;
    {class} property b: Ja_a read _Getb;
    {class} property c: Ja_a read _Getc;
  end;

  [JavaSignature('com/dothantech/printer/a$a')]
  Ja_a_130 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{36B689F0-757C-4C47-91BC-19697B2EC0FA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_a_130 = class(TJavaGenericImport<Ja_a_130Class, Ja_a_130>) end;

  Ja_131Class = interface(JObjectClass)
  ['{C3BD9F8E-FD51-4F41-8DE1-822BEC6EC857}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JIDzPrinter2_PrinterParam): Ja_131; cdecl; //(Lcom/dothantech/printer/IDzPrinter2$PrinterParam;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/a')]
  Ja_131 = interface(JObject)
  ['{EE709734-15B0-41FF-A701-B4A55C6B11AE}']
    { Property Methods }

    { methods }
    function a(P1: JBitmap; P2: JBundle): Boolean; cdecl; overload; //(Landroid/graphics/Bitmap;Landroid/os/Bundle;)Z
    function a: Jc_a; cdecl; overload; //()Lcom/dothantech/data/c$a;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJa_131 = class(TJavaGenericImport<Ja_131Class, Ja_131>) end;

  Jb_132Class = interface(JHandlerClass) // or JObjectClass // SuperSignature: android/os/Handler
  ['{18CE4989-155A-4CE1-8145-F22452693CC4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/b')]
  Jb_132 = interface(JHandler) // or JObject // SuperSignature: android/os/Handler
  ['{029F499F-4DA5-4993-86E1-385B96AD7C8D}']
    { Property Methods }

    { methods }
    procedure handleMessage(P1: JMessage); cdecl; //(Landroid/os/Message;)V

    { Property }
  end;

  TJb_132 = class(TJavaGenericImport<Jb_132Class, Jb_132>) end;

  Jc_133Class = interface(JBroadcastReceiverClass) // or JObjectClass // SuperSignature: android/content/BroadcastReceiver
  ['{127F25F2-5725-4A05-A230-2EAB299C7BFC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/c')]
  Jc_133 = interface(JBroadcastReceiver) // or JObject // SuperSignature: android/content/BroadcastReceiver
  ['{56887F71-E25C-470A-A209-EBED9DD7DFE5}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl; //(Landroid/content/Context;Landroid/content/Intent;)V

    { Property }
  end;

  TJc_133 = class(TJavaGenericImport<Jc_133Class, Jc_133>) end;

  Jd_134Class = interface(JObjectClass)
  ['{BD769612-FD54-4E27-AE52-A39B60030D1C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/d')]
  Jd_134 = interface(JObject)
  ['{C5F8768B-F795-4CF3-A9AD-D811D455F6EB}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJd_134 = class(TJavaGenericImport<Jd_134Class, Jd_134>) end;

  JDzPrinter_aClass = interface(JObjectClass)
  ['{44A19FB5-92A5-431B-871F-73654AECD927}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JDzPrinter; P2: JString; P3: JString): JDzPrinter_a; cdecl; //(Lcom/dothantech/printer/DzPrinter;Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/DzPrinter$a')]
  JDzPrinter_a = interface(JObject)
  ['{0CF4858B-F844-4985-8EF4-F3F0262BD5A8}']
    { Property Methods }
    function _Geta: JIDzPrinter_PrinterAddress; //Lcom/dothantech/printer/IDzPrinter$PrinterAddress;
    procedure _Seta(aa: JIDzPrinter_PrinterAddress); //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)V
    function _Getb: JString; //Ljava/lang/String;
    procedure _Setb(ab: JString); //(Ljava/lang/String;)V

    { methods }

    { Property }
    property a: JIDzPrinter_PrinterAddress read _Geta write _Seta;
    property b: JString read _Getb write _Setb;
  end;

  TJDzPrinter_a = class(TJavaGenericImport<JDzPrinter_aClass, JDzPrinter_a>) end;

  JDzPrinter_bClass = interface(JObjectClass)
  ['{29E81FE3-97B1-43AA-A301-8FF39C58DFC6}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JBitmap; P2: JBundle): JDzPrinter_b; cdecl; overload; //(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    {class} function init(P1: Jo; P2: JBundle): JDzPrinter_b; cdecl; overload; //(Lcom/dothantech/printer/o;Landroid/os/Bundle;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/DzPrinter$b')]
  JDzPrinter_b = interface(JObject)
  ['{5919C189-F2D3-4B92-9EBB-CA790F3FCCEF}']
    { Property Methods }
    function _Geta: JObject; //Ljava/lang/Object;
    procedure _Seta(aa: JObject); //(Ljava/lang/Object;)V
    function _Getb: JBundle; //Landroid/os/Bundle;
    procedure _Setb(ab: JBundle); //(Landroid/os/Bundle;)V

    { methods }

    { Property }
    property a: JObject read _Geta write _Seta;
    property b: JBundle read _Getb write _Setb;
  end;

  TJDzPrinter_b = class(TJavaGenericImport<JDzPrinter_bClass, JDzPrinter_b>) end;

  JDzPrinterClass = interface(JanClass) // or JObjectClass // SuperSignature: com/dothantech/common/an
  ['{5E050434-03B9-45FC-90BC-95F1F7B2EF1F}']
    { static Property Methods }
    {class} function _Getc: Ju; //Lcom/dothantech/common/u;

    { static Methods }
    {class} function e: Boolean; cdecl; //()Z
    {class} function getInstance: JIDzPrinter2; cdecl; //()Lcom/dothantech/printer/IDzPrinter2;

    { static Property }
    {class} property c: Ju read _Getc;
  end;

  [JavaSignature('com/dothantech/printer/DzPrinter')]
  JDzPrinter = interface(Jan) // or JObject // SuperSignature: com/dothantech/common/an
  ['{7953C6EC-F208-4C0E-81F4-04C74C171F51}']
    { Property Methods }

    { methods }
    function init(P1: JContext; P2: JIDzPrinter_IDzPrinterCallback): Boolean; cdecl; //(Landroid/content/Context;Lcom/dothantech/printer/IDzPrinter$IDzPrinterCallback;)Z
    procedure quit; cdecl; //()V
    function connect(P1: JIDzPrinter_PrinterAddress): Boolean; cdecl; overload; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Z
    function connect(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    function connectSync(P1: JIDzPrinter_PrinterAddress): Boolean; cdecl; overload; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Z
    function connectSync(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    procedure disconnect; cdecl; //()V
    function reconnect: Boolean; cdecl; //()Z
    function reconnectSync: Boolean; cdecl; //()Z
    function getPrinterState: JIDzPrinter_PrinterState; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterState;
    function print(P1: JBitmap; P2: JBundle): Boolean; cdecl; overload; //(Landroid/graphics/Bitmap;Landroid/os/Bundle;)Z
    function print(P1: Jn; P2: JBundle): Boolean; cdecl; overload; //(Lcom/dothantech/printer/n;Landroid/os/Bundle;)Z
    function print(P1: Jo; P2: JBundle): Boolean; cdecl; overload; //(Lcom/dothantech/printer/o;Landroid/os/Bundle;)Z
    procedure cancel; cdecl; overload; //()V
    procedure cancel(P1: Integer); cdecl; overload; //(I)V
    function bond(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    function bond(P1: JString; P2: JString): Boolean; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Z
    function onNfcDiscovery(P1: JIntent): Boolean; cdecl; //(Landroid/content/Intent;)Z
    function getPrinterParam: JIDzPrinter2_PrinterParam; cdecl; //()Lcom/dothantech/printer/IDzPrinter2$PrinterParam;
    function getPrinterInfo: JIDzPrinter_PrinterInfo; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterInfo;
    function waitPrinterState(P1: JIDzPrinter_PrinterState; P2: Int64): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterState;J)Z
    function refreshPrinterParam: Boolean; cdecl; //()Z
    function setPrinterParam(P1: JBundle): Boolean; cdecl; //(Landroid/os/Bundle;)Z
    function sendDataPackage(P1: Jc_a): Boolean; cdecl; //(Lcom/dothantech/data/c$a;)Z
    function startDeviceDiscovery(P1: JIDzPrinter_AddressType): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$AddressType;)Z
    procedure onProgressInfo(P1: JIDzPrinter_ProgressInfo; P2: JObject); cdecl; //(Lcom/dothantech/printer/IDzPrinter$ProgressInfo;Ljava/lang/Object;)V
    procedure onStateChange(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter_PrinterState); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter$PrinterState;)V
    procedure onPrintProgress(P1: JIDzPrinter_PrinterAddress; P2: JObject; P3: JIDzPrinter_PrintProgress; P4: JObject); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Ljava/lang/Object;Lcom/dothantech/printer/IDzPrinter$PrintProgress;Ljava/lang/Object;)V
    procedure onPrinterDiscovery(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter_PrinterInfo); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter$PrinterInfo;)V
    procedure onBondProgress(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter2_GeneralProgress); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;)V
    procedure onSetParamProgress(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter2_GeneralProgress); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;)V
    procedure onSendDataProgress(P1: Jc_a; P2: JIDzPrinter2_GeneralProgress); cdecl; //(Lcom/dothantech/data/c$a;Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;)V
    procedure onPrinterParamChanged(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter2_PrinterParam; P3: JIDzPrinter2_PrinterParam); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter2$PrinterParam;Lcom/dothantech/printer/IDzPrinter2$PrinterParam;)V
    procedure onDeviceDiscovery(P1: JIDzPrinter2_GeneralProgress; P2: JObject); cdecl; //(Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;Ljava/lang/Object;)V
    function a: Boolean; cdecl; //()Z

    { Property }
  end;

  TJDzPrinter = class(TJavaGenericImport<JDzPrinterClass, JDzPrinter>) end;

  Je_138Class = interface(JaiClass) // or JObjectClass // SuperSignature: com/dothantech/common/ai
  ['{0C89FFC4-37B3-49D3-9C94-D87010E1C89B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/e')]
  Je_138 = interface(Jai) // or JObject // SuperSignature: com/dothantech/common/ai
  ['{2DBB477B-81CF-424F-9742-5A830B9A97EB}']
    { Property Methods }

    { methods }
    function b(P1: Integer; P2: Integer; P3: JObject): Integer; cdecl; //(IILjava/lang/Object;)I
    function a(P1: Integer; P2: Integer; P3: Integer; P4: JObject): Integer; cdecl; //(IIILjava/lang/Object;)I

    { Property }
  end;

  TJe_138 = class(TJavaGenericImport<Je_138Class, Je_138>) end;

  Jf_139Class = interface(JaiClass) // or JObjectClass // SuperSignature: com/dothantech/common/ai
  ['{C246AF14-7D0F-4E6B-A213-2A9A4FC987A6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/f')]
  Jf_139 = interface(Jai) // or JObject // SuperSignature: com/dothantech/common/ai
  ['{8A277D3F-5D0B-411D-9593-133C75AF3AB7}']
    { Property Methods }

    { methods }
    function b(P1: Integer; P2: Integer; P3: JObject): Integer; cdecl; //(IILjava/lang/Object;)I
    function a(P1: Integer; P2: Integer; P3: Integer; P4: JObject): Integer; cdecl; //(IIILjava/lang/Object;)I

    { Property }
  end;

  TJf_139 = class(TJavaGenericImport<Jf_139Class, Jf_139>) end;

  Jg_140Class = interface(JBroadcastReceiverClass) // or JObjectClass // SuperSignature: android/content/BroadcastReceiver
  ['{6F6AC68F-5D08-4127-B8BA-69C9479E4752}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/g')]
  Jg_140 = interface(JBroadcastReceiver) // or JObject // SuperSignature: android/content/BroadcastReceiver
  ['{15EDC28B-A6DA-4961-8338-C3554ADB31DE}']
    { Property Methods }

    { methods }
    procedure onReceive(P1: JContext; P2: JIntent); cdecl; //(Landroid/content/Context;Landroid/content/Intent;)V

    { Property }
  end;

  TJg_140 = class(TJavaGenericImport<Jg_140Class, Jg_140>) end;

  Jh_141Class = interface(JObjectClass)
  ['{BD5B52D1-C198-48F4-ADC5-BA0659E6FD49}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/h')]
  Jh_141 = interface(JObject)
  ['{428EB706-0A7D-4854-94B5-C1F50D85654F}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJh_141 = class(TJavaGenericImport<Jh_141Class, Jh_141>) end;

  Ji_142Class = interface(JObjectClass)
  ['{0553EB62-A9E0-4108-B5EF-7657503157EC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/i')]
  Ji_142 = interface(JObject)
  ['{161E0183-9E38-43EE-AAF9-FD1819E014FD}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJi_142 = class(TJavaGenericImport<Ji_142Class, Ji_142>) end;

  JIDzPrinter_AddressTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{183AB04F-0754-4A35-B150-8ABEE3F4F03E}']
    { static Property Methods }
    {class} function _GetSPP: JIDzPrinter_AddressType; //Lcom/dothantech/printer/IDzPrinter$AddressType;
    {class} function _GetBLE: JIDzPrinter_AddressType; //Lcom/dothantech/printer/IDzPrinter$AddressType;
    {class} function _GetWiFi: JIDzPrinter_AddressType; //Lcom/dothantech/printer/IDzPrinter$AddressType;

    { static Methods }
    {class} function values: TJavaObjectArray<JIDzPrinter_AddressType>; cdecl; //()[Lcom/dothantech/printer/IDzPrinter$AddressType;
    {class} function valueOf(P1: JString): JIDzPrinter_AddressType; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$AddressType;

    { static Property }
    {class} property SPP: JIDzPrinter_AddressType read _GetSPP;
    {class} property BLE: JIDzPrinter_AddressType read _GetBLE;
    {class} property WiFi: JIDzPrinter_AddressType read _GetWiFi;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$AddressType')]
  JIDzPrinter_AddressType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{AE977760-5125-4CB1-B856-D0FC353178E2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_AddressType = class(TJavaGenericImport<JIDzPrinter_AddressTypeClass, JIDzPrinter_AddressType>) end;

  JIDzPrinter_FactoryClass = interface(JObjectClass)
  ['{24978BF4-0D6C-443C-B4B7-76408152B4C0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIDzPrinter_Factory; cdecl; //()V
    {class} function getInstance: JIDzPrinter; cdecl; //()Lcom/dothantech/printer/IDzPrinter;
    {class} function isPrinterSupported(P1: JBluetoothDevice): Boolean; cdecl; overload; //(Landroid/bluetooth/BluetoothDevice;)Z
    {class} function isPrinterSupported(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    {class} function getFirstPrinter: JIDzPrinter_PrinterAddress; cdecl; overload; //()Lcom/dothantech/printer/IDzPrinter$PrinterAddress;
    {class} function getFirstPrinter(P1: JString): JIDzPrinter_PrinterAddress; cdecl; overload; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$PrinterAddress;
    {class} function getAllPrinters: JList; cdecl; overload; //()Ljava/util/List;
    {class} function getAllPrinters(P1: JString): JList; cdecl; overload; //(Ljava/lang/String;)Ljava/util/List;

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$Factory')]
  JIDzPrinter_Factory = interface(JObject)
  ['{80B80D89-BDB3-47ED-BD94-2EB4A95A4E2C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_Factory = class(TJavaGenericImport<JIDzPrinter_FactoryClass, JIDzPrinter_Factory>) end;

  JIDzPrinter_IDzPrinterCallbackClass = interface(JObjectClass)
  ['{E338EC4C-93F8-468D-B46D-0AB17D5055CF}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$IDzPrinterCallback')]
  JIDzPrinter_IDzPrinterCallback = interface(IJavaInstance)
  ['{BF33F6F4-DDE9-47F3-9C77-DB5D9E361F66}']
    { Property Methods }

    { methods }
    procedure onProgressInfo(P1: JIDzPrinter_ProgressInfo; P2: JObject); cdecl; //(Lcom/dothantech/printer/IDzPrinter$ProgressInfo;Ljava/lang/Object;)V
    procedure onStateChange(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter_PrinterState); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter$PrinterState;)V
    procedure onPrintProgress(P1: JIDzPrinter_PrinterAddress; P2: JObject; P3: JIDzPrinter_PrintProgress; P4: JObject); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Ljava/lang/Object;Lcom/dothantech/printer/IDzPrinter$PrintProgress;Ljava/lang/Object;)V
    procedure onPrinterDiscovery(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter_PrinterInfo); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter$PrinterInfo;)V

    { Property }
  end;

  TJIDzPrinter_IDzPrinterCallback = class(TJavaGenericImport<JIDzPrinter_IDzPrinterCallbackClass, JIDzPrinter_IDzPrinterCallback>) end;

  JIDzPrinter_PrinterAddressClass = interface(JObjectClass)
  ['{21A23DFB-732C-47AD-927D-B1DBA2189C3D}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JString): JIDzPrinter_PrinterAddress; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(P1: JString; P2: JIDzPrinter_AddressType): JIDzPrinter_PrinterAddress; cdecl; overload; //(Ljava/lang/String;Lcom/dothantech/printer/IDzPrinter$AddressType;)V
    {class} function init(P1: JString; P2: JString; P3: JIDzPrinter_AddressType): JIDzPrinter_PrinterAddress; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/dothantech/printer/IDzPrinter$AddressType;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrinterAddress')]
  JIDzPrinter_PrinterAddress = interface(JObject)
  ['{C134D47A-8143-4586-BB43-AE790E4E9253}']
    { Property Methods }
    function _GetmacAddress: JString; //Ljava/lang/String;
    procedure _SetmacAddress(amacAddress: JString); //(Ljava/lang/String;)V
    function _GetaddressType: JIDzPrinter_AddressType; //Lcom/dothantech/printer/IDzPrinter$AddressType;
    procedure _SetaddressType(aaddressType: JIDzPrinter_AddressType); //(Lcom/dothantech/printer/IDzPrinter$AddressType;)V
    function _GetshownName: JString; //Ljava/lang/String;
    procedure _SetshownName(ashownName: JString); //(Ljava/lang/String;)V

    { methods }
    function isValid: Boolean; cdecl; //()Z
    function clone: JIDzPrinter_PrinterAddress; cdecl; overload; //()Lcom/dothantech/printer/IDzPrinter$PrinterAddress;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function equals(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    function equals(P1: JObject): Boolean; cdecl; overload; //(Ljava/lang/Object;)Z
//    function clone: JObject; cdecl; overload; //()Ljava/lang/Object;

    { Property }
    property macAddress: JString read _GetmacAddress write _SetmacAddress;
    property addressType: JIDzPrinter_AddressType read _GetaddressType write _SetaddressType;
    property shownName: JString read _GetshownName write _SetshownName;
  end;

  TJIDzPrinter_PrinterAddress = class(TJavaGenericImport<JIDzPrinter_PrinterAddressClass, JIDzPrinter_PrinterAddress>) end;

  JIDzPrinter_PrinterInfoClass = interface(JObjectClass)
  ['{61A9BEE0-0C86-43F7-B781-19465874426A}']
    { static Property Methods }

    { static Methods }
    {class} function valueOf(P1: JIntent): JIDzPrinter_PrinterInfo; cdecl; //(Landroid/content/Intent;)Lcom/dothantech/printer/IDzPrinter$PrinterInfo;

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrinterInfo')]
  JIDzPrinter_PrinterInfo = interface(JObject)
  ['{1DCFDED5-F2AB-417D-B268-F952297214E3}']
    { Property Methods }
    function _GetdeviceType: Integer; //I
    procedure _SetdeviceType(adeviceType: Integer); //(I)V
    function _GetdeviceName: JString; //Ljava/lang/String;
    procedure _SetdeviceName(adeviceName: JString); //(Ljava/lang/String;)V
    function _GetdeviceAddress: JString; //Ljava/lang/String;
    procedure _SetdeviceAddress(adeviceAddress: JString); //(Ljava/lang/String;)V
    function _GetdeviceAddrType: Integer; //I
    procedure _SetdeviceAddrType(adeviceAddrType: Integer); //(I)V
    function _GetdeviceDPI: Integer; //I
    procedure _SetdeviceDPI(adeviceDPI: Integer); //(I)V
    function _GetdeviceWidth: Integer; //I
    procedure _SetdeviceWidth(adeviceWidth: Integer); //(I)V

    { methods }
    function getAddressType: JIDzPrinter_AddressType; cdecl; //()Lcom/dothantech/printer/IDzPrinter$AddressType;
    function getPrinterAddress: JIDzPrinter_PrinterAddress; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterAddress;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function clone: JIDzPrinter_PrinterInfo; cdecl; overload; //()Lcom/dothantech/printer/IDzPrinter$PrinterInfo;
//    function clone: JObject; cdecl; overload; //()Ljava/lang/Object;

    { Property }
    property deviceType: Integer read _GetdeviceType write _SetdeviceType;
    property deviceName: JString read _GetdeviceName write _SetdeviceName;
    property deviceAddress: JString read _GetdeviceAddress write _SetdeviceAddress;
    property deviceAddrType: Integer read _GetdeviceAddrType write _SetdeviceAddrType;
    property deviceDPI: Integer read _GetdeviceDPI write _SetdeviceDPI;
    property deviceWidth: Integer read _GetdeviceWidth write _SetdeviceWidth;
  end;

  TJIDzPrinter_PrinterInfo = class(TJavaGenericImport<JIDzPrinter_PrinterInfoClass, JIDzPrinter_PrinterInfo>) end;

  JIDzPrinter_PrinterStateClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{1DFDF934-8DEE-4B84-8E18-3D61A5EBF151}']
    { static Property Methods }
    {class} function _GetConnecting: JIDzPrinter_PrinterState; //Lcom/dothantech/printer/IDzPrinter$PrinterState;
    {class} function _GetConnected: JIDzPrinter_PrinterState; //Lcom/dothantech/printer/IDzPrinter$PrinterState;
    {class} function _GetConnected2: JIDzPrinter_PrinterState; //Lcom/dothantech/printer/IDzPrinter$PrinterState;
    {class} function _GetPrinting: JIDzPrinter_PrinterState; //Lcom/dothantech/printer/IDzPrinter$PrinterState;
    {class} function _GetWorking: JIDzPrinter_PrinterState; //Lcom/dothantech/printer/IDzPrinter$PrinterState;
    {class} function _GetDisconnected: JIDzPrinter_PrinterState; //Lcom/dothantech/printer/IDzPrinter$PrinterState;

    { static Methods }
    {class} function values: TJavaObjectArray<JIDzPrinter_PrinterState>; cdecl; //()[Lcom/dothantech/printer/IDzPrinter$PrinterState;
    {class} function valueOf(P1: JString): JIDzPrinter_PrinterState; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$PrinterState;

    { static Property }
    {class} property Connecting: JIDzPrinter_PrinterState read _GetConnecting;
    {class} property Connected: JIDzPrinter_PrinterState read _GetConnected;
    {class} property Connected2: JIDzPrinter_PrinterState read _GetConnected2;
    {class} property Printing: JIDzPrinter_PrinterState read _GetPrinting;
    {class} property Working: JIDzPrinter_PrinterState read _GetWorking;
    {class} property Disconnected: JIDzPrinter_PrinterState read _GetDisconnected;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrinterState')]
  JIDzPrinter_PrinterState = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{5197066A-EF38-4BEB-807A-AA52334AB9AA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_PrinterState = class(TJavaGenericImport<JIDzPrinter_PrinterStateClass, JIDzPrinter_PrinterState>) end;

  JIDzPrinter_PrintFailReasonClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{DD165CAA-A5AF-404A-B6D2-F105E256295B}']
    { static Property Methods }
    {class} function _GetOK: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetIsPrinting: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetIsRotating: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetVolTooLow: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetVolTooHigh: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetTphNotFound: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetTphTooHot: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetTphTooCold: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetTphOpened: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetCoverOpened: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetNo_Paper: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetNo_Ribbon: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetUnmatched_Ribbon: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetUsedup_Ribbon: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetUsedup_Ribbon2: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetCancelled: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetTimeout: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function _GetOther: JIDzPrinter_PrintFailReason; //Lcom/dothantech/printer/IDzPrinter$PrintFailReason;

    { static Methods }
    {class} function values: TJavaObjectArray<JIDzPrinter_PrintFailReason>; cdecl; //()[Lcom/dothantech/printer/IDzPrinter$PrintFailReason;
    {class} function valueOf(P1: JString): JIDzPrinter_PrintFailReason; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$PrintFailReason;

    { static Property }
    {class} property OK: JIDzPrinter_PrintFailReason read _GetOK;
    {class} property IsPrinting: JIDzPrinter_PrintFailReason read _GetIsPrinting;
    {class} property IsRotating: JIDzPrinter_PrintFailReason read _GetIsRotating;
    {class} property VolTooLow: JIDzPrinter_PrintFailReason read _GetVolTooLow;
    {class} property VolTooHigh: JIDzPrinter_PrintFailReason read _GetVolTooHigh;
    {class} property TphNotFound: JIDzPrinter_PrintFailReason read _GetTphNotFound;
    {class} property TphTooHot: JIDzPrinter_PrintFailReason read _GetTphTooHot;
    {class} property TphTooCold: JIDzPrinter_PrintFailReason read _GetTphTooCold;
    {class} property TphOpened: JIDzPrinter_PrintFailReason read _GetTphOpened;
    {class} property CoverOpened: JIDzPrinter_PrintFailReason read _GetCoverOpened;
    {class} property No_Paper: JIDzPrinter_PrintFailReason read _GetNo_Paper;
    {class} property No_Ribbon: JIDzPrinter_PrintFailReason read _GetNo_Ribbon;
    {class} property Unmatched_Ribbon: JIDzPrinter_PrintFailReason read _GetUnmatched_Ribbon;
    {class} property Usedup_Ribbon: JIDzPrinter_PrintFailReason read _GetUsedup_Ribbon;
    {class} property Usedup_Ribbon2: JIDzPrinter_PrintFailReason read _GetUsedup_Ribbon2;
    {class} property Cancelled: JIDzPrinter_PrintFailReason read _GetCancelled;
    {class} property Timeout: JIDzPrinter_PrintFailReason read _GetTimeout;
    {class} property Other: JIDzPrinter_PrintFailReason read _GetOther;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrintFailReason')]
  JIDzPrinter_PrintFailReason = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{DF49AF0A-654D-4215-AFDF-E1A432FDE4DE}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_PrintFailReason = class(TJavaGenericImport<JIDzPrinter_PrintFailReasonClass, JIDzPrinter_PrintFailReason>) end;

  JIDzPrinter_PrintParamNameClass = interface(JObjectClass)
  ['{16C3FA1A-2D3C-47A3-AD11-ADDCDD26AA79}']
    { static Property Methods }
    {class} function _GetPRINT_DARKNESS: JString; //Ljava/lang/String;
    {class} function _GetPRINT_DENSITY: JString; //Ljava/lang/String;
    {class} function _GetPRINT_SPEED: JString; //Ljava/lang/String;
    {class} function _GetPRINT_DIRECTION: JString; //Ljava/lang/String;
    {class} function _GetPRINT_COPIES: JString; //Ljava/lang/String;
    {class} function _GetGAP_TYPE: JString; //Ljava/lang/String;
    {class} function _GetGAP_LENGTH_01MM: JString; //Ljava/lang/String;
    {class} function _GetGAP_LENGTH_PX: JString; //Ljava/lang/String;
    {class} function _GetGAP_LENGTH: JString; //Ljava/lang/String;
    {class} function _GetRIGHT_MARGIN_01MM: JString; //Ljava/lang/String;
    {class} function _GetRIGHT_MARGIN_PX: JString; //Ljava/lang/String;
    {class} function _GetTOP_MARGIN_01MM: JString; //Ljava/lang/String;
    {class} function _GetTOP_MARGIN_PX: JString; //Ljava/lang/String;
    {class} function _GetBOTTOM_MARGIN_01MM: JString; //Ljava/lang/String;
    {class} function _GetBOTTOM_MARGIN_PX: JString; //Ljava/lang/String;
    {class} function _GetIMAGE_THRESHOLD: JString; //Ljava/lang/String;

    { static Methods }

    { static Property }
    {class} property PRINT_DARKNESS: JString read _GetPRINT_DARKNESS;
    {class} property PRINT_DENSITY: JString read _GetPRINT_DENSITY;
    {class} property PRINT_SPEED: JString read _GetPRINT_SPEED;
    {class} property PRINT_DIRECTION: JString read _GetPRINT_DIRECTION;
    {class} property PRINT_COPIES: JString read _GetPRINT_COPIES;
    {class} property GAP_TYPE: JString read _GetGAP_TYPE;
    {class} property GAP_LENGTH_01MM: JString read _GetGAP_LENGTH_01MM;
    {class} property GAP_LENGTH_PX: JString read _GetGAP_LENGTH_PX;
    {class} property GAP_LENGTH: JString read _GetGAP_LENGTH;
    {class} property RIGHT_MARGIN_01MM: JString read _GetRIGHT_MARGIN_01MM;
    {class} property RIGHT_MARGIN_PX: JString read _GetRIGHT_MARGIN_PX;
    {class} property TOP_MARGIN_01MM: JString read _GetTOP_MARGIN_01MM;
    {class} property TOP_MARGIN_PX: JString read _GetTOP_MARGIN_PX;
    {class} property BOTTOM_MARGIN_01MM: JString read _GetBOTTOM_MARGIN_01MM;
    {class} property BOTTOM_MARGIN_PX: JString read _GetBOTTOM_MARGIN_PX;
    {class} property IMAGE_THRESHOLD: JString read _GetIMAGE_THRESHOLD;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrintParamName')]
  JIDzPrinter_PrintParamName = interface(IJavaInstance)
  ['{148E69B1-4C93-4ACC-A712-32156D07A6BE}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_PrintParamName = class(TJavaGenericImport<JIDzPrinter_PrintParamNameClass, JIDzPrinter_PrintParamName>) end;

  JIDzPrinter_PrintParamValueClass = interface(JObjectClass)
  ['{1DF73FE2-005D-4DB2-9AC4-8FE50A9D4324}']
    { static Property Methods }
    {class} function _GetMIN_PRINT_DARKNESS: Integer; //I
    {class} function _GetDEFAULT_PRINT_DARKNESS: Integer; //I
    {class} function _GetMAX_PRINT_DARKNESS: Integer; //I
    {class} function _GetMIN_PRINT_SPEED: Integer; //I
    {class} function _GetDEFAULT_PRINT_SPEED: Integer; //I
    {class} function _GetMAX_PRINT_SPEED: Integer; //I
    {class} function _GetGAP_NONE: Integer; //I
    {class} function _GetGAP_HOLE: Integer; //I
    {class} function _GetGAP_GAP: Integer; //I
    {class} function _GetGAP_BLACK: Integer; //I

    { static Methods }

    { static Property }
    {class} property MIN_PRINT_DARKNESS: Integer read _GetMIN_PRINT_DARKNESS;
    {class} property DEFAULT_PRINT_DARKNESS: Integer read _GetDEFAULT_PRINT_DARKNESS;
    {class} property MAX_PRINT_DARKNESS: Integer read _GetMAX_PRINT_DARKNESS;
    {class} property MIN_PRINT_SPEED: Integer read _GetMIN_PRINT_SPEED;
    {class} property DEFAULT_PRINT_SPEED: Integer read _GetDEFAULT_PRINT_SPEED;
    {class} property MAX_PRINT_SPEED: Integer read _GetMAX_PRINT_SPEED;
    {class} property GAP_NONE: Integer read _GetGAP_NONE;
    {class} property GAP_HOLE: Integer read _GetGAP_HOLE;
    {class} property GAP_GAP: Integer read _GetGAP_GAP;
    {class} property GAP_BLACK: Integer read _GetGAP_BLACK;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrintParamValue')]
  JIDzPrinter_PrintParamValue = interface(IJavaInstance)
  ['{A181470D-76C2-4378-8B10-B08A102CEE28}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_PrintParamValue = class(TJavaGenericImport<JIDzPrinter_PrintParamValueClass, JIDzPrinter_PrintParamValue>) end;

  JIDzPrinter_PrintProgressClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{F0330321-768E-4823-B70E-3952DD7E02CD}']
    { static Property Methods }
    {class} function _GetConnected: JIDzPrinter_PrintProgress; //Lcom/dothantech/printer/IDzPrinter$PrintProgress;
    {class} function _GetStartCopy: JIDzPrinter_PrintProgress; //Lcom/dothantech/printer/IDzPrinter$PrintProgress;
    {class} function _GetSuccess: JIDzPrinter_PrintProgress; //Lcom/dothantech/printer/IDzPrinter$PrintProgress;
    {class} function _GetFailed: JIDzPrinter_PrintProgress; //Lcom/dothantech/printer/IDzPrinter$PrintProgress;

    { static Methods }
    {class} function values: TJavaObjectArray<JIDzPrinter_PrintProgress>; cdecl; //()[Lcom/dothantech/printer/IDzPrinter$PrintProgress;
    {class} function valueOf(P1: JString): JIDzPrinter_PrintProgress; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$PrintProgress;

    { static Property }
    {class} property Connected: JIDzPrinter_PrintProgress read _GetConnected;
    {class} property StartCopy: JIDzPrinter_PrintProgress read _GetStartCopy;
    {class} property Success: JIDzPrinter_PrintProgress read _GetSuccess;
    {class} property Failed: JIDzPrinter_PrintProgress read _GetFailed;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$PrintProgress')]
  JIDzPrinter_PrintProgress = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{DEB4921E-4067-42D4-AECE-B968051C693D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_PrintProgress = class(TJavaGenericImport<JIDzPrinter_PrintProgressClass, JIDzPrinter_PrintProgress>) end;

  JIDzPrinter_ProgressInfoClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{D3944E41-4D4F-497A-BDFF-05C8E77719D6}']
    { static Property Methods }
    {class} function _GetAdapterEnabling: JIDzPrinter_ProgressInfo; //Lcom/dothantech/printer/IDzPrinter$ProgressInfo;
    {class} function _GetAdapterEnabled: JIDzPrinter_ProgressInfo; //Lcom/dothantech/printer/IDzPrinter$ProgressInfo;
    {class} function _GetAdapterDisabled: JIDzPrinter_ProgressInfo; //Lcom/dothantech/printer/IDzPrinter$ProgressInfo;
    {class} function _GetDeviceBonding: JIDzPrinter_ProgressInfo; //Lcom/dothantech/printer/IDzPrinter$ProgressInfo;
    {class} function _GetDeviceBonded: JIDzPrinter_ProgressInfo; //Lcom/dothantech/printer/IDzPrinter$ProgressInfo;
    {class} function _GetDeviceUnbonded: JIDzPrinter_ProgressInfo; //Lcom/dothantech/printer/IDzPrinter$ProgressInfo;

    { static Methods }
    {class} function values: TJavaObjectArray<JIDzPrinter_ProgressInfo>; cdecl; //()[Lcom/dothantech/printer/IDzPrinter$ProgressInfo;
    {class} function valueOf(P1: JString): JIDzPrinter_ProgressInfo; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter$ProgressInfo;

    { static Property }
    {class} property AdapterEnabling: JIDzPrinter_ProgressInfo read _GetAdapterEnabling;
    {class} property AdapterEnabled: JIDzPrinter_ProgressInfo read _GetAdapterEnabled;
    {class} property AdapterDisabled: JIDzPrinter_ProgressInfo read _GetAdapterDisabled;
    {class} property DeviceBonding: JIDzPrinter_ProgressInfo read _GetDeviceBonding;
    {class} property DeviceBonded: JIDzPrinter_ProgressInfo read _GetDeviceBonded;
    {class} property DeviceUnbonded: JIDzPrinter_ProgressInfo read _GetDeviceUnbonded;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter$ProgressInfo')]
  JIDzPrinter_ProgressInfo = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{1AABE977-427B-43D3-A83B-D85CF2F3F734}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter_ProgressInfo = class(TJavaGenericImport<JIDzPrinter_ProgressInfoClass, JIDzPrinter_ProgressInfo>) end;

  JIDzPrinterClass = interface(JObjectClass)
  ['{CA970EA2-89AD-4073-A178-06F293B30DC9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter')]
  JIDzPrinter = interface(IJavaInstance)
  ['{1D5171F4-DC1A-4107-9347-09119AD2EEDA}']
    { Property Methods }

    { methods }
    function init(P1: JContext; P2: JIDzPrinter_IDzPrinterCallback): Boolean; cdecl; //(Landroid/content/Context;Lcom/dothantech/printer/IDzPrinter$IDzPrinterCallback;)Z
    procedure quit; cdecl; //()V
    function connect(P1: JIDzPrinter_PrinterAddress): Boolean; cdecl; overload; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Z
    function connect(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    function connectSync(P1: JIDzPrinter_PrinterAddress): Boolean; cdecl; overload; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;)Z
    function connectSync(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    procedure disconnect; cdecl; //()V
    function reconnect: Boolean; cdecl; //()Z
    function reconnectSync: Boolean; cdecl; //()Z
    function getPrinterState: JIDzPrinter_PrinterState; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterState;
    function getPrinterInfo: JIDzPrinter_PrinterInfo; cdecl; //()Lcom/dothantech/printer/IDzPrinter$PrinterInfo;
    function waitPrinterState(P1: JIDzPrinter_PrinterState; P2: Int64): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterState;J)Z
    function print(P1: JBitmap; P2: JBundle): Boolean; cdecl; overload; //(Landroid/graphics/Bitmap;Landroid/os/Bundle;)Z
    function print(P1: Jn; P2: JBundle): Boolean; cdecl; overload; //(Lcom/dothantech/printer/n;Landroid/os/Bundle;)Z
    function print(P1: Jo; P2: JBundle): Boolean; cdecl; overload; //(Lcom/dothantech/printer/o;Landroid/os/Bundle;)Z
    procedure cancel; cdecl; //()V

    { Property }
  end;

  TJIDzPrinter = class(TJavaGenericImport<JIDzPrinterClass, JIDzPrinter>) end;

  JIDzPrinter2_DeviceAddrTypeConverterClass = interface(JObjectClass)
  ['{4885935D-57ED-4992-A064-33B1B0A140E5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JIDzPrinter2_DeviceAddrTypeConverter; cdecl; //()V
    {class} function &type(P1: Byte): JIDzPrinter_AddressType; cdecl; overload; //(B)Lcom/dothantech/printer/IDzPrinter$AddressType;
    {class} function &type(P1: Integer): JIDzPrinter_AddressType; cdecl; overload; //(I)Lcom/dothantech/printer/IDzPrinter$AddressType;
    {class} function &type(P1: JIDzPrinter_AddressType): Integer; cdecl; overload; //(Lcom/dothantech/printer/IDzPrinter$AddressType;)I

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter2$DeviceAddrTypeConverter')]
  JIDzPrinter2_DeviceAddrTypeConverter = interface(JObject)
  ['{1B5D908A-F342-4723-B402-8C4F00ED96F6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter2_DeviceAddrTypeConverter = class(TJavaGenericImport<JIDzPrinter2_DeviceAddrTypeConverterClass, JIDzPrinter2_DeviceAddrTypeConverter>) end;

  JIDzPrinter2_GeneralProgressClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{6EFDF457-FAA6-440A-A5A7-81D27FA93F9F}']
    { static Property Methods }
    {class} function _GetStart: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function _GetSuccess: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function _GetSuccess2: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function _GetFailed: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function _GetCancelled: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function _GetTimeout: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function _GetInfo: JIDzPrinter2_GeneralProgress; //Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;

    { static Methods }
    {class} function values: TJavaObjectArray<JIDzPrinter2_GeneralProgress>; cdecl; //()[Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;
    {class} function valueOf(P1: JString): JIDzPrinter2_GeneralProgress; cdecl; //(Ljava/lang/String;)Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;

    { static Property }
    {class} property Start: JIDzPrinter2_GeneralProgress read _GetStart;
    {class} property Success: JIDzPrinter2_GeneralProgress read _GetSuccess;
    {class} property Success2: JIDzPrinter2_GeneralProgress read _GetSuccess2;
    {class} property Failed: JIDzPrinter2_GeneralProgress read _GetFailed;
    {class} property Cancelled: JIDzPrinter2_GeneralProgress read _GetCancelled;
    {class} property Timeout: JIDzPrinter2_GeneralProgress read _GetTimeout;
    {class} property Info: JIDzPrinter2_GeneralProgress read _GetInfo;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter2$GeneralProgress')]
  JIDzPrinter2_GeneralProgress = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{1280AE97-C488-4C51-9A85-20B14A562881}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter2_GeneralProgress = class(TJavaGenericImport<JIDzPrinter2_GeneralProgressClass, JIDzPrinter2_GeneralProgress>) end;

  JIDzPrinter2_IDzPrinterCallback2Class = interface(JObjectClass)
  ['{2C05D87C-3EB9-4681-9727-9A7569E81C61}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter2$IDzPrinterCallback2')]
  JIDzPrinter2_IDzPrinterCallback2 = interface(IJavaInstance)
  ['{B7211FB6-2436-479F-8980-4C88CD914E2F}']
    { Property Methods }

    { methods }
    procedure onBondProgress(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter2_GeneralProgress); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;)V
    procedure onSetParamProgress(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter2_GeneralProgress); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;)V
    procedure onSendDataProgress(P1: Jc_a; P2: JIDzPrinter2_GeneralProgress); cdecl; //(Lcom/dothantech/data/c$a;Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;)V
    procedure onPrinterParamChanged(P1: JIDzPrinter_PrinterAddress; P2: JIDzPrinter2_PrinterParam; P3: JIDzPrinter2_PrinterParam); cdecl; //(Lcom/dothantech/printer/IDzPrinter$PrinterAddress;Lcom/dothantech/printer/IDzPrinter2$PrinterParam;Lcom/dothantech/printer/IDzPrinter2$PrinterParam;)V
    procedure onDeviceDiscovery(P1: JIDzPrinter2_GeneralProgress; P2: JObject); cdecl; //(Lcom/dothantech/printer/IDzPrinter2$GeneralProgress;Ljava/lang/Object;)V

    { Property }
  end;

  TJIDzPrinter2_IDzPrinterCallback2 = class(TJavaGenericImport<JIDzPrinter2_IDzPrinterCallback2Class, JIDzPrinter2_IDzPrinterCallback2>) end;

  JIDzPrinter2_PrinterParamClass = interface(JObjectClass)
  ['{0A9C3904-BDF8-4AA9-A99B-609010F16A64}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Integer; P2: JString; P3: JString; P4: JString; P5: JString; P6: Integer; P7: Integer; P8: Integer; P9: Integer; P10: Integer; P11: Integer; P12: Integer; P13: Integer; P14: Integer; P15: Integer; P16: TJavaArray<Integer>; P17: TJavaArray<Integer>; P18: TJavaArray<Integer>; P19: JString; P20: JString; P21: Integer; P22: Integer; P23: Integer): JIDzPrinter2_PrinterParam; cdecl; //(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIIIII[I[I[ILjava/lang/String;Ljava/lang/String;III)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter2$PrinterParam')]
  JIDzPrinter2_PrinterParam = interface(JObject)
  ['{5A29F97A-16AB-411E-9A3E-50E536433F85}']
    { Property Methods }
    function _GetdeviceType: Integer; //I
    procedure _SetdeviceType(adeviceType: Integer); //(I)V
    function _GetdeviceName: JString; //Ljava/lang/String;
    procedure _SetdeviceName(adeviceName: JString); //(Ljava/lang/String;)V
    function _GetdeviceVersion: JString; //Ljava/lang/String;
    procedure _SetdeviceVersion(adeviceVersion: JString); //(Ljava/lang/String;)V
    function _GetsoftwareVersion: JString; //Ljava/lang/String;
    procedure _SetsoftwareVersion(asoftwareVersion: JString); //(Ljava/lang/String;)V
    function _GetdeviceAddress: JString; //Ljava/lang/String;
    procedure _SetdeviceAddress(adeviceAddress: JString); //(Ljava/lang/String;)V
    function _GetdeviceAddrType: Integer; //I
    procedure _SetdeviceAddrType(adeviceAddrType: Integer); //(I)V
    function _GetprinterDPI: Integer; //I
    procedure _SetprinterDPI(aprinterDPI: Integer); //(I)V
    function _GetprinterWidth: Integer; //I
    procedure _SetprinterWidth(aprinterWidth: Integer); //(I)V
    function _GetprintDensity: Integer; //I
    procedure _SetprintDensity(aprintDensity: Integer); //(I)V
    function _GetprintSpeed: Integer; //I
    procedure _SetprintSpeed(aprintSpeed: Integer); //(I)V
    function _GetgapType: Integer; //I
    procedure _SetgapType(agapType: Integer); //(I)V
    function _GetgapLength: Integer; //I
    procedure _SetgapLength(agapLength: Integer); //(I)V
    function _GetmotorMode: Integer; //I
    procedure _SetmotorMode(amotorMode: Integer); //(I)V
    function _GetautoPowerOffMins: Integer; //I
    procedure _SetautoPowerOffMins(aautoPowerOffMins: Integer); //(I)V
    function _Getlanguage: Integer; //I
    procedure _Setlanguage(alanguage: Integer); //(I)V
    function _GetsupportedGapTypes: TJavaArray<Integer>; //[I
    procedure _SetsupportedGapTypes(asupportedGapTypes: TJavaArray<Integer>); //([I)V
    function _GetsupportedMotorModes: TJavaArray<Integer>; //[I
    procedure _SetsupportedMotorModes(asupportedMotorModes: TJavaArray<Integer>); //([I)V
    function _GetsupportedLanguages: TJavaArray<Integer>; //[I
    procedure _SetsupportedLanguages(asupportedLanguages: TJavaArray<Integer>); //([I)V
    function _GetseriesName: JString; //Ljava/lang/String;
    procedure _SetseriesName(aseriesName: JString); //(Ljava/lang/String;)V
    function _GetdevIntName: JString; //Ljava/lang/String;
    procedure _SetdevIntName(adevIntName: JString); //(Ljava/lang/String;)V
    function _GetperipheralFlags: Integer; //I
    procedure _SetperipheralFlags(aperipheralFlags: Integer); //(I)V
    function _GethardwareFlags: Integer; //I
    procedure _SethardwareFlags(ahardwareFlags: Integer); //(I)V
    function _GetsoftwareFlags: Integer; //I
    procedure _SetsoftwareFlags(asoftwareFlags: Integer); //(I)V

    { methods }
    procedure setSupportedGapTypes(P1: TJavaArray<Integer>); cdecl; //([I)V
    procedure setSupportedMotorModes(P1: TJavaArray<Integer>); cdecl; //([I)V
    procedure setSupportedLanguages(P1: TJavaArray<Integer>); cdecl; //([I)V
    function getAddressType: JIDzPrinter_AddressType; cdecl; //()Lcom/dothantech/printer/IDzPrinter$AddressType;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function equals(P1: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function clone: JIDzPrinter2_PrinterParam; cdecl; overload; //()Lcom/dothantech/printer/IDzPrinter2$PrinterParam;
//    function clone: JObject; cdecl; overload; //()Ljava/lang/Object;

    { Property }
    property deviceType: Integer read _GetdeviceType write _SetdeviceType;
    property deviceName: JString read _GetdeviceName write _SetdeviceName;
    property deviceVersion: JString read _GetdeviceVersion write _SetdeviceVersion;
    property softwareVersion: JString read _GetsoftwareVersion write _SetsoftwareVersion;
    property deviceAddress: JString read _GetdeviceAddress write _SetdeviceAddress;
    property deviceAddrType: Integer read _GetdeviceAddrType write _SetdeviceAddrType;
    property printerDPI: Integer read _GetprinterDPI write _SetprinterDPI;
    property printerWidth: Integer read _GetprinterWidth write _SetprinterWidth;
    property printDensity: Integer read _GetprintDensity write _SetprintDensity;
    property printSpeed: Integer read _GetprintSpeed write _SetprintSpeed;
    property gapType: Integer read _GetgapType write _SetgapType;
    property gapLength: Integer read _GetgapLength write _SetgapLength;
    property motorMode: Integer read _GetmotorMode write _SetmotorMode;
    property autoPowerOffMins: Integer read _GetautoPowerOffMins write _SetautoPowerOffMins;
    property language: Integer read _Getlanguage write _Setlanguage;
    property supportedGapTypes: TJavaArray<Integer> read _GetsupportedGapTypes write _SetsupportedGapTypes;
    property supportedMotorModes: TJavaArray<Integer> read _GetsupportedMotorModes write _SetsupportedMotorModes;
    property supportedLanguages: TJavaArray<Integer> read _GetsupportedLanguages write _SetsupportedLanguages;
    property seriesName: JString read _GetseriesName write _SetseriesName;
    property devIntName: JString read _GetdevIntName write _SetdevIntName;
    property peripheralFlags: Integer read _GetperipheralFlags write _SetperipheralFlags;
    property hardwareFlags: Integer read _GethardwareFlags write _SethardwareFlags;
    property softwareFlags: Integer read _GetsoftwareFlags write _SetsoftwareFlags;
  end;

  TJIDzPrinter2_PrinterParam = class(TJavaGenericImport<JIDzPrinter2_PrinterParamClass, JIDzPrinter2_PrinterParam>) end;

  JIDzPrinter2_PrinterParamNameClass = interface(JObjectClass)
  ['{064A469E-A2D2-4453-9148-584AF17884B3}']
    { static Property Methods }
    {class} function _GetMOTOR_MODE: JString; //Ljava/lang/String;
    {class} function _GetAUTO_POWEROFF: JString; //Ljava/lang/String;
    {class} function _GetLANGUAGE: JString; //Ljava/lang/String;

    { static Methods }

    { static Property }
    {class} property MOTOR_MODE: JString read _GetMOTOR_MODE;
    {class} property AUTO_POWEROFF: JString read _GetAUTO_POWEROFF;
    {class} property LANGUAGE: JString read _GetLANGUAGE;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter2$PrinterParamName')]
  JIDzPrinter2_PrinterParamName = interface(IJavaInstance)
  ['{70A26680-6323-4BD6-AA77-0E4F4FF35D19}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDzPrinter2_PrinterParamName = class(TJavaGenericImport<JIDzPrinter2_PrinterParamNameClass, JIDzPrinter2_PrinterParamName>) end;

  JIDzPrinter2Class = interface(JObjectClass)
  ['{35C7C9F2-B6A5-4C2B-A7AA-708C357A717F}']
    { static Property Methods }
    {class} function _GetDEFAULT_BOND_PASSWORD: JString; //Ljava/lang/String;

    { static Methods }

    { static Property }
    {class} property DEFAULT_BOND_PASSWORD: JString read _GetDEFAULT_BOND_PASSWORD;
  end;

  [JavaSignature('com/dothantech/printer/IDzPrinter2')]
  JIDzPrinter2 = interface(IJavaInstance)
  ['{4922F808-EC24-4EC8-B684-1BFD69D6285E}']
    { Property Methods }

    { methods }
    function bond(P1: JString): Boolean; cdecl; overload; //(Ljava/lang/String;)Z
    function bond(P1: JString; P2: JString): Boolean; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Z
    function onNfcDiscovery(P1: JIntent): Boolean; cdecl; //(Landroid/content/Intent;)Z
    function getPrinterParam: JIDzPrinter2_PrinterParam; cdecl; //()Lcom/dothantech/printer/IDzPrinter2$PrinterParam;
    function refreshPrinterParam: Boolean; cdecl; //()Z
    function setPrinterParam(P1: JBundle): Boolean; cdecl; //(Landroid/os/Bundle;)Z
    function sendDataPackage(P1: Jc_a): Boolean; cdecl; //(Lcom/dothantech/data/c$a;)Z
    function startDeviceDiscovery(P1: JIDzPrinter_AddressType): Boolean; cdecl; //(Lcom/dothantech/printer/IDzPrinter$AddressType;)Z
    procedure cancel(P1: Integer); cdecl; //(I)V

    { Property }
  end;

  TJIDzPrinter2 = class(TJavaGenericImport<JIDzPrinter2Class, JIDzPrinter2>) end;

  Jj_161Class = interface(Jb_009Class) // or JObjectClass // SuperSignature: com/dothantech/b/b
  ['{BACEE82A-E146-4A93-8059-1012169B7007}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/j')]
  Jj_161 = interface(Jb_009) // or JObject // SuperSignature: com/dothantech/b/b
  ['{A0805D21-BDF1-4591-B3B1-B3802EF40AB3}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJj_161 = class(TJavaGenericImport<Jj_161Class, Jj_161>) end;

  Jk_162Class = interface(JObjectClass)
  ['{C35493FD-8795-480D-BB9D-B188B2844E01}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/k')]
  Jk_162 = interface(JObject)
  ['{3E881DB6-376C-4AAA-9E97-E99CD786A1FE}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJk_162 = class(TJavaGenericImport<Jk_162Class, Jk_162>) end;

  Jl_163Class = interface(JObjectClass)
  ['{A902F92C-028E-4EA6-B8B9-9C22AB3FC877}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/l')]
  Jl_163 = interface(JObject)
  ['{F89A4979-4643-4285-9975-8041BE4E1D29}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJl_163 = class(TJavaGenericImport<Jl_163Class, Jl_163>) end;

  Jm_164Class = interface(JObjectClass)
  ['{7629CD4B-4B75-487F-BE82-EB3C57E24C6D}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: Jo; P2: JBundle): Jm_164; cdecl; //(Lcom/dothantech/printer/o;Landroid/os/Bundle;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/m')]
  Jm_164 = interface(JObject)
  ['{6E314134-AEEF-45DB-A21E-74E05ACF03F0}']
    { Property Methods }

    { methods }
    function a: Jc_a; cdecl; //()Lcom/dothantech/data/c$a;

    { Property }
  end;

  TJm_164 = class(TJavaGenericImport<Jm_164Class, Jm_164>) end;

  Jn_165Class = interface(JObjectClass)
  ['{7030BD0E-D4B7-4DF7-99AF-23B648C606B7}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/n')]
  Jn_165 = interface(IJavaInstance)
  ['{4CF04786-A59C-4B69-8126-9783934C8ED1}']
    { Property Methods }

    { methods }
    function a: JList; cdecl; //()Ljava/util/List;

    { Property }
  end;

  TJn_165 = class(TJavaGenericImport<Jn_165Class, Jn_165>) end;

  Jo_166Class = interface(JObjectClass)
  ['{FA90BAA7-5E87-4DBA-BE67-C8DA760CC4A8}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/printer/o')]
  Jo_166 = interface(IJavaInstance)
  ['{DB60E951-35B0-4190-A254-49E15F56F8E8}']
    { Property Methods }

    { methods }
    function a: Jc_a; cdecl; //()Lcom/dothantech/data/c$a;

    { Property }
  end;

  TJo_166 = class(TJavaGenericImport<Jo_166Class, Jo_166>) end;

  Jp_167Class = interface(JObjectClass)
  ['{AEF1B111-D397-4F7B-8433-4D965C4FDEBE}']
    { static Property Methods }
    {class} function _Geta: Integer; //I
    {class} function _Getb: Integer; //I
    {class} function _Getc: Integer; //I
    {class} function _Getd: Integer; //I

    { static Methods }

    { static Property }
    {class} property a: Integer read _Geta;
    {class} property b: Integer read _Getb;
    {class} property c: Integer read _Getc;
    {class} property d: Integer read _Getd;
  end;

  [JavaSignature('com/dothantech/printer/p')]
  Jp_167 = interface(JObject)
  ['{D23ECF0D-CBAE-45A0-99A2-B36B3BF5DC19}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJp_167 = class(TJavaGenericImport<Jp_167Class, Jp_167>) end;

  Ja_168Class = interface(JObjectClass)
  ['{9032BE8F-9580-4878-B716-0A685EFEDB60}']
    { static Property Methods }

    { static Methods }
    {class} function a: JHandler; cdecl; //()Landroid/os/Handler;

    { static Property }
  end;

  [JavaSignature('com/dothantech/view/a')]
  Ja_168 = interface(JObject)
  ['{906EE6A4-E9CD-47A0-BCCE-58C378A40BD3}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJa_168 = class(TJavaGenericImport<Ja_168Class, Ja_168>) end;

  Jb_169Class = interface(JObjectClass)
  ['{7AE9D4A4-E42B-49C1-8E32-A95EE2ABA5CA}']
    { static Property Methods }

    { static Methods }
    {class} function a(P1: JView; P2: Jlang_Class): JView; cdecl; //(Landroid/view/View;Ljava/lang/Class;)Landroid/view/View;

    { static Property }
  end;

  [JavaSignature('com/dothantech/view/b')]
  Jb_169 = interface(JObject)
  ['{0E45F8BA-ACCB-4E63-9F4E-9DD7D570128C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJb_169 = class(TJavaGenericImport<Jb_169Class, Jb_169>) end;

  Jc_170Class = interface(JObjectClass)
  ['{EDBFE629-ABCB-4A25-851B-B9D72AE98FCB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/dothantech/view/c')]
  Jc_170 = interface(JObject)
  ['{C48F6FEA-CEAE-42DC-9707-17454D8FDDB2}']
    { Property Methods }

    { methods }
    procedure onClick(P1: JView); cdecl; //(Landroid/view/View;)V

    { Property }
  end;

  TJc_170 = class(TJavaGenericImport<Jc_170Class, Jc_170>) end;

  JDzWindow_ViewInfoClass = interface(JObjectClass)
  ['{C7AA22BB-2C9B-4CE2-B303-55C04989EDBA}']
    { static Property Methods }

    { static Methods }
    {class} function init(P1: JObject): JDzWindow_ViewInfo; cdecl; //(Ljava/lang/Object;)V

    { static Property }
  end;

  [JavaSignature('com/dothantech/view/DzWindow$ViewInfo')]
  JDzWindow_ViewInfo = interface(JObject)
  ['{9E3E8B75-933F-4ABC-8EFC-8AAD599CCECA}']
    { Property Methods }
    function _GetmTitle: JCharSequence; //Ljava/lang/CharSequence;
    procedure _SetmTitle(amTitle: JCharSequence); //(Ljava/lang/CharSequence;)V
    function _GetmAppVisible: Boolean; //Z
    procedure _SetmAppVisible(amAppVisible: Boolean); //(Z)V
    function _GetmContext: JContext; //Landroid/content/Context;
    procedure _SetmContext(amContext: JContext); //(Landroid/content/Context;)V
    function _GetmActivity: JActivity; //Landroid/app/Activity;
    procedure _SetmActivity(amActivity: JActivity); //(Landroid/app/Activity;)V
    function _GetmRoot: JObject; //Ljava/lang/Object;
    procedure _SetmRoot(amRoot: JObject); //(Ljava/lang/Object;)V
    function _GetmView: JView; //Landroid/view/View;
    procedure _SetmView(amView: JView); //(Landroid/view/View;)V

    { methods }
    function getTaskId: Integer; cdecl; //()I
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
    property mTitle: JCharSequence read _GetmTitle write _SetmTitle;
    property mAppVisible: Boolean read _GetmAppVisible write _SetmAppVisible;
    property mContext: JContext read _GetmContext write _SetmContext;
    property mActivity: JActivity read _GetmActivity write _SetmActivity;
    property mRoot: JObject read _GetmRoot write _SetmRoot;
    property mView: JView read _GetmView write _SetmView;
  end;

  TJDzWindow_ViewInfo = class(TJavaGenericImport<JDzWindow_ViewInfoClass, JDzWindow_ViewInfo>) end;

  JDzWindowClass = interface(JObjectClass)
  ['{30E1F68F-AF67-4B8E-A21C-153B388F7330}']
    { static Property Methods }
    {class} function _GetLog: Ju; //Lcom/dothantech/common/u;

    { static Methods }
    {class} function init: JDzWindow; cdecl; //()V
    {class} function getWindowManager: JObject; cdecl; //()Ljava/lang/Object;
    {class} function getViewInfos: JArrayList; cdecl; overload; //()Ljava/util/ArrayList;
    {class} function getViewCount: Integer; cdecl; overload; //()I
    {class} function getViewCount(P1: Boolean): Integer; cdecl; overload; //(Z)I
    {class} function getViewInfos(P1: Jlang_Class): JArrayList; cdecl; overload; //(Ljava/lang/Class;)Ljava/util/ArrayList;
    {class} function getViewInfos(P1: JString): JArrayList; cdecl; overload; //(Ljava/lang/String;)Ljava/util/ArrayList;
    {class} function getViewInfosByTitle(P1: JString): JArrayList; cdecl; //(Ljava/lang/String;)Ljava/util/ArrayList;
    {class} function getActiveViewInfo: JDzWindow_ViewInfo; cdecl; //()Lcom/dothantech/view/DzWindow$ViewInfo;
    {class} function getActiveActivity: JActivity; cdecl; //()Landroid/app/Activity;
    {class} function getMainViewInfo: JDzWindow_ViewInfo; cdecl; //()Lcom/dothantech/view/DzWindow$ViewInfo;
    {class} function getMainActivity: JActivity; cdecl; //()Landroid/app/Activity;
    {class} function backToMainActivity: Integer; cdecl; //()I
    {class} function getActivity(P1: Jlang_Class): JActivity; cdecl; overload; //(Ljava/lang/Class;)Landroid/app/Activity;
    {class} function getActivity(P1: JString): JActivity; cdecl; overload; //(Ljava/lang/String;)Landroid/app/Activity;
    {class} function getActivityByTitle(P1: JString): JActivity; cdecl; //(Ljava/lang/String;)Landroid/app/Activity;

    { static Property }
    {class} property Log: Ju read _GetLog;
  end;

  [JavaSignature('com/dothantech/view/DzWindow')]
  JDzWindow = interface(JObject)
  ['{F7AA67B7-79B5-4F09-9028-8620DF9DB98A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDzWindow = class(TJavaGenericImport<JDzWindowClass, JDzWindow>) end;

{$ENDIF}
implementation
{$IFDEF ANDROID}


procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja',
    TypeInfo(Androidapi.JNI.LPAPI.Ja));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb',
    TypeInfo(Androidapi.JNI.LPAPI.Jb));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc',
    TypeInfo(Androidapi.JNI.LPAPI.Jc));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd',
    TypeInfo(Androidapi.JNI.LPAPI.Jd));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_a',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_b',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_b));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_007',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_007));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_a_008',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_a_008));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_009',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_009));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_010',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_010));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_011',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_011));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_012',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_012));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_013',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_013));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_014',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_014));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_015',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_015));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_016',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_016));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_017',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_017));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_018',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_018));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_019',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_019));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_020',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_020));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_021',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_021));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_b',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_b));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_024',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_024));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Je',
    TypeInfo(Androidapi.JNI.LPAPI.Je));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jf',
    TypeInfo(Androidapi.JNI.LPAPI.Jf));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jg_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jg_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jg_b',
    TypeInfo(Androidapi.JNI.LPAPI.Jg_b));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jg',
    TypeInfo(Androidapi.JNI.LPAPI.Jg));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jh_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jh_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jh',
    TypeInfo(Androidapi.JNI.LPAPI.Jh));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ji',
    TypeInfo(Androidapi.JNI.LPAPI.Ji));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jj_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj_b',
    TypeInfo(Androidapi.JNI.LPAPI.Jj_b));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj_c',
    TypeInfo(Androidapi.JNI.LPAPI.Jj_c));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj_d',
    TypeInfo(Androidapi.JNI.LPAPI.Jj_d));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj',
    TypeInfo(Androidapi.JNI.LPAPI.Jj));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jk',
    TypeInfo(Androidapi.JNI.LPAPI.Jk));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jl',
    TypeInfo(Androidapi.JNI.LPAPI.Jl));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jm_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jm_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jm',
    TypeInfo(Androidapi.JNI.LPAPI.Jm));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_042',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_042));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_043',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_043));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_044',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_044));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_b',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_b));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_047',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_047));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_048',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_048));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_049',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_049));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_050',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_050));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_051',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_051));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Je_052',
    TypeInfo(Androidapi.JNI.LPAPI.Je_052));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_053',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_053));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_054',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_054));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Je_055',
    TypeInfo(Androidapi.JNI.LPAPI.Je_055));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_a_056',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_a_056));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_b_057',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_b_057));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_058',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_058));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jaa',
    TypeInfo(Androidapi.JNI.LPAPI.Jaa));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jab',
    TypeInfo(Androidapi.JNI.LPAPI.Jab));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jac',
    TypeInfo(Androidapi.JNI.LPAPI.Jac));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jad',
    TypeInfo(Androidapi.JNI.LPAPI.Jad));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jae',
    TypeInfo(Androidapi.JNI.LPAPI.Jae));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jaf',
    TypeInfo(Androidapi.JNI.LPAPI.Jaf));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jag_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jag_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jag',
    TypeInfo(Androidapi.JNI.LPAPI.Jag));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jah',
    TypeInfo(Androidapi.JNI.LPAPI.Jah));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jai',
    TypeInfo(Androidapi.JNI.LPAPI.Jai));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jaj',
    TypeInfo(Androidapi.JNI.LPAPI.Jaj));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jak',
    TypeInfo(Androidapi.JNI.LPAPI.Jak));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jal',
    TypeInfo(Androidapi.JNI.LPAPI.Jal));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jam',
    TypeInfo(Androidapi.JNI.LPAPI.Jam));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jan',
    TypeInfo(Androidapi.JNI.LPAPI.Jan));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jao',
    TypeInfo(Androidapi.JNI.LPAPI.Jao));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jap',
    TypeInfo(Androidapi.JNI.LPAPI.Jap));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_076',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_076));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_077',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_077));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_078',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_078));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzSystem',
    TypeInfo(Androidapi.JNI.LPAPI.JDzSystem));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Je_080',
    TypeInfo(Androidapi.JNI.LPAPI.Je_080));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jf_081',
    TypeInfo(Androidapi.JNI.LPAPI.Jf_081));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jg_a_082',
    TypeInfo(Androidapi.JNI.LPAPI.Jg_a_082));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jg_083',
    TypeInfo(Androidapi.JNI.LPAPI.Jg_083));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jh_084',
    TypeInfo(Androidapi.JNI.LPAPI.Jh_084));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ji_085',
    TypeInfo(Androidapi.JNI.LPAPI.Ji_085));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj_086',
    TypeInfo(Androidapi.JNI.LPAPI.Jj_086));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jk_087',
    TypeInfo(Androidapi.JNI.LPAPI.Jk_087));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jl_088',
    TypeInfo(Androidapi.JNI.LPAPI.Jl_088));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jm_089',
    TypeInfo(Androidapi.JNI.LPAPI.Jm_089));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jn',
    TypeInfo(Androidapi.JNI.LPAPI.Jn));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jo',
    TypeInfo(Androidapi.JNI.LPAPI.Jo));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jp',
    TypeInfo(Androidapi.JNI.LPAPI.Jp));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jq_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jq_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jq',
    TypeInfo(Androidapi.JNI.LPAPI.Jq));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jr',
    TypeInfo(Androidapi.JNI.LPAPI.Jr));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Js',
    TypeInfo(Androidapi.JNI.LPAPI.Js));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jt',
    TypeInfo(Androidapi.JNI.LPAPI.Jt));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ju',
    TypeInfo(Androidapi.JNI.LPAPI.Ju));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jv',
    TypeInfo(Androidapi.JNI.LPAPI.Jv));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jw',
    TypeInfo(Androidapi.JNI.LPAPI.Jw));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jx',
    TypeInfo(Androidapi.JNI.LPAPI.Jx));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jy',
    TypeInfo(Androidapi.JNI.LPAPI.Jy));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jz_a',
    TypeInfo(Androidapi.JNI.LPAPI.Jz_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jz',
    TypeInfo(Androidapi.JNI.LPAPI.Jz));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_105',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_105));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_106',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_106));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_a_107',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_a_107));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_b_108',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_b_108));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_109',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_109));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzTagObject_a',
    TypeInfo(Androidapi.JNI.LPAPI.JDzTagObject_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzTagObject',
    TypeInfo(Androidapi.JNI.LPAPI.JDzTagObject));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_112',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_112));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_113',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_113));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_BarcodeType1D',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_BarcodeType1D));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_BarcodeType2D',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_BarcodeType2D));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_Factory',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_FontStyle',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_FontStyle));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_ItemAlignment',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_ItemAlignment));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_LabelScaleUnit',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_LabelScaleUnit));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_PenAlignment',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_PenAlignment));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap_ResultCode',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap_ResultCode));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIAtBitmap',
    TypeInfo(Androidapi.JNI.LPAPI.JIAtBitmap));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI_BarcodeType',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI_BarcodeType));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI_Callback',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI_Callback));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI_Factory',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI_FontStyle',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI_FontStyle));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI_ItemAlignment',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI_ItemAlignment));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI_PenAlignment',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI_PenAlignment));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JLPAPI',
    TypeInfo(Androidapi.JNI.LPAPI.JLPAPI));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_a_130',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_a_130));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_131',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_131));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_132',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_132));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_133',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_133));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jd_134',
    TypeInfo(Androidapi.JNI.LPAPI.Jd_134));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzPrinter_a',
    TypeInfo(Androidapi.JNI.LPAPI.JDzPrinter_a));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzPrinter_b',
    TypeInfo(Androidapi.JNI.LPAPI.JDzPrinter_b));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzPrinter',
    TypeInfo(Androidapi.JNI.LPAPI.JDzPrinter));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Je_138',
    TypeInfo(Androidapi.JNI.LPAPI.Je_138));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jf_139',
    TypeInfo(Androidapi.JNI.LPAPI.Jf_139));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jg_140',
    TypeInfo(Androidapi.JNI.LPAPI.Jg_140));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jh_141',
    TypeInfo(Androidapi.JNI.LPAPI.Jh_141));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ji_142',
    TypeInfo(Androidapi.JNI.LPAPI.Ji_142));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_AddressType',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_AddressType));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_Factory',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_IDzPrinterCallback',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_IDzPrinterCallback));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrinterAddress',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrinterAddress));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrinterInfo',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrinterInfo));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrinterState',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrinterState));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrintFailReason',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrintFailReason));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrintParamName',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrintParamName));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrintParamValue',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrintParamValue));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_PrintProgress',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_PrintProgress));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter_ProgressInfo',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter_ProgressInfo));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter2_DeviceAddrTypeConverter',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter2_DeviceAddrTypeConverter));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter2_GeneralProgress',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter2_GeneralProgress));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter2_IDzPrinterCallback2',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter2_IDzPrinterCallback2));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter2_PrinterParam',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter2_PrinterParam));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter2_PrinterParamName',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter2_PrinterParamName));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JIDzPrinter2',
    TypeInfo(Androidapi.JNI.LPAPI.JIDzPrinter2));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jj_161',
    TypeInfo(Androidapi.JNI.LPAPI.Jj_161));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jk_162',
    TypeInfo(Androidapi.JNI.LPAPI.Jk_162));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jl_163',
    TypeInfo(Androidapi.JNI.LPAPI.Jl_163));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jm_164',
    TypeInfo(Androidapi.JNI.LPAPI.Jm_164));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jn_165',
    TypeInfo(Androidapi.JNI.LPAPI.Jn_165));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jo_166',
    TypeInfo(Androidapi.JNI.LPAPI.Jo_166));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jp_167',
    TypeInfo(Androidapi.JNI.LPAPI.Jp_167));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Ja_168',
    TypeInfo(Androidapi.JNI.LPAPI.Ja_168));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jb_169',
    TypeInfo(Androidapi.JNI.LPAPI.Jb_169));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.Jc_170',
    TypeInfo(Androidapi.JNI.LPAPI.Jc_170));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzWindow_ViewInfo',
    TypeInfo(Androidapi.JNI.LPAPI.JDzWindow_ViewInfo));
  TRegTypes.RegisterType('Androidapi.JNI.LPAPI.JDzWindow',
    TypeInfo(Androidapi.JNI.LPAPI.JDzWindow));
end;


initialization
  RegisterTypes;

{$ENDIF}

end.

