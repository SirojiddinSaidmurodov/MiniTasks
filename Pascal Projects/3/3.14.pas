program epsilon2;

var
  y, Eps: real;
  n: integer;

begin
  n := 0;
  
  read(Eps);
  repeat
    n := n + 1;
    y := 1;
    for i: integer := 1 to n do
      y := y * (1 + (1 / n));
      
  until(Abs(exp(1) - y) < Eps);
  writeln(n);
end.