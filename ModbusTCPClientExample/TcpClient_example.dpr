program TcpClient_example;

uses
  Vcl.Forms,
  FrmMain_u in 'FrmMain_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
