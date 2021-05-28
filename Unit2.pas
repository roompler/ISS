unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.CheckLst;

type
  Trz = class(TForm)
    DBMemo1: TDBMemo;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    CheckListBox1: TCheckListBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rz: Trz;

implementation

{$R *.dfm}

uses Unit3;

procedure Trz.FormCreate(Sender: TObject);
begin
While not ADOQuery1.Eof do     //И переписываем все значения в соответствии с фильтром
  begin
     CheckListBox1.Items.Add(ADOQuery1.Fields[0].AsString);
     ADOQuery1.Next;
  end;
end;

end.
