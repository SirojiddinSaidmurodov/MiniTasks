program BusShedule;

var
  bH, bM, b, eH, eM, e, Ma, O: integer;///b-начало e-каонец *H-час *M-минут Ma-маршрут O-отдых

begin
  write('Введите начальный час ');
  readln(bH);
  write('Введите начальные минуты ');
  readln(bM);
  write('Введите конечный час ');
  readln(eH);
  write('Введите конечные минуты ');
  readln(eM);
  write('Введите протяженность маршрута в минутах ');
  readln(Ma);
  write('Введите время отдыха в конечных остановках в минутах ');
  readln(O);
  b := bH * 60 + bM;
  e := eH * 60 + eM;
  repeat
    begin
      writeln(b div 60,':', b mod 60);
      b:=b+Ma+O;
    end;
  until b > e;
end.