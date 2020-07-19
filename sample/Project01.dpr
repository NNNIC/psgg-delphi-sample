program Project01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  TestControlUnit  in 'TestControlUnit.pas';

var sm : TestControl;
begin
  try
    writeln('Begin!');

    sm := TestControl.Create;
    sm.Start;

    while sm.IsEnd = false do
    begin
      sm.Update();
    end;

    sm.Free;

    writeln('End!');

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
