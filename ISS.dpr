program ISS;



uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {incf},
  Unit3 in 'Unit3.pas' {tnk};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tincf, incf);
  Application.CreateForm(Ttnk, tnk);
  Application.Run;
end.
