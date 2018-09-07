unit TestControlUnit;

interface

uses StateManagerUnit;

type TestControl = class(StateManager)
    private
      procedure S_START(const bFirst : boolean);
      procedure S_END(const bFirst : boolean);
      procedure _execFunc(const st: string; bFirst : boolean); override;

    public
      procedure Start;
      function  IsEnd : boolean;
end;

implementation

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


end.
