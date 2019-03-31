program THEbrick;

var
  r, s, a, b, c: real;

begin
  writeln('Введите r');
  read(r);
  writeln('Введите s');
  read(s);
  writeln('Введите a');
  read(a);
  writeln('Введите b');
  read(b);
  writeln('Введите c');
  read(c);
  if (r > a) and (s > b) or (r > b) and (s > a) or (r > b) and (s > c) or (r > c) and (s > b) or (r > a) and (s > c) or (r > c) and (s > a) then writeln('Кирпич пройдет через отверстие')
  else writeln('Кирпич не пройдет через отверстие');
end.