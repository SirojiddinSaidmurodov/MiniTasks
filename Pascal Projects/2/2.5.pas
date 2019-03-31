program ABCD;

var
  x1, x2, x3, x4, y1, y2, y3, y4, a, b, c, d, e, f, p1, p2, p3, p4, u, v: real;

begin
  writeln('Введите координаты вершин четырехугольника');
  writeln('A');
  readln(x1, y1);
  writeln('B');
  readln(x2, y2);
  writeln('C');
  readln(x3, y3);
  writeln('D');
  readln(x4, y4);
  a := sqrt(sqr(abs(x1 - x2)) + sqr(abs(y1 - y2)));
  b := sqrt(sqr(abs(x2 - x3)) + sqr(abs(y2 - y3)));
  c := sqrt(sqr(abs(x3 - x4)) + sqr(abs(y3 - y4)));
  d := sqrt(sqr(abs(x4 - x1)) + sqr(abs(y4 - y1)));
  e := sqrt(sqr(abs(x4 - x2)) + sqr(abs(y4 - y2)));
  f := sqrt(sqr(abs(x1 - x3)) + sqr(abs(y1 - y3)));
  p1 := (a + d + e) / 2;
  p2 := (b + c + e) / 2;
  p3 := (d + e + f) / 2;
  p4 := (a + b + f) / 2;
  u := sqrt(p1 * (p1 - a) * (p1 - d) * (p1 - e)) + sqrt(p2 * (p2 - a) * (p2 - d) * (p2 - e));
  v := sqrt(p3 * (p3 - f) * (p3 - d) * (p3 - e)) + sqrt(p4 * (p4 - a) * (p4 - b) * (p4 - f));
  if u = v then writeln('Выпуклый') else writeln('Вогнутый');
end.