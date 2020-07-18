unit TestControlUnit;

interface

uses StateManagerUnit;

type TestControl = class(StateManager)

  protected
    fbYesNo : boolean;
    procedure br_YES(const st: string);
    procedure br_NO(const st: string);

    // [SYN-G-GEN OUTPUT START] indent(4) $/^S_/->#declare$
    //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

    procedure S_0002(const bFirst : boolean);
    procedure S_0003(const bFirst : boolean);
    procedure S_0004(const bFirst : boolean);
    procedure S_0005(const bFirst : boolean);
    procedure S_0006(const bFirst : boolean);
    procedure S_0007(const bFirst : boolean);
    procedure S_0008(const bFirst : boolean);
    procedure S_0009(const bFirst : boolean);
    procedure S_END(const bFirst : boolean);
    procedure S_START(const bFirst : boolean);


    // [SYN-G-GEN OUTPUT END]

    procedure _execFunc(const st: string; bFirst : boolean); override;


    // For declare part of E_XXXX
    // [SYN-G-GEN OUTPUT START] indent(4) $/^E_/->#embdec$
    //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

    procedure hoge(const st: string);

    // [SYN-G-GEN OUTPUT END]

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

// [SYN-G-GEN OUTPUT START] indent(0) $/^S_/$
//             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

{
    S_0002
}
procedure TestControl.S_0002(const bFirst : boolean);
begin
    if bFirst=true then begin
        hoge('S_0002');
    end;
    if HasNextState() = false then begin
        SetNextState('S_0003');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0003
    new state
}
procedure TestControl.S_0003(const bFirst : boolean);
var
    a : integer;
begin
    if bFirst=true then begin
        a:=3;
    end;
    if a=1 then begin
        SetNextState('S_0004');
    end
    else if a=2 then begin
        SetNextState('S_0006');
    end
    else begin
        SetNextState('S_0005');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0004
    new state
}
procedure TestControl.S_0004(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0004');
    end;
    if HasNextState() = false then begin
        SetNextState('S_END');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0005
    new state
}
procedure TestControl.S_0005(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0005');
    end;
    if HasNextState() = false then begin
        SetNextState('S_0007');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0006
    new state
}
procedure TestControl.S_0006(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0006');
    end;
    if HasNextState() = false then begin
        SetNextState('S_END');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0007
    new state
}
procedure TestControl.S_0007(const bFirst : boolean);
begin
    if bFirst=true then begin
        fbYesNo := True;
    end;
    br_YES('S_0008');
    br_NO('S_0009');
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0008
    new state
}
procedure TestControl.S_0008(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0008');
    end;
    if HasNextState() = false then begin
        SetNextState('S_END');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_0009
    new state
}
procedure TestControl.S_0009(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0009');
    end;
    if HasNextState() = false then begin
        SetNextState('S_END');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_END
}
procedure TestControl.S_END(const bFirst : boolean);
begin
    if HasNextState() = true then begin
        GoNextState();
    end;
end;
{
    S_START
}
procedure TestControl.S_START(const bFirst : boolean);
begin
    if HasNextState() = false then begin
        SetNextState('S_0002');
    end;
    if HasNextState() = true then begin
        GoNextState();
    end;
end;


// [SYN-G-GEN OUTPUT END]

// For declare part of E_XXX
// [SYN-G-GEN OUTPUT START] indent(0) $/^E_/$
//             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

{
    E_0001
}
// procedure hoge(const st: string);
procedure TestControl.hoge(const st: string);
begin
    WriteLn('Hoge ! ' + st);
end;


// [SYN-G-GEN OUTPUT END]

procedure TestControl._execFunc(const st: string; bFirst: Boolean);
label end_proc;
begin
  // [SYN-G-GEN OUTPUT START] indent(0) $/^S_/->#exec$
//             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

if st = 'S_0002' then begin S_0002(bFirst); goto end_proc;  end;
if st = 'S_0003' then begin S_0003(bFirst); goto end_proc;  end;
if st = 'S_0004' then begin S_0004(bFirst); goto end_proc;  end;
if st = 'S_0005' then begin S_0005(bFirst); goto end_proc;  end;
if st = 'S_0006' then begin S_0006(bFirst); goto end_proc;  end;
if st = 'S_0007' then begin S_0007(bFirst); goto end_proc;  end;
if st = 'S_0008' then begin S_0008(bFirst); goto end_proc;  end;
if st = 'S_0009' then begin S_0009(bFirst); goto end_proc;  end;
if st = 'S_END' then begin S_END(bFirst); goto end_proc;  end;
if st = 'S_START' then begin S_START(bFirst); goto end_proc;  end;


  // [SYN-G-GEN OUTPUT END]
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
