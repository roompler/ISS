unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls;

type
  Tincf = class(TForm)
    IdHTTP1: TIdHTTP;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  incf: Tincf;

implementation

{$R *.dfm}

end.
