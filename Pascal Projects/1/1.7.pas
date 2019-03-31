program Selection;

var
  k, p, s, n, x: real;

begin
  Writeln('Введите массу опытных семян');
  Readln(k);
  Writeln('Сколько кг семян можно собрать за сезон, посеяв 1 кг семян?');
  Readln(p);
  Writeln('Введите норму высева семян в кг/га');
  Readln(n);
  Writeln('Введите площадь поля в гектарах, которое необходимо засеять в будущем');
  Readln(s);
  x := (Ln((n * s) / k) / Ln(p));
  if Frac(Ln((n * s) / k) / Ln(p)) > 0 then Writeln(Trunc(x) + 1) else Writeln(trunc(x));
end.