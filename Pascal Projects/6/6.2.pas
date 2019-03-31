program Parts;

const
  m = 10;
  n = 10;

type
  Arra = array [1..m, 1..n] of integer;

var
  K: arra;

function odinakovie(a, b: integer): boolean;/////проверка строки на одинаковость значений
begin
  odinakovie := false;
  for var i := 2 to m do
  begin
    if K[a, i] = K[b, i] then Result := true;
    if Result = false then break;
  end;
end;

procedure DelStr(j: integer);////Процудура удаления ненужной строки
begin////////////////////////////путём замены её значений значениями
  for var z := j to n do/////////предыдущей строки
  begin
    for var i := 1 to n do
      if (z = 10) then K[z, i] := 0 else
        K[z, i] := K[z + 1, i];
  end;
end;

begin
  println('Введите элементы матрицы');///ручной ввод матрицы
  for var i := 1 to m do
    for var j := 1 to n do
      Readln(K[i, j]);
  println('Матрица успешно заполнена!');
  for var i := 1 to 10 do ///что бы легче было проверить результат
  begin
    for var j := 1 to 10 do 
      write(K[i, j]:2);
    writeln;  
  end;////////////////////////////////////////////////////////////
  Writeln;
  
  for var i := 1 to m do
    for var j := i + 1 to m do
      if K[i, 1] = K[j, 1] then 
        if not odinakovie(i, j) = true then DelStr(j);
  for var i := 1 to 10 do ///Проверка результата
  begin
    for var j := 1 to 10 do 
      write(K[i, j]:4);
    writeln;  
  end;
  
end.