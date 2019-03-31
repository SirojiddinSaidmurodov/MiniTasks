program Kratnoe;

var
  k, l, m: integer;

begin
  read(k, l, m);
  if (k mod l = 0) or (l mod k = 0) then write('k и l') else
  if (k mod m = 0) or (m mod k = 0) then write('k и m') else
  if (m mod l = 0) or (l mod m = 0) then write('m и l') else
    writeln('Нет кратных пар');
end.