unit TestControlUnit;

interface

uses StateManagerUnit;

type TestControl = class(StateManager)

  protected

    fbYesNo : boolean;

    procedure br_YES(const st: string);
    procedure br_NO(const st: string);

    // [SYN-G-GEN OUTPUT START] indent(4) $/^S_/->#declare$
    procedure S_START(const bFirst : boolean);
    procedure S_END(const bFirst : boolean);
    // [SYN-G-GEN OUTPUT END]

    procedure _execFunc(const st: string; bFirst : boolean); override;

  public
    procedure Start; override;
    function  IsEnd : boolean; override;

end;

implementation

procedure TestControl.br_YES(const st: string);
begin
    if HasNextState() = false then begin
        if fbYesNo = true then SetNextState(st);
    end;
end;

procedure TestControl.br_NO(const st: string);
begin
    if HasNextState() = false then begin
        if fbYesNo = false then SetNextState(st);
    end;
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


end.
