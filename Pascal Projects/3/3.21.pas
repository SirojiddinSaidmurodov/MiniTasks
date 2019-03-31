program root3;

var
  x, y, a, e, i: real;{x=x(n), y=x(n+1), i=счетчик итераций}

begin
  write('Введите подкоренное число ');
  readln(a);
  y := a;///по формуле
  Write('Введите погрешность');
  readln(e);
  i := 0;{т.к. итераций ещё не было}
  repeat
    x := y;
    y := ((x + 2 * sqrt(a / x)) / 3);
    i:=i+1;
  until abs(y - x) <= e;
  writeln(y);
  write('Понадобилось ', i, ' итераций')
end.