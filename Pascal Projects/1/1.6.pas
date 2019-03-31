program commerce;

var
  k, s, m, y, m1: integer;
  n, p, p1: real;

begin
  write('Введите стартовый капитал ');
  read(k);
  write('Введите ежемесячный процент дохода ');
  read(p);
  write('Введите стоимость желаемого магазина ');
  read(s);
  p1 := p / 100 + 1;//переводим процент в дробную форму
  n := (ln(s / k)) / (ln(p1));{k*p1^n=s => n-число месяцев => n=логарифм числа s/k по основанию p1}
  m1:=trunc(n);
  if frac(n) > 0 then m := m1 + 1 else m:=m1;
  write(m div 12,' лет, ',m mod 12,' месяцев ')
end.