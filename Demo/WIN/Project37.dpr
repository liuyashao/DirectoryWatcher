program Project37;

uses
  Vcl.Forms,
  Unit38 in 'Unit38.pas' {Form38};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm38, Form38);
  Application.Run;
end.
