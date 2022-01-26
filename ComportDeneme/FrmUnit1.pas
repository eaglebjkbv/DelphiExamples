unit FrmUnit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CPort;

type
  TForm1 = class(TForm)
    ComPort1: TComPort;
    Button1: TButton;
    ListBox1: TListBox;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ComPort1.Open();
  if ComPort1.Connected then

  ComPort1.WriteStr('Selamlar');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ComPort1.ShowSetupDialog();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ComPort1.Close();
  Button1.Enabled:=false;
end;

end.
