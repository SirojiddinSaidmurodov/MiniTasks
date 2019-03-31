var
  i, n, np, mp, mnp, m: integer;
  c: real;

begin
  np := 1; mp := 1; mnp := 1;
  writeln('Введите числа n и m');readln(n, m);
  for i := 1 to n do
    np := np * i;
  for i := 1 to m do
    mp := mp * i;
  for i := 1 to (m - n) do
    mnp := mnp * i;
  c := mp / (np * mnp);
  writeln('Число сочетаний по общей формуле: ', c);
end.