unit TestControlUnit;

interface

type TestControl = class

  // Manager declaration #begin
  private
    fCurState : string;
    fNextState: string;
    fNoWait   : boolean;

  private const MAX_CALL_STACK = 10;

  private
    fCallStack: array[0..9] of string;
    fCallStack_level : integer;

  public
    constructor Create;
    procedure Update();
    procedure GotoState(const st : string);
    function  CheckState(const st : string) : boolean;
    function  HasNextState : boolean;
    procedure NoWait;
    procedure GoSubState(const sub : string; const nex : string);
    procedure ReturnState;
  // Manager declaration #end


  // [STATEGO OUTPUT START] indent(2) $/^S_/->#declare$
  //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

  protected procedure S_0001(const bFirst : boolean);
  protected procedure S_0002(const bFirst : boolean);
  protected procedure S_0003(const bFirst : boolean);
  protected procedure S_0004(const bFirst : boolean);
  protected procedure S_0005(const bFirst : boolean);
  protected procedure S_0006(const bFirst : boolean);
  protected procedure S_0007(const bFirst : boolean);
  protected procedure S_0008(const bFirst : boolean);
  protected procedure S_0009(const bFirst : boolean);
  protected procedure S_0010(const bFirst : boolean);
  protected procedure S_0011(const bFirst : boolean);
  protected procedure S_END(const bFirst : boolean);
  protected procedure S_GSB000(const bFirst : boolean);
  protected procedure S_LOP000(const bFirst : boolean);
  protected procedure S_LOP000_cond____(const bFirst : boolean);
  protected procedure S_LOP000_next____(const bFirst : boolean);
  protected procedure S_PAS000(const bFirst : boolean);
  protected procedure S_RET000(const bFirst : boolean);
  protected procedure S_RET001(const bFirst : boolean);
  protected procedure S_SBS000(const bFirst : boolean);
  protected procedure S_SBS001(const bFirst : boolean);
  protected procedure S_START(const bFirst : boolean);


  // [STATEGO OUTPUT END]

  // For declare part of E_XXXX
  // [STATEGO OUTPUT START] indent(2) $/^E_/->#embdec$
  //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

  protected procedure hoge(const st: string);
  public fbYesNo : boolean;
  private fIndex : integer;


  // [STATEGO OUTPUT END]

  protected procedure _execFunc(const st: string; const bFirst : boolean);

  public procedure Start;
  public function  IsEnd : boolean;

end;

implementation

// Manager Implementation #begin
constructor TestControl.Create;
var
  i:integer;
begin
  fCurState  := '';
  fNextState := '';
  for i := 0 to MAX_CALL_STACK-1 do fCallStack[i] := '';
end;

procedure TestControl.Update;
var bFirst : boolean;
begin
  while true do
  begin
    fNoWait := false;
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
    if fNoWait = false  then
    begin
      break;
    end;
  end;
end;

procedure TestControl.GotoState(const st: string);
begin
  fNextState := st;
end;

function TestControl.CheckState(const st: string) : boolean;
begin
  Result := st = fCurState;
end;

function TestControl.HasNextState;
begin
  Result := fNextState <> '';
end;

procedure TestControl.NoWait;
begin
  fNoWait := true;
end;

procedure TestControl.GoSubState(const sub : string; const nex : string);
begin
  if fCallStack_level >= (MAX_CALL_STACK-1) then
  begin
    Writeln('CALL STACK OVER FLOW');
  end
  else begin
    fCallStack[fCallStack_level] := nex;
    fCallStack_level := fCallStack_level + 1;
    GotoState( sub );
  end;
end;

procedure TestControl.ReturnState;
begin
  if fCallStack_level <= 0 then
  begin
    Writeln('CALL STACK UNDER FLOW');
  end
  else begin
    fCallStack_level := fCallStack_level-1;
    GotoState( fCallStack[fCallStack_level] );
  end;
end;

// Manager Implementation #end


// [STATEGO OUTPUT START] indent(0) $/^S_/$
//             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

{
  S_0001
}
procedure TestControl.S_0001(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('Hello World!');
    end;
    if HasNextState() = false then begin
        GotoState('S_GSB000');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0002
}
procedure TestControl.S_0002(const bFirst : boolean);
begin
    if bFirst=true then begin
        hoge('S_0002');
    end;
    if HasNextState() = false then begin
        GotoState('S_0003');
    end;
    if HasNextState() = true then begin
        NoWait();
    end;
end;
{
  S_0003
}
procedure TestControl.S_0003(const bFirst : boolean);
var
    a : integer;
