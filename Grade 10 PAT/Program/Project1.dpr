program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmBoard};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmBoard, frmBoard);
  Application.Run;
end.
