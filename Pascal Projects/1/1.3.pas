program ABS;

var
  a, b, c, a1, b1, c1, d1: integer;
  d: real;

begin
  write('Введите целое число дюймов:');
  read(a);
  a1 := a * 254;
  b := a1 div 10000;
  b1 := a1 - b * 10000;
  c := b1 div 100;
  d1 := b1 - c * 100;
  d := d1 / 10;
  write(a, ' дюйм = ');
  write(b, ' м ');
  write(c, ' см ');
  write(d, ' мм');
end.