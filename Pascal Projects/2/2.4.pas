Program SolvingSystem4Triangle;
var 
x,y,z,a,b,c:real;
begin
readln(a,b,c);///методом алгебраического сложения решим систему уравнений и получим формулы
x:=(a-b+c)/2;
y:=(a-c+b)/2;
z:=(c-a+b)/2;
if (x>0) and (y>0) and (z>0)then
begin
writeln(a,'=',x,'+',y);
writeln(b,'=',y,'+',z);
writeln(c,'=',x,'+',z);
end
else writeln('Такого треугольника не существует');
end.