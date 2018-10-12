program Project01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  StateManagerUnit in 'base\StateManagerUnit.pas',
  TestControl_createdUnit in 'TestControl_createdUnit.pas';

var sm : TestControl_created;
begin
  try
    writeln('Begin!');

    sm := TestControl_created.Create;
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
