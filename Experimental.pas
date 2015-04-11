program lat2;
var
 N,M,A,B : integer;
begin
 readln(N,M);
 if (N >=1) and (N <= 1000) and (M >= 1) and (M <= 1000) and ( N > M) then
  begin
  A:= N div M;
  B:= N mod M;
  writeln('masing-masing','',A);
  writeln('bersisa','',B);
  end;
 end.
