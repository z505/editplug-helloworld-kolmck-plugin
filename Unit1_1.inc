{ KOL MCK } // Do not remove this line!

procedure NewForm1( var Result: PForm1; AParent: PControl );
begin

  {$IFDEF KOLCLASSES}
  Result := PForm1.Create;
  {$ELSE OBJECTS}
  New( Result, Create );
  {$ENDIF KOL CLASSES/OBJECTS}
  Result.Form := NewForm( AParent, 'Form1' ).SetPosition( 192, 146 );
  Applet :=  Result.Form;
  Result.Form.Add2AutoFree( Result );
    Result.Form.SetClientSize( 335, 286 );
    Result.Button1 := NewButton( Result.Form, 'Button1' ).SetPosition( 32, 120 ).SetSize( 225, 153 );
      Result.Button1.OnClick := Result.Button1Click;

end;

