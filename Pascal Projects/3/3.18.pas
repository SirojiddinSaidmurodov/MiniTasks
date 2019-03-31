program П2;

var
  k: integer;
  y: real;

begin
  k := 2;
  y := 1;
  repeat
    begin
      y := y * (1 -(1/sqr(k)));
      k:=k+1;
    end;
  until abs((1/ 2) - y) <= 0.0001;
  writeln((k - 2), ' сомножителей');
  
end.