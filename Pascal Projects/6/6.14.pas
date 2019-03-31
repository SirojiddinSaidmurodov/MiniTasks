program MaxChainOfSymbols;

var
  L: array of integer;
  n: integer;

begin
  Writeln('Введите n: ');
  Read(n);
  SetLength(L, n);
  Writeln('Введите массив ');
  for var i := 0 to n - 1 do Read(L[i]);
  var maxChain: integer;///Длина наибольшей цепочки
  var maxSymbol: integer;///Символ составляющий максимально длинную цепочку
  var maxChainTMP: integer;///Текущяя максимальная длина
  for var i := 0 to n - 2 do 
  begin
    if (L[i] = L[i + 1]) then maxChainTMP += 1;///Если два последовательных символа равны, то имеем цепочку из  символов
    if maxCHainTMP > maxChain then ////Если текущая цепочка больше найденной ранее цепочки,
    begin//////////////////////////////то текущяя становится максимально большой
      maxChain := maxChainTMP;
      maxSymbol := L[i];
    end;
    if L[i] <> L[i + 1] then maxChainTMP := 1;////В обратном случае цепочка прерывается, начинается новая цепочка
  end;
  Print('Наибольшаяя цепочка в массиве состоит из ', maxChain, 'символов', maxSymbol);
end.