var
  n, g, k: integer;

begin
  write('n = '); readln(n);
  n := 2 * n;{общее количество лап}
  writeln('Гуси Кролики');
  for g := 0 to n div 2 do
    if (n - 2 * g) mod 4 = 0 then writeln(g:3, ((n - 2 * g) div 4):4);
end.
