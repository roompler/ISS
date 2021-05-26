unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Menus;

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
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    Label5: TLabel;
    Label6: TLabel;
    DBText8: TDBText;
    Label7: TLabel;
    Label8: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    DBMemo2: TDBMemo;
    Button3: TButton;
    Button4: TButton;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    d1: TMenuItem;
    PopupMenu2: TPopupMenu;
    E1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure d1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure PopupMenu2Change(Sender: TObject; Source: TMenuItem;
      Rebuild: Boolean);
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

procedure Ttnk.d1Click(Sender: TObject);
var
i:integer;
a,j,s:string;
begin
edit1.Clear;
edit2.Clear;
j:=dbgrid1.DataSource.DataSet.FieldByName('fav').AsString;
s:=dbgrid1.DataSource.DataSet.FieldByName('tnk').AsString;
a:=dbgrid1.DataSource.DataSet.Fields.Fields[i].Value;

  if j='yes' then begin
  adoquery2.SQL.Clear;
  adoquery2.SQL.Add('update TNK set fav="no" where id='+a);
  adoquery2.ExecSQL;
  adoquery1.Close;
  adoquery1.Open;
  ShowMessage('ТНК: '+s+' Удалена из избранного');
  end;
  if j='no' then begin
  adoquery2.SQL.Clear;
  adoquery2.SQL.Add('update TNK set fav="yes" where id='+a);
  adoquery2.ExecSQL;
  adoquery1.Close;
  adoquery1.Open;
  ShowMessage('ТНК: '+s+' Добавлена в избранное');
  end;



end;

procedure Ttnk.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
bitmap:TBitmap;
fixRect:TRect;
bmpWidth:integer;
imgIndex:integer;
a:string;
begin
a:=dbgrid1.DataSource.DataSet.FieldByName('fav').AsString;
fixRect := Rect;
// настройка поля 'LastName'
if Column.FieldName='favorite' then
  begin
  //получение требуемого изображения
  if a='yes' then
      imgIndex := 0
    else if a='no' then
      imgIndex := 1;
  bitmap := TBitmap.Create;
    try
      //получаем изображение из ImageList
      //(используем значение поля "Salary")
      ImageList1.GetBitmap(imgIndex, bitmap);
      //Установить размеры изображения
      bmpWidth := (Rect.Bottom - Rect.Top);
      fixRect.Right := Rect.Left + bmpWidth;
      //рисуем изображение
      DBGrid1.Canvas.StretchDraw(fixRect, bitmap);
    finally
      bitmap.Free;
    end;
  end;
end;

procedure Ttnk.DBGrid2CellClick(Column: TColumn);
begin
edit3.Clear;
edit4.Clear;
end;

procedure Ttnk.E1Click(Sender: TObject);
var
i:integer;
a,j,s:string;
begin
edit3.Clear;
edit4.Clear;
j:=dbgrid2.DataSource.DataSet.FieldByName('fav').AsString;
s:=dbgrid2.DataSource.DataSet.FieldByName('tnk').AsString;
a:=dbgrid2.DataSource.DataSet.Fields.Fields[i].Value;

  if j='yes' then begin
  adoquery2.SQL.Clear;
  adoquery2.SQL.Add('update TNK set fav="no" where id='+a);
  adoquery2.ExecSQL;
  adoquery3.Close;
  adoquery3.Open;
  ShowMessage('ТНК: '+s+' Удалена из избранного');
  end;
  if j='no' then begin
  adoquery2.SQL.Clear;
  adoquery2.SQL.Add('update TNK set fav="yes" where id='+a);
  adoquery2.ExecSQL;
  adoquery3.Close;
  adoquery3.Open;
  ShowMessage('ТНК: '+s+' Добавлена в избранное');
  end;

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

procedure Ttnk.Edit3Change(Sender: TObject);
var
a,b,c:real;
res:real;
begin
if edit3.Focused then begin

if edit3.Text='' then
begin
  keybd_event(VK_BACK, 0, 0, 0);
  keybd_event(VK_BACK, 0, KEYEVENTF_KEYUP, 0);
end
else
a:=strtofloat(Edit3.Text);
b:=strtofloat(dbtext3.Field.AsString);
c:=strtofloat(dbtext4.Field.AsString);
res:=(a/b)*c;
edit4.Text:=floattostr(res);
end;
end;

procedure Ttnk.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then Key:=#0;
edit4.Clear;
end;

procedure Ttnk.Edit4Change(Sender: TObject);
var
a,b,c:real;
res:real;
begin
if edit4.Focused then begin

if edit4.Text='' then
begin
  keybd_event(VK_BACK, 0, 0, 0);
  keybd_event(VK_BACK, 0, KEYEVENTF_KEYUP, 0);
end
else
a:=strtofloat(Edit4.Text);
b:=strtofloat(dbtext3.Field.AsString);
c:=strtofloat(dbtext4.Field.AsString);
res:=(a/c)*b;
edit3.Text:=floattostr(res);
end;

end;

procedure Ttnk.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
If not (Key in ['0'..'9', #8]) then Key:=#0;
edit3.Clear;
end;

procedure Ttnk.FormActivate(Sender: TObject);
var
a:string;
begin
pagecontrol1.Visible:=false;
pagecontrol1.Visible:=true;
end;

procedure Ttnk.FormCreate(Sender: TObject);
begin
adoquery1.Active:=true;
adoquery3.Active:=true;
end;

procedure Ttnk.PageControl1Change(Sender: TObject);
begin
adoquery1.Active:=false;
adoquery3.Active:=false;
adoquery1.Active:=true;
adoquery3.Active:=true;
end;

procedure Ttnk.PopupMenu2Change(Sender: TObject; Source: TMenuItem;
  Rebuild: Boolean);
begin
if tnk.dbgrid2.DataSource.DataSet.IsEmpty=true then E1.Visible:=false;
if tnk.dbgrid2.DataSource.DataSet.IsEmpty=false then E1.Visible:=true;

end;

end.
