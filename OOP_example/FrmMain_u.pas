unit FrmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, clsPerson_u;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ListBox1: TListBox;
    Göster: TButton;
    procedure Button1Click(Sender: TObject);
    procedure GösterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  oPerson:TPerson;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
  oPerson:=TPerson.Create(Edit1.Text,StrToInt(Edit2.Text));
end;

procedure TForm1.GösterClick(Sender: TObject);
begin
      ListBox1.Items.Add(oPerson.getName()+' '+IntToStr(oPerson.getAge()));
end;

end.
