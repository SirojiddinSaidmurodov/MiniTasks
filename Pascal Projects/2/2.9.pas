program RombAndSphere;

var
  r, p, q: real;

begin
  writeln('Введите r,p,q:');
  readln(r, p, q);
  {радиус шара должен быть меньше радиуса вписанной окружности}
  if r < (p * q) / sqrt(sqr(p / 2) + sqr(q / 2)) then writeln('Шар пройдет через ромбообразное отверстие') else writeln('Шар не пройдет через ромбообразное отверстие');
end.