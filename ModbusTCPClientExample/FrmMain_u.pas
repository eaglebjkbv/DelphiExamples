unit FrmMain_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient,IdGlobal;

type
  TForm1 = class(TForm)
    IdTCPClient1: TIdTCPClient;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  command: TIdBytes;
  dataReceived: TIdBytes;
  deneme: string;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);




begin
  IdTCPClient1.Host:=Edit1.Text+'.'+ Edit2.Text+'.'+ Edit3.Text+'.'+ Edit4.Text;
  IdTCPClient1.Port:=502;
  IdTCPClient1.Connect;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  IdTCPClient1.Disconnect;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
i :integer;
c,size :integer;
cmd :byte;

begin

    label2.Caption:='';
  setLength(command,12);
  c:=combobox1.ItemIndex;
  if c=0 then cmd:=$03 else cmd:=$06;
  if c=0 then size:=11 else size:=12 ;

  setLength(datareceived,512);
  command[0]:=$0;
  command[1]:=$1;
  command[2]:=$0;
  command[3]:=$0;
  command[4]:=$0;
  command[5]:=$6;
  command[6]:=$11;
  command[7]:=cmd;

  command[8]:=byte(StrToInt(Edit5.Text) shr 8);
  command[9]:=byte(StrToInt(Edit5.Text));
  command[10]:=byte(StrToInt(Edit6.Text) shr 8);;
  command[11]:=byte(StrToInt(Edit6.Text));;


  IdTCPClient1.IOHandler.Write(command,12,0);
  if idTcpClient1.IOHandler.CheckForDataOnSource(10) then
  begin
    IdTCPClient1.IOHandler.ReadBytes(dataReceived,size,False);
  end;
       for i := 0 to size-1 do

          label2.Caption:= label2.Caption+',0x'+IntToHex(datareceived[i]);

       end;


procedure TForm1.FormCreate(Sender: TObject);
begin
combobox1.ItemIndex:=0;
end;

procedure TForm1.IdTCPClient1Connected(Sender: TObject);
begin
  Label1.Caption:='Baðlandý';
end;

procedure TForm1.IdTCPClient1Disconnected(Sender: TObject);
begin
  Label1.Caption:='Baðlantý Kesildi';
end;

end.