begin
    if bFirst=true then begin
        a:=3;
    end;
    if a=1 then begin
        GotoState('S_0004');
    end
    else if a=2 then begin
        GotoState('S_0006');
    end
    else begin
        GotoState('S_0005');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0004
}
procedure TestControl.S_0004(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0004');
    end;
    if HasNextState() = false then begin
        GotoState('S_END');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0005
}
procedure TestControl.S_0005(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0005');
    end;
    if HasNextState() = false then begin
        GotoState('S_0007');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0006
}
procedure TestControl.S_0006(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0006');
    end;
    if HasNextState() = false then begin
        GotoState('S_END');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0007
}
procedure TestControl.S_0007(const bFirst : boolean);
begin
    if bFirst=true then begin
        fbYesNo := True;
    end;
    if fbYesNo then begin
        GotoState('S_0008');
    end
    else begin
        GotoState('S_0009');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0008
}
procedure TestControl.S_0008(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0008');
    end;
    if HasNextState() = false then begin
        GotoState('S_END');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0009
}
procedure TestControl.S_0009(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('S_0009');
    end;
    if HasNextState() = false then begin
        GotoState('S_END');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0010
}
procedure TestControl.S_0010(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('It is in the subroutine.');
    end;
    if HasNextState() = false then begin
        GotoState('S_RET000');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_0011
}
procedure TestControl.S_0011(const bFirst : boolean);
begin
    if bFirst=true then begin
        WriteLn('It is in the subroutine.');
    end;
    if HasNextState() = false then begin
        GotoState('S_RET001');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_END
}
procedure TestControl.S_END(const bFirst : boolean);
begin
end;
{
  S_GSB000
}
procedure TestControl.S_GSB000(const bFirst : boolean);
begin
   GoSubState('S_SBS000', 'S_PAS000');
   NoWait();
end;
{
  S_LOP000
}
procedure TestControl.S_LOP000(const bFirst : boolean);
begin
    fIndex := 0;
    GotoState('S_LOP000_cond____');
    NoWait()
end;
procedure TestControl.S_LOP000_cond____(const bFirst : boolean);
begin
    if fIndex < 10 then
    begin
        GoSubState('S_SBS001','S_LOP000_next____');
    end
    else begin
        GotoState('S_END');
    end;
    NoWait()
end;
procedure TestControl.S_LOP000_next____(const bFirst : boolean);
begin
    fIndex := fIndex + 1;
    GotoState('S_LOP000_cond____');
    NoWait()
end;
{
  S_PAS000
}
procedure TestControl.S_PAS000(const bFirst : boolean);
begin
  GotoState('S_LOP000');
  NoWait();
end;
{
  S_RET000
}
procedure TestControl.S_RET000(const bFirst : boolean);
begin
   ReturnState();
   NoWait();
end;
{
  S_RET001
}
procedure TestControl.S_RET001(const bFirst : boolean);
begin
   ReturnState();
   NoWait();
end;
{
  S_SBS000
}
procedure TestControl.S_SBS000(const bFirst : boolean);
begin
    if HasNextState() = false then begin
        GotoState('S_0010');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_SBS001
}
procedure TestControl.S_SBS001(const bFirst : boolean);
begin
    if HasNextState() = false then begin
        GotoState('S_0011');
    end;
    if HasNextState() = true then begin
    end;
end;
{
  S_START
}
procedure TestControl.S_START(const bFirst : boolean);
begin
  GotoState('S_0001');
  NoWait();
end;


// [STATEGO OUTPUT END]

// For declare part of E_XXX
// [STATEGO OUTPUT START] indent(0) $/^E_/$
//             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

{
  E_0001
}
procedure TestControl.hoge(const st: string);
begin
    WriteLn('Hoge ! ' + st);
end;


// [STATEGO OUTPUT END]

procedure TestControl._execFunc(const st: string; const bFirst: Boolean);
label end_proc;
begin
    // [STATEGO OUTPUT START] indent(4) $/^S_/->#exec$
    //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

    if st = 'S_0001' then begin S_0001(bFirst); goto end_proc;  end;
    if st = 'S_0002' then begin S_0002(bFirst); goto end_proc;  end;
    if st = 'S_0003' then begin S_0003(bFirst); goto end_proc;  end;
    if st = 'S_0004' then begin S_0004(bFirst); goto end_proc;  end;
    if st = 'S_0005' then begin S_0005(bFirst); goto end_proc;  end;
    if st = 'S_0006' then begin S_0006(bFirst); goto end_proc;  end;
    if st = 'S_0007' then begin S_0007(bFirst); goto end_proc;  end;
    if st = 'S_0008' then begin S_0008(bFirst); goto end_proc;  end;
    if st = 'S_0009' then begin S_0009(bFirst); goto end_proc;  end;
    if st = 'S_0010' then begin S_0010(bFirst); goto end_proc;  end;
    if st = 'S_0011' then begin S_0011(bFirst); goto end_proc;  end;
    if st = 'S_END' then begin S_END(bFirst); goto end_proc;  end;
    if st = 'S_GSB000' then begin S_GSB000(bFirst); goto end_proc;  end;
    if st = 'S_LOP000' then begin S_LOP000(bFirst); goto end_proc;  end;
    if st = 'S_LOP000_cond____' then begin S_LOP000_cond____(bFirst); goto end_proc;  end;
    if st = 'S_LOP000_next____' then begin S_LOP000_next____(bFirst); goto end_proc;  end;
    if st = 'S_PAS000' then begin S_PAS000(bFirst); goto end_proc;  end;
    if st = 'S_RET000' then begin S_RET000(bFirst); goto end_proc;  end;
    if st = 'S_RET001' then begin S_RET001(bFirst); goto end_proc;  end;
    if st = 'S_SBS000' then begin S_SBS000(bFirst); goto end_proc;  end;
    if st = 'S_SBS001' then begin S_SBS001(bFirst); goto end_proc;  end;
    if st = 'S_START' then begin S_START(bFirst); goto end_proc;  end;


  // [STATEGO OUTPUT END]
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
