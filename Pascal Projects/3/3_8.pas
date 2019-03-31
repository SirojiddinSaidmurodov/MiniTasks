program N3_8;

uses crt;

var
  V, x,
  alfa, betta: real;
  i, n: integer;

begin
  write('Введите угол : '); 
  readln(alfa);
  alfa := alfa * pi / 180;    { переводим градусы в радианны }
  
  write('Введите начальную скорость : '); 
  readln(v);
  write('Введите бетту (коэффициент изменения кин. энергии) : ');
  readln(betta);
  write('Введите кол. абсцисс, которых нужно найти : '); 
  readln(n);
  
  for i := 1 to n do
  begin
    x := x + v * cos(alfa);             { находим абсциссы }
    v := sqrt(v / betta);
    writeln(i, '-ая абсцисса : ', x:0:3);
  end;
end.