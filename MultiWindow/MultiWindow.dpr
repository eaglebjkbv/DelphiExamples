program MultiWindow;

uses
  Vcl.Forms,
  UAnaForm in 'UAnaForm.pas' {Form1},
  UIkinciForm in 'UIkinciForm.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
