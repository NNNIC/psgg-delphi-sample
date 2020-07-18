program Project01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  StateManagerUnit in 'base\StateManagerUnit.pas',
  TestControlUnit  in 'TestControlUnit.pas',
  TestControl_createdUnit in 'TestControl_createdUnit.pas';

var sm : StateManager;
begin
  try
    writeln('Begin!');

    sm := TestControl_created.Create as StateManager;
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
