program Project1;

uses
  Vcl.Forms,
  Unit1 in 'C:\Users\С��15\Documents\Embarcadero\Studio\Projects\Unit1.pas' {Form1},
  uOddDetailUtils in 'uOddDetailUtils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
