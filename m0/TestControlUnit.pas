unit TestControlUnit;

interface

uses StateManagerUnit,System.DateUtils,SysUtils;

type TestControl = class(StateManager)

  protected
    fbYesNo : boolean;
    procedure br_YES(const st: string);
    procedure br_NO(const st: string);

    procedure set_yes_or_no;
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

{ write your code here!}

procedure TestControl.set_yes_or_no;
var i : integer;
begin
  i := MilliSecondOf( Now );

  WriteLn(i);

  fbYesNo := (i mod 2) = 0;

end;


end.
