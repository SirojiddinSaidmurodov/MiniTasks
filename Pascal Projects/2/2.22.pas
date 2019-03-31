program VeselayaFerma;
var s,t,f,k,u,v,w,x,y,z:integer;
begin
writeln('Введите s');
read(s);
writeln('Введите t');
read(t);
writeln('Введите f');
read(f);
writeln('Введите k');
read(k);
writeln('Введите u');
read(u);
writeln('Введите v');
read(v);
writeln('Введите w');
read(w);
{конвертируем значения s,t,f в килограммы}
s:=s*100;
t:=t*1000;
f:=f*50;
{расчитаем на сколько дней хватит каждого из видов корма}
x:=s div (u*k);
y:=t div (v*k);
z:=f div (w*k);
{сравним между собой значения дней}
if (x>y)and(x>z) then writeln(x,' дней осталось, первым кончится сено') else
if (y>x)and(y>z) then writeln(y,' дней осталось, первым кончится силос') else
if (z>x)and(z>y) then writeln(z,' дней осталось, первым кончится комбикорм');
end.