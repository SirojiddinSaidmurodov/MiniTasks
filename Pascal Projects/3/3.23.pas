﻿program CurrentAverege;
var
s1,s2,n,x:real;
begin
s1:=0;

repeat
readln(x);///текущее число
s2:=(s1*n + x)/(n+1);///преобразованная рекуррентная формула вычисления среднего значения
n:=n+1;///увеличение числа слагаемых
writeln('ср: ',s2);
s1:=s2;///метка текущего среднего как предыдущее для следующей итерации
until n<0;///цикл длится бесконечно
end.