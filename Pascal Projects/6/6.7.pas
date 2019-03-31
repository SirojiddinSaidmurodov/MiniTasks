program DelNMin;
var
  l, n: integer;
  A: array of integer;///используем динамически массив

procedure FillRandom;/////Заполнение массива случайными значениями
begin
  for var i := 0  to A.Length-1 do
    A[i]:= random(0,100);
end;


begin
  Println('Введите длину массива');
  Read(l);
  SetLength(A,l);///Задаём длину массива
  FillRandom;
  Print(A);
  Write('Введите количество удаляемых минимальных элементов ');
  Readln(n);
  for var i := 1 to n do
  begin///Начинаем искать наименьшее
  var min := A[0];
  var minInd:=0;///Индексы в динамическом массиве начинаются с нуля!
  for var x := 1 to l-1 do
  begin
    if A[x] < min then 
    begin;
      minInd := x;
      min := A[x]; 
    end;
  end;
    for var j := minInd to l-1 do
      if j = l-1 then SetLength(A, l - 1) else A[j] := A[j + 1];///Смещаем элементы массива для эмуляции удаления наименьшего элемента
    l := l - 1;///По достижении конца массива уменьшаем его длину
    Println(A);
    
  end;
end.