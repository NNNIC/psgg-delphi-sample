//  psggConverterLib.dll converted from TestControl.xlsx. 
unit TestControl_createdUnit;

interface

uses TestControlUnit;

type TestControl_created = class(TestControl)
    private

      procedure S_START(const bFirst : boolean);
      procedure S_END(const bFirst : boolean);
      procedure S_HELLO_WORLD(const bFirst : boolean);
      procedure S_SELECT_YES_OR_NO(const bFirst : boolean);
      procedure S_YES(const bFirst : boolean);
      procedure S_NO(const bFirst : boolean);


    protected
      procedure _execFunc(const st: string; bFirst : boolean); override;

    public
      procedure Start;  override;
      function  IsEnd : boolean;  override;
end;

implementation


{
    S_START
}
procedure TestControl_created.S_START(const bFirst : boolean);
begin
    if bFirst=true then begin
    end;
    if HasNextState() = false then begin
        SetNextState('S_HELLO_WORLD');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_END
}
procedure TestControl_created.S_END(const bFirst : boolean);
begin
    if bFirst=true then begin
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_HELLO_WORLD
}
procedure TestControl_created.S_HELLO_WORLD(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('Hello World');
    end;
    if HasNextState() = false then begin
        SetNextState('S_SELECT_YES_OR_NO');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_SELECT_YES_OR_NO
}
procedure TestControl_created.S_SELECT_YES_OR_NO(const bFirst : boolean);
begin
    if bFirst=true then begin
        select_yes_no;
    end;
    br_YES('S_YES');
    br_NO('S_NO');
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_YES
}
procedure TestControl_created.S_YES(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('YES');
    end;
    if HasNextState() = false then begin
        SetNextState('S_END');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_NO
}
procedure TestControl_created.S_NO(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('NO');
    end;
    if HasNextState() = false then begin
        SetNextState('S_END');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;


procedure TestControl_created._execFunc(const st: string; bFirst: Boolean);
label end_proc;
begin

  if st = 'S_START' then begin S_START(bFirst); goto end_proc;  end;
  if st = 'S_END' then begin S_END(bFirst); goto end_proc;  end;
  if st = 'S_HELLO_WORLD' then begin S_HELLO_WORLD(bFirst); goto end_proc;  end;
  if st = 'S_SELECT_YES_OR_NO' then begin S_SELECT_YES_OR_NO(bFirst); goto end_proc;  end;
  if st = 'S_YES' then begin S_YES(bFirst); goto end_proc;  end;
  if st = 'S_NO' then begin S_NO(bFirst); goto end_proc;  end;

  end_proc:
end;

procedure TestControl_created.Start;
begin
  GotoState('S_START');
end;

function TestControl_created.IsEnd;
begin
  Result := CheckState('S_END');
end;


end.


