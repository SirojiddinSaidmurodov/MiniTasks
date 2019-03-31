program Angle;

var
  a, b, c: integer;

begin
  writeln('Введите число градусов');
  readln(a);
  writeln('Введите число минут');
  readln(b);
  writeln('Введите число секунд');
  readln(c);
  write(a, ' градусов ', b, ' минут ', c, ' секунд равно ');
  write(a * pi / 180 + b * pi / 10800 + c * pi / 64800, ' радиан');
end.