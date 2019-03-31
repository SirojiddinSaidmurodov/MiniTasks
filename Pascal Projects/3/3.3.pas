var
  a, b, x, y: integer;
begin
  writeln('Введите а');
  readln(a);
  writeln('Введите b');
  readln(b);
  for x := -a to a do
    for y := -b to b do
      if  ((sqr(x) / sqr(a)) + (sqr(y) / sqr(b))) <= 1  then
      begin
        writeln('(', x, ':', y, ')');
      end;
end.