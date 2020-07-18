unit TestControlUnit;

interface

type TestControl = class

  // Manager declaration #begin
  private
    fCurState : string;
    fNextState: string;
    fNoWait   : boolean;

  public
    constructor Create;
    procedure Update();
    procedure GotoState(const st : string);
    function  CheckState(const st : string) : boolean;

    function  HasNextState : boolean;
    procedure NoWait;
  // Manager declaration #end


  // [STATEGO OUTPUT START] indent(2) $/^S_/->#declare$
  //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

  protected procedure S_0002(const bFirst : boolean);
  protected procedure S_0003(const bFirst : boolean);
  protected procedure S_0004(const bFirst : boolean);
  protected procedure S_0005(const bFirst : boolean);
  protected procedure S_0006(const bFirst : boolean);
  protected procedure S_0007(const bFirst : boolean);
  protected procedure S_0008(const bFirst : boolean);
  protected procedure S_0009(const bFirst : boolean);
  protected procedure S_END(const bFirst : boolean);
  protected procedure S_START(const bFirst : boolean);


  // [STATEGO OUTPUT END]

  // For declare part of E_XXXX
  // [STATEGO OUTPUT START] indent(2) $/^E_/->#embdec$
  //             psggConverterLib.dll converted from psgg-file:..\doc\TestControl.psgg

  protected procedure hoge(const st: string);
  public fbYesNo : boolean;


  // [STATEGO OUTPUT END]

  protected procedure _execFunc(const st: string; bFirst : boolean);

  public procedure Start;
  public function  IsEnd : boolean;

end;

implementation

// Manager Implementation #begin
constructor TestControl.Create;
begin
  fCurState  := '';
  fNextState := '';
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

// Manager Implementation #end


// [STATEGO OUTPUT START] indent(0) $/^S_/$
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
    S_END
}
procedure TestControl.S_END(const bFirst : boolean);
begin
    if HasNextState() = true then begin
    end;
end;
{
    S_START
}
procedure TestControl.S_START(const bFirst : boolean);
begin
    if HasNextState() = false then begin
        GotoState('S_0002');
    end;
    if HasNextState() = true then begin
    end;
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

procedure TestControl._execFunc(const st: string; bFirst: Boolean);
label end_proc;
begin
    // [STATEGO OUTPUT START] indent(4) $/^S_/->#exec$
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
