program П;

var
  k: integer;
  y, ind: real;

begin
  k := 1;
  y := 1;
  repeat
    begin
      if Odd(k) then ind := (-1) else ind := (1);
      y := y * (1 + ((ind) / (2 * k + 1)));
      k:=k+1;
    end;
  until abs((sqrt(2) / 2) - y) <= 0.000001;
  writeln((k - 1), ' сомножителей');
  
end.