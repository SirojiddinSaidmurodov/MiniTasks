program SightFromHight;

var
  h: real;

begin
  Write('Введите высоту h=');
  Read(h);
  Writeln('Гипотенуза равна: ', 2 * h);
  Writeln('Катеты равны:', h * Sqrt(2));
end.