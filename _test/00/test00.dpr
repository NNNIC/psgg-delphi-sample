program test00;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

type StateManager = class
  private
    fCurState : string;
    fNextState: string;

  public
    constructor Create;
    procedure Update();
    procedure GotoState(const st : string);
    function  CheckState(const st : string) : boolean;

  protected
    procedure _execFunc(const st : string;  bFirst : boolean); virtual;

end;

constructor StateManager.Create;
begin
  fCurState  := '';
  fNextState := '';
end;

procedure StateManager.Update;
var bFirst : boolean;
begin
  bFirst := false;

  if fNextState <> '' then
  begin
   fCurState  := fNextState;
   fNextState := '';
   bFirst    := true;
  end;
  if fCurState <> '' then
  begin
    _execFunc(fCurState, bFirst);
  end;
end;

procedure StateManager.GotoState(const st: string);
begin
  fNextState := st;
end;
function StateManager.CheckState(const st: string) : boolean;
begin
  Result := st = fCurState;
end;
procedure StateManager._execFunc(const st: string; bFirst: Boolean);
begin
end;

type TestControl = class(StateManager)
    private
      procedure S_START(const bFirst : boolean);
      procedure S_END(const bFirst : boolean);
      procedure _execFunc(const st: string; bFirst : boolean); override;

    public
      procedure Start;
      function  IsEnd : boolean;
end;

procedure TestControl.S_START(const bFirst : boolean);
begin
  if bFirst=true then WriteLn('S_START');
  GotoState('S_END');
end;
procedure TestControl.S_END(const bFirst : boolean);
begin
  if bFirst=true then WriteLn('S_END');
end;

procedure TestControl._execFunc(const st: string; bFirst: Boolean);
label end_proc;
begin
  if st = 'S_START' then begin S_START(bFirst); goto end_proc;  end;
  if st = 'S_END'   then begin S_END(bFirst);   goto end_proc;  end;
  end_proc:
end;

procedure TestControl.Start;
begin
  GotoState('S_START');
end;

function TestControl.IsEnd;
begin
  Result := CheckState('S_END');
end;


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
