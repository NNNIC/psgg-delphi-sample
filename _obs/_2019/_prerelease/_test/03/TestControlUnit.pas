unit TestControlUnit;

interface

uses StateManagerUnit;

type TestControl = class(StateManager)
    private
      procedure _execFunc(const st: string; bFirst : boolean); virtual;

end;

implementation

procedure TestControl._execFunc(const st: string; bFirst: Boolean);
begin
end;

end.
