program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit6 in 'Unit6.pas' {Form2},
  Unit3 in 'Unit3.pas',
  Unit4 in 'Unit4.pas' {Form4},
  uPoolFactory in 'D:\qp_erp\source\Common\uPoolFactory.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
//  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  //  Application.CreateForm(TForm2, Form2);
//  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
