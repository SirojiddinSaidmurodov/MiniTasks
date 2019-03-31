program IfTriangle;

var
  a, b, c: real;

begin
  writeln('Введите значения сторон треугольника');
  read(a, b, c);
  write('Такой трегольник ');
  if (a <= b + c) and (b <= a + c) and (c <= a + b) then
    if (a = b) and (a = c) then writeln('равносторонний')
    else 
    if ((a = b) or (a = c)) or ((a = c) or (c = b)) or ((a = b) or (b = c)) then writeln('равнобедренный ')
    else writeln('разносторонний')
  else writeln('не существует');
end.