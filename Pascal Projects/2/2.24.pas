program chess1;

var
  x1, x2, x3, y1, y2, y3, a1, b1: integer;

begin
  read(x1, y1, x2, y2, x3, y3, a1, b1);
  if 
  (x1 > 0) and (x1 < 9) and
  (y1 > 0) and (y1 < 9) and
  (x2 > 0) and (x2 < 9) and
  (y2 > 0) and (y2 < 9) and
  (x3 > 0) and (x3 < 9) and
  (y3 > 0) and (y3 < 9) and
  (a1 > 0) and (a1 < 9) and
  (b1 > 0) and (b1 < 9) then
  begin
    if x1 = a1 or y1 = b1 then write('Шах от первой ладьи') else
    if x2 = a1 or y2 = b1 then write('Шах от второй ладьи') else
    if x3 = a1 or y3 = b1 then write('Шах от третьей ладьи') else
      write('Король не под ударом');
  end
  else write('Введены не правильные данные');
end.