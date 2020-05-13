unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFromPopupUtils, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmPopupBase5 = class(TFrmPopupBase)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrmPopupBase5.Button1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
