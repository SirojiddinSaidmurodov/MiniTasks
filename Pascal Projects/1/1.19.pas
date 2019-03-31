program parabola;
var
a,b,c:real;
begin 
Writeln('Введите a=');
Read(a);
Writeln('Введите b=');
Read(b);
Writeln('Введите c=');
Read(c);
Writeln('Координаты вершины:');
Writeln('x=',-1*(b/(2*a)));
Writeln('y=',c-(Sqr(b)/(4*a)));
end.