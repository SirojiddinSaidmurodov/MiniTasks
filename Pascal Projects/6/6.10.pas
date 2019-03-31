program MaxChainOfNullsHVD;

var
  L: array[,] of integer;
  n, k, maxChain: integer;

begin
  maxChain := 0;
  Println('Введите n и k ');
  Read(n, k);
  SetLength(L, n, k);
  for var i := 0 to n - 1 do
    for var j := 0 to k - 1 do
      L[i, j] := random(0, 1);///Заполним массив случайным образом
  for var i := 0 to n - 1 do
  begin
    for var j := 0 to k - 1 do Print(L[i, j]);///Для дальнейшей проверки программы
    Writeln;
  end;
  //////////////////////////////////////////////////////////////////////////////
  var d: integer;///Ищем нулевые цепочки по главной диагонали
  if n < k then d := n else d := k;///Т.к. матрица может быть неквадратной
  maxChain := 1; 
  for var i := 0 to d - 1 do
    if L[i, i] = 0 then 
    begin
      var maxChainTmp := 1;///Текущяя максимально длинная цепочка
      for var j := i + 1 to d - 1 do
      begin
        if L[j, j] <> 0 then break else maxChainTmp += 1;
        if maxChainTmp > maxChain then maxChain := maxChainTmp;
      end;
    end;
  Println('По диагонали ', maxChain);
  ////////////////////////////////////////////////////////////////////////////////
  for var i := 0 to n - 1 do///Ищем нулевые цепочки по горизонтали
    for var j := 0 to k - 1 do
      if L[i, j] = 0 then
      begin
        var maxChainTmp := 1;
        for var x := j + 1 to k - 1 do
        begin
          if L[i, x] <> 0 then break else maxChainTmp += 1;
          if maxChainTmp > maxChain then maxChain := maxChainTmp;
        end;
      end;
  Println('По горизонтали ', maxChain);
  ////////////////////////////////////////////////////////////////////////////////
  for var j := 0 to k - 1 do///Ищем нулевые цепочки по горизонтали
    for var i := 0 to n - 1 do
      if L[i, j] = 0 then
      begin
        var maxChainTmp := 1;
        for var x := i + 1 to n - 1 do
        begin
          if L[x, j] <> 0 then break else maxChainTmp += 1;
          if maxChainTmp > maxChain then maxChain := maxChainTmp;
        end;
      end;
  Println('По вертикали ', maxChain);
end.