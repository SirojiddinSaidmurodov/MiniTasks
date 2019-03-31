program Surface;

var
  a, b, a2, b2: real;
  n: integer;

begin
  write('Введите n ');
  readln(n);
  write('Введите a и b ');
  readln(a, b);
  for i: integer := 1 to n do
  begin
    writeln('Введите габариты следующего прямоугольника');
    read(a2, b2);
    if (a > a2) then a := a2;///Пересечение равно наименьшей стороне
    if (b > b2) then b := b2;
    writeln('Площадь пересечения ', a * b);
  end;
end.