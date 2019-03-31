program FirstAndLastNull;

var
  T: array of integer;///Динамический массив
  k, First, Last: integer;


begin
  Print('Введите длину массива ');
  readln(k);
  SetLength(T, k);
  for var i := 0 to k - 1 do readln(T[i]);
  for var i := 0 to k - 1 do///Ищем первый нуль
    if T[i] = 0 then 
    begin
      First := i;
      break;
    end;
  for var i := k - 1 downto 0 do///Тот же поиск с первого нуля только с конца
    if T[i] = 0 then 
    begin
      Last := i;
      break;
    end;
    Writeln;
  Print(First+1, Last+1);///Т.к. в динамическом массиве индексы с нуля
end.