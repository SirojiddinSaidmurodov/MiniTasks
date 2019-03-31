program THEbrick;

var
  r, s,t, a, b, c: real;

begin
  writeln('Введите r');
  read(r);
  writeln('Введите s');
  read(s);
  writeln('Введите t');
  read(t);
  writeln('Введите a');
  read(a);
  writeln('Введите b');
  read(b);
  writeln('Введите c');
  read(c);
   if (r > a) and (s > b)and(t>c) or (r > b) and (s > a)and(t>c) or (r > b) and (s > c)and(t>a) or (r > c) and (s > b)and(t>a) or (r > a) and (s > c)and(t>b) or (r > c) and (s > a)and(t>b) then writeln('Коробка помещается в посылку') else writeln('Коробка помещается в посылку');
  end.