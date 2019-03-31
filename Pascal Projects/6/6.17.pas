program max2d;

var
  A: array[,] of integer;
  n, max, x, y: integer;

begin
  Writeln('Введите n: ');
  Read(n);
  SetLength(A, n, n);
  Writeln('Введите массив ');
  for var i := 0 to n - 1 do 
    for var j := 0 to n - 1 do A[i, j]:= Random(20);///Вводим массив
  for var i := 0 to n - 1 do ///Выводим массив
  begin
    for var j := 0 to n - 1 do Write(A[i, j]:3);
    Writeln;
  end;
  for var i := 0 to n - 1 do///Ищем максимально больший элемент в строке
  begin
    max := A[i, 0];
    for var j := 0 to n - 1 do
      if max < A[i, j] then
      begin
        max := A[i, j];
        (x, y) := (i, j);
      end;
    (A[x, y], A[i, i]) := (A[i, i], A[x, y]);///Меняем местами 
  end;
  Writeln();
  for var i := 0 to n - 1 do ///Выводим массив
  begin
    for var j := 0 to n - 1 do Write(A[i, j]:3);
    Writeln;
  end;
end.