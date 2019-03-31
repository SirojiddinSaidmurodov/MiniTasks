program FindeNotSame;

var
  Z: array of integer;
  n: integer;

begin
  Writeln('Введите n: ');
  Read(n);
  SetLength(Z, n);
  Writeln('Введите массив ');
  for var i := 0 to n - 1 do Read(Z[i]);
  var maxChain: integer;///Длина наибольшей цепочки
  var maxChainTMP: integer := 1; ///Текущяя максимальная длина
  for var i := 0 to n - 2 do 
  begin
    if (Z[i] <> Z[i + 1]) then maxChainTMP += 1;//Если два последовательных символа не равны, то имеем цепочку
    if maxCHainTMP > maxChain then ////Если текущая цепочка больше найденной ранее цепочки,
    begin//////////////////////////////то текущяя становится максимально большой
      maxChain := maxChainTMP;
    end;
    if Z[i] = Z[i + 1] then maxChainTMP := 1;////В обратном случае цепочка прерывается, начинается новая цепочка
  end;
  Print('Наибольшаяя цепочка в массиве состоит из ', maxChain, 'символов');
end.