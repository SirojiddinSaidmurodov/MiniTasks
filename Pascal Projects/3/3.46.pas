var
  i, n: integer;
  x,sum: real;

begin
  writeln('Введите числа n и x ');
  readln(n, x);
  for i := 1 to n do
    x := sin(x);{в рекуррентом соотношении: sin sin sin... sin x}
    sum:=sum+x;
  writeln('Значение данного выражения: ', sum);
end.