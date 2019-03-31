program complexConverter;

var
  x, y, r, f: real;

begin
  write('Введите х в записи z=x+iy:');
  read(x);
  write('Введите y:');
  read(y);
  r := sqrt(x * x + y * y);
  f := arctan(y / x);
  write('z=', r, '(cos', f, ' + isin', f, ')');
end.