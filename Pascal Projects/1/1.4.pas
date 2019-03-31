program TimeInterval;

var
  x, y, z, n, x1, y1, y2, x2, z1, z2, a, n1, n2: integer;

begin
  writeln('Введите начальное время:');
  write('часы:');
  readln(x1);
  write('минуты:');
  readln(y1);
  write('секунды:');
  readln(z1);
  writeln('Введите конечное время:');
  write('часы:');
  readln(x2);
  write('минуты:');
  readln(y2);
  write('секунды:');
  readln(z2);
  n1 := x1 * 3600 + y1 * 60 + z1;
  n2 := x2 * 3600 + y2 * 60 + z2;
  n := n2 - n1;
  x := n div 3600;
  a := n - x * 3600;
  y := a div 60;
  z := a - y * 60;
  writeln('Временной интервал:');
  writeln('часы:', x);
  writeln('минуты:', y);
  writeln('секунды:', z);
end.