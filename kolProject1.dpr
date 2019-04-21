{ KOL MCK } // Do not remove this line!
program kolProject1;

uses
KOL,
  Unit1 in 'Unit1.pas' {Form1};

//{$R *.res}

begin // PROGRAM START HERE -- Please do not remove this comment

{$IFDEF KOL_MCK} {$I kolProject1_0.inc} {$ELSE}

  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;

{$ENDIF}

end.
