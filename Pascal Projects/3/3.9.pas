program Farm2Revolution;

var
  u, v, w, s, k, t, f, p, q, r, h: real;
  i :integer;

begin
  read(u, v, w, k, s, t, f, p, q, r, h);
  i := 0;///<<Нулевой день>>
  p:=p/100;///Перевод процентов в дроби
  q:=q/100;
  r:=r/100;
  h:=h/100;
  repeat
    begin
    i:=i+1;///Счетчик дней
    k:=k-k*p;{Расчет краж и гниений}
    s:=s-s*q;
    t:=t-t*r;
    f:=f-f*h;
    s:=s-u*k;{Расчет употребления продуктов коровами}
    t:=t-v*k;
    f:=f-w*k;
    end;
  until (s < (s-u*k-s*q)) or (t < (t-v*k-t*r)) or (f < (f-w*k-f*h));///Проверка на достаточность кормов для следующего дня
  Writeln('Спустя ',i,' дня(ей) коров нельзя будет кормить по полному рациону');
  If (s < (s-u*k-s*q)) then writeln('Первым кончится сено') else
    If (t < (t-v*k-t*r)) then writeln('Первым кончится силос') else
       If (f < (f-w*k-f*h)) then writeln('Первым кончится комбикорм');
end.