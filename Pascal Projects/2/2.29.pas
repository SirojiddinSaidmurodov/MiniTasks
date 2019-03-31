program age;

var
  n: integer;

begin
  read(n);
  if (n mod 10 > 1) and (n mod 10 < 5) and ((n < 12) or (n > 14)) then write('мне ', n, ' года') else
  if (n mod 10 = 1) then writeln('мне ', n, ' год') else write('мне ', n, ' лет');
end.