program ln;

var
  x, y, z, e, a: real;
  n: integer;

begin
  write('Введите x=');
  readln(x);
  if (x < 0) then write('x должен быть больше 1') else 
  begin
    write('Введите погрешность ');
    readln(e);
    n := 1;{по формуле}
    repeat
      z := 1;
      a := a + 1;
      for  i: integer := 1 to 2 * n - 1 do
      begin
        z := z * ((x - 1) / (x + 1));
        a := a + 1;
      end;
      y := y + z / (2 * n - 1);
      n := n + 1;
    until abs(y - log(x)) < e;
    writeln('Понадобилось ', a, ' итераций');
  end;
end.