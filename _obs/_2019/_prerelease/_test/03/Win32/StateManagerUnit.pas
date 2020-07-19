unit StateManagerUnit;

interface

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

implementation

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



end.
