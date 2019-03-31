program  TypeTriangle;

var
  a, b, c, x, y, z: real;

begin
  writeln('Введите длины сторон треугольника');
  readln(a, b, c);///по теореме косинусов найдем следующие выражения
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