{ KOL MCK } // Do not remove this line!
{$DEFINE KOL_MCK}
unit Unit1;

interface

{$IFDEF KOL_MCK}
uses Windows, Messages, KOL {$IFNDEF KOL_MCK}, mirror, Classes, Controls, mckCtrls, mckObjs, Graphics {$ENDIF (place your units here->)};
{$ELSE}
{$I uses.inc}
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;
{$ENDIF}

type
  {$IFDEF KOL_MCK}
  {$I MCKfakeClasses.inc}
  {$IFDEF KOLCLASSES} {$I TForm1class.inc} {$ELSE OBJECTS} PForm1 = ^TForm1; {$ENDIF CLASSES/OBJECTS}
  {$IFDEF KOLCLASSES}{$I TForm1.inc}{$ELSE} TForm1 = object(TObj) {$ENDIF}
    Form: PControl;
  {$ELSE not_KOL_MCK}
  TForm1 = class(TForm)
  {$ENDIF KOL_MCK}
    KOLProject1: TKOLProject;
    KOLForm1: TKOLForm;
    Button1: TKOLButton;
    procedure Button1Click(Sender: PObj);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1 {$IFDEF KOL_MCK} : PForm1 {$ELSE} : TForm1 {$ENDIF} ;

{$IFDEF KOL_MCK}
procedure NewForm1( var Result: PForm1; AParent: PControl );
{$ENDIF}

implementation

{$IFNDEF KOL_MCK} {$R *.DFM} {$ENDIF}

{$IFDEF KOL_MCK}
{$I Unit1_1.inc}
{$ENDIF}

procedure TForm1.Button1Click(Sender: PObj);
begin
  ShowMessage('Hello from KOL/MCK app');
end;

end.



