program Sedlovaya;

type
  Matrix = array[1..10, 1..10]of integer;

var
  max, min, maxIndi, maxIndj, minIndi, minIndj: integer;
  a: Matrix;

begin
  println('Введите элементы матрицы');///ручной ввод матрицы
  for var i := 1 to 10 do
    for var j := 1 to 10 do
      a[i, j] := i*j;
  println('Матрица успешно заполнена!');
  for var i := 1 to 10 do ///что бы легче было проверить результат
  begin
    for var j := 1 to 10 do 
      write(a[i, j]:4);
    writeln;  
  end;
  /////////////////////////////////////////////////////////////
  for var i := 1 to 10 do
  begin
    min := a[i, 1];
    minIndj := 1;
    minIndi := i;///номер строки
    for var j := 2 to 10 do
    begin
      if a[i, j] <= min then///меньшее число в сторке
      begin
        min := a[i, j];
        minIndj := j;///номер столбца
      end;
    end;
    max := a[1, minIndj];
    maxindj := minIndj;
    maxIndi := 1;
    for var ai := 2 to 10 do
      if a[ai, minIndj] > max then
      begin
        max := a[ai, maxIndj];
        maxIndi := ai;
      end;
    if maxIndi = minIndi then Writeln('Седловая точка находится в ', maxIndi, ' строке, ', minIndj, ' столбце ');
  end;
end.