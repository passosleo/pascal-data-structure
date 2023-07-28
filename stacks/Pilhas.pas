unit Pilhas;
interface

  const MAX = 50;
  type  Elem = Integer;
        Pilha = array[0..MAX] of Elem;      

  procedure Init(var P:Pilha);

  function IsEmpty(var P:Pilha): boolean;

  function IsFull(var P:Pilha): boolean;

  procedure Push(var P:Pilha; x:Elem);

  function Pop(var P:Pilha): Elem;

  function Top(var P:Pilha): Elem;

implementation

  procedure Init(var P:Pilha);
  begin
    P[0] := 0;
  end;

  function IsEmpty(var P:Pilha): boolean;
  begin
    if P[0]=0 then
      IsEmpty := true
    else
      IsEmpty := false;
  end;

  function IsFull(var P:Pilha): boolean;
  begin
    if P[0]=MAX then
      IsFull := true
    else
      IsFull := false;
  end;

  procedure Push(var P:Pilha; x:Elem);
  begin
    if not IsFull(P) then
      begin
        P[0] := P[0] + 1;
        P[P[0]] := x;
      end
    else
      writeln('Stack Overflow');
  end;

  function Pop(var P:Pilha): Elem;
  begin
    if not IsEmpty(P) then
      begin
        Pop := P[P[0]];
        P[0] := P[0] -1;
      end
    else
      writeln('Stack Underflow');
  end;

  function Top(var P:Pilha): Elem;
  begin
    if not IsEmpty(P) then
      Top := P[P[0]]
    else
      writeln('Stack Underflow');
  end;

end.
