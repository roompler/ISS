unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls;

type
  Ttnk = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBText1: TDBText;
    DBText2: TDBText;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    DBText4: TDBText;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tnk: Ttnk;

implementation

{$R *.dfm}

procedure Ttnk.Button2Click(Sender: TObject);
begin
tnk.Close;
end;

procedure Ttnk.CheckBox1Click(Sender: TObject);
var
i:integer;
a:string;
begin
a:=dbgrid1.DataSource.DataSet.Fields.Fields[i].Value;
if checkbox1.Checked=true then
  begin
    adoquery1.Close;
    adoquery1.SQL.Clear;
    adoquery1.SQL.Add('update TNK set fav="yes" where id=1');
    adoquery1.ExecSQL;
  end;
end;

procedure Ttnk.DBGrid1CellClick(Column: TColumn);
begin
edit1.Clear;
edit2.Clear;
end;

procedure Ttnk.Edit1Change(Sender: TObject);
var
a,b,c:real;
res:real;
begin
if edit1.Focused then begin

if edit1.Text='' then
begin
  keybd_event(VK_BACK, 0, 0, 0);
  keybd_event(VK_BACK, 0, KEYEVENTF_KEYUP, 0);
end
else
a:=strtofloat(Edit1.Text);
b:=strtofloat(dbtext1.Field.AsString);
c:=strtofloat(dbtext2.Field.AsString);
res:=(a/b)*c;
edit2.Text:=floattostr(res);
end;

end;

procedure Ttnk.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then Key:=#0;
edit2.Clear;

end;

procedure Ttnk.Edit2Change(Sender: TObject);
var
a,b,c:real;
res:real;
begin
if edit2.Focused then begin

if edit2.Text='' then
begin
  keybd_event(VK_BACK, 0, 0, 0);
  keybd_event(VK_BACK, 0, KEYEVENTF_KEYUP, 0);
end
else
a:=strtofloat(Edit2.Text);
b:=strtofloat(dbtext1.Field.AsString);
c:=strtofloat(dbtext2.Field.AsString);
res:=(a/c)*b;

edit1.Text:=floattostr(res);
end;

end;

procedure Ttnk.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then Key:=#0;
edit1.Clear;
end;

procedure Ttnk.FormActivate(Sender: TObject);
begin
pagecontrol1.Visible:=false;
pagecontrol1.Visible:=true;
end;

procedure Ttnk.FormCreate(Sender: TObject);
begin
adoquery1.Active:=true;
end;

end.
