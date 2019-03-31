program MaxNullChain;

var
  L: array of integer;///Динамический массив
  m, maxChain, maxInd, maxChainTmp, maxIndTmp: integer;///Где Tmp это касательо текущей цепочки

begin
  Write('Введите длину массива ');
  Readln(m);
  SetLength(L, m);
  for var i := 0 to m - 1 do Read(L[i]);///Вводим массив
  Print(L);
  for var i := 0 to m - 1 do
  begin
    if L[i] = 0 then///ищем первый нуль
    begin///Находим длину цепочки
      maxChainTmp := 1;///Любая текущая цепочка имеет хоть один ноль
      maxIndTmp := i;///Начальный индекс текущей цепочки
      for var j := i + 1 to m - 1 do
        if L[j] <> 0 then break else maxChainTmp += 1;///Считаем количество нулей в текущей цепочке
      if maxChainTmp > maxChain then 
      begin
        maxChain := maxChainTmp;
        maxInd := maxIndTmp;
      end;
    end;
  end;
  Print('Самая длинная цепочка начинается с числа № ', maxInd + 1, ' и имеет длину ', maxChain, ' нулей');
end.