program TriangleInDecartsCoordinates;

var
  a, b, c, x, y, z, x1, x2, x3, y1, y2, y3: real;

begin
  writeln('Введите координаты точек (x,y):');
  writeln('A');
  readln(x1, y1);
  writeln('B');
  readln(x2, y2);
  writeln('C');
  readln(x3, y3);{Воспользуемся теоремой Пифагора и найдем длины сторон треугольника}
  a := sqrt(sqr(abs(x1 - x2)) + sqr(abs(y1 - y2)));
  b := sqrt(sqr(abs(x2 - x3)) + sqr(abs(y2 - y3)));
  c := sqrt(sqr(abs(x1 - x3)) + sqr(abs(y1 - y3)));{далее используем программу с задания 2.2}
  x := (sqr(b) + sqr(c) - sqr(a));
  y := (sqr(a) + sqr(b) - sqr(c));
  z := (sqr(a) + sqr(c) - sqr(b));
  if (a+b>c) and (a+c>b) and (b+c>a) then
   begin
     if (x < 0) or (y < 0) or (z < 0) then writeln('Треугольник тупоугольный') else 
     if (x = 0) or (y = 0) or (z = 0) then writeln('Треугольник прямоугольный') else 
     if (x > 0) and (y > 0) and (z > 0) then writeln('Треугольник остроугольный');
   end
  else writeln('Такого треугольника не существует');
end.