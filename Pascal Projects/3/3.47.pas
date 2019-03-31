var
  n: integer;
  e, x, f: real;

begin
  repeat
    write('Введите точность вычислений e>0 e=');
    readln(e);
  until e > 0;///дуракоустойчивость
  x := 1;
  writeln(x:0:16);
  n := 1;
  while x >= e do
  begin
    n := n + 1;
    x := 2 * (2/n);///заданная формула в рекуррентном виде
    writeln(x:0:16);
  end;
  writeln('n=', n);
end.
