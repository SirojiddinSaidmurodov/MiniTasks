program SameNumbersInLines;

var
  A: array[,] of integer;
  ///Строка
  m: integer;
  ///Столбец
  n: integer;

///Функция определения существования элемента A[0,x] в y-строке 
function IfExist(y, x: integer): boolean;//y-номер строки которую проверяем, x-столбца где расположен исходный элемент
begin
  var Tmp := false;//совпадает ли текущий элемент строки
  for var j := 0 to n - 1 do//последовательно сравниваем заданный элемент с элементами данной строки
  begin
    if A[0, x] = A[y, j] then Tmp := true;
    if Tmp = true then
    begin//Если находим совпадающий элемент в столке, то возвращаем true и выходим из функции
      Result := true;
      break;
    end;//Если совпадающих элементов нет, то возвращается fasle
  end;
end;

///Процедура заполнения массива случайными числами
procedure FillTheMatrixWithRandom;
begin
  Println('Введите m и n');
  Read(m, n);
  SetLength(A, m, n);
  for var i := 0 to m - 1 do//Заполняем массив случайными символами, и одновременно выводим его на экран
  begin
    for var j := 0 to n - 1 do
    begin
      A[i, j] := Random(4);
      Print(A[i, j]);  
    end;
    Writeln;
  end;
  Print('Были найдены следующте элементы:');
end;
  /////////////////////////////////////////////////////////////////////////
begin
  FillTheMatrixWithRandom;
  for var j := 0 to n - 1 do
  begin
    var tmp: boolean;
    for var i := 1 to m - 1 do
    begin
      if IfExist(i, j) then tmp := true else tmp := false;
      if not IfExist(i, j) then break;
    end;
    if tmp = true then Print(A[0, j]);
  end;
end.