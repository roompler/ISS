unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, sButton, sMemo, sEdit,
  sLabel;

type
  Tincf = class(TForm)
    sEdit1: TsEdit;
    sMemo1: TsMemo;
    sButton1: TsButton;
    sButton2: TsButton;
    IdHTTP1: TIdHTTP;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sEdit4: TsEdit;
    sButton3: TsButton;
    sLabel1: TsLabel;
    sEdit5: TsEdit;
    sLabel2: TsLabel;
    procedure sButton1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  incf: Tincf;

implementation

{$R *.dfm}

procedure Tincf.sButton1Click(Sender: TObject);
var st:string;
begin
SMemo1.Lines.Clear;
st:=IdHTTP1.Get(SEdit1.Text);
Smemo1.Lines.Add(st);

end;

procedure Tincf.sButton2Click(Sender: TObject);
var
post:Tstringlist;
result:string;
begin
post:=TStringList.Create;
idhttp1.HandleRedirects:=true;
try
post.Add('allowinsubframe=false');
post.Add('mobile=false');
post.Add('username='+sedit2.text);
post.Add('password='+sedit3.text);
post.Add('login=jsp');
post.Add('loginstamp='+sedit4.text);
post.Add('langcode=RU');
 result:=idhttp1.Post(sedit1.Text,post);

if Pos('Выход ALT+S',result)>0 then MessageDLG('АВТОРИЗАЦИЯ ПРОШЛА УСПЕШНО',mtInformation,[mbOk],0)
else
MessageDLG('ошибка авторизации',mtInformation,[mbOk],0);
 except
  post.Free;
end;

end;

procedure Tincf.sButton3Click(Sender: TObject);
var st:string;
begin
SMemo1.Lines.Clear;
st:=IdHTTP1.Get('http://loki.gvc.oao.rzd/maximo/ui/?event=loadapp&value=incid_rzd&uisessionid='+SEdit5.Text);
Smemo1.Lines.Add(st);

end;

end.
