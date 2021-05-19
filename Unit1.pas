unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, inifiles;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Y1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    J1: TMenuItem;
    Image1: TImage;
    N10: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    H1: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    procedure N4Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  pathini:string;
  ini:TINIFile;
implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.FormCreate(Sender: TObject);
begin
pathINI:=extractfilepath(application.ExeName)+'\config.ini';
ini:=TIniFile.Create(pathINI);
if ini.ReadString('Spider','Active','Ошибка чтения!')='true' then begin
alphablend:=true;
alphablendvalue:=100;
end;
if ini.ReadString('Spider','Active','Ошибка чтения!')='false' then begin
alphablend:=false;
end;
ini.Free;
end;

procedure TForm1.N10Click(Sender: TObject);
begin
tnk.ShowModal;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
pathINI:=extractfilepath(application.ExeName)+'\config.ini';
ini:=TIniFile.Create(pathINI);
if n15.Caption='Режим невидимки Вкл.' then begin
  n15.Caption:='Режим невидимки Откл.';

  form1.Repaint;
  end
  else
  n15.Caption:='Режим невидимки Вкл.';
  ini.WriteString('Spider','Active','false');
  ini.Free;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
incf.show;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
incf.show;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
form1.Close;
end;

end.
