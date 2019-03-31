program FindMassiveInMassive;

label Error;

var
  A, B: array of integer;
  m, n: integer;

begin
  Print('Введите количество элементов в массиве B');
  Read(n);
  Writeln('Введите массив B');
  SetLength(B, n);
  for var i := 0 to n - 1 do Read(B[i]);
  Print('Введите количество элементов в массиве A');
  Read(m);
  if m > n then
  begin
    Write('Ошибка ввода: m не может быть больше n');
    goto Error;
  end;
  SetLength(A, m);
  Writeln('Введите массив A');
  for var i := 0 to m - 1 do
    Read(
      A[i]);
  Print('Ввод матрицы завершён!');////////////////////////////////////////////
  var Exist := false;
  var ExistTmp := false;
  for var i := 0 to n - m do///Так как массив A имеет собственную длину и не может расположится в конечной части массива B меньшей длины массива A
  begin
    if B[i] = A[0] then 
    begin
      for var j := 1 to m - 1 do
        if A[j] = B[i + j] then ExistTmp := true else///Проверка совпадения элементов начальной части массива A
        begin
          ExistTmp := false;///Если текущая часть уже не совпала, то не имеет смысла проверять остальные элементы,
          break;///выходим из цикла
        end;
      if ExistTmp = true then Exist := true;///Если совпал весь массив, то E квантр дает true
    end;
  end;
  if Exist = true then Print('Массив A содержится в B') else Print('Массив A не содержится в B');
  Error: 
end.