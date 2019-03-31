program root;

var
  x, y1, y2, e, i: real;{y1=y(i-1), y2=y(i), i=счетчик итераций}

begin
  write('Введите подкоренное число ');
  readln(x);
  y2 := x;///по формуле
 
  if x > 1 then 
  begin
  Write('Введите погрешность ');
  readln(e);
  i := 0;{т.к. итераций ещё не было}
    repeat
      y1 := y2;
      y2 := (y1 + (x / y1)) / 2;
      i := i + 1;
    until abs(y1 - y2) <= e;
    writeln(y2);
    writeln('Понадобилось ', i, ' итераций');
    write('Погрешность вычисления по формуле и реальным значением: ', (abs(y2 - sqrt(x))):1:20);
  end
  else writeln('Подкоренное число должно быть равно больше 1');
end.