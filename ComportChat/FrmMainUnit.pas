unit FrmMainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, CPort;

type
  TForm1 = class(TForm)
    ComPort1: TComPort;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ComPort1RxChar(Sender: TObject; Count: Integer);
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
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ComPort1.Close();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   ComPort1.ShowSetupDialog();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  comport1.WriteStr(edit1.Text);
end;

procedure TForm1.ComPort1RxChar(Sender: TObject; Count: Integer);
var GelenData :string;
begin
  Comport1.ReadStr(GelenData,Count);
  Memo1.Text:=Memo1.Text + GelenData;
end;

end.
