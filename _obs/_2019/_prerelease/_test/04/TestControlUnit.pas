unit TestControlUnit;

interface

uses StateManagerUnit;

type TestControl = class(StateManager)
  private
    procedure _execFunc(const st: string; bFirst : boolean); virtual;

  public
    procedure Start; virtual;
    function  IsEnd : boolean; virtual;


end;

implementation

procedure TestControl._execFunc(const st: string; bFirst: Boolean);
begin
end;

procedure TestControl.Start;
begin
end;

function TestControl.IsEnd : boolean;
begin
  Result := True;
end;


end.
