program Jestyanshik;
var r,a,b,c,d:real;
begin
    read(r,a,b,c,d);
    {Сравним радиусы описаной окружности вокруг каждой комбимацию расположения прямоугольников с заданным радиусом. Если найдется хоть одна окружность меньшяя заданного радиуса, то прямоугольники можно вырезать}
     if r<sqrt(sqr(a)+(b+d)) and r<sqrt(sqr(c)+(b+d)) or
        r<sqrt(sqr(a)+(b+c)) and r<sqrt(sqr(d)+(b+c)) or
        r<sqrt(sqr(b)+(a+c)) and r<sqrt(sqr(d)+(a+c)) or
        r<sqrt(sqr(b)+(a+d)) and r<sqrt(sqr(c)+(a+d)) then writeln('Можно вырезать') else writeln('Невозможно вырезать');
end;