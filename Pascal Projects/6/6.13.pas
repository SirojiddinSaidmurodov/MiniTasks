program Search4max;

var
  Z, Amax: array of integer;
  m, k: integer;

begin
  Writeln('Введите длину массива: ');
  Readln(m);
  SetLength(Z, m);
  Print('Введите массив');
  for var i := 0 to m - 1 do Read(Z[i]);
  Print(Z);
  Print('Введите количество искомых максимумов');
  Read(k);
  SetLength(Amax, k);///Массив содержащий наибольшие элементы массива Z
  Amax[0] := Z[0];///Так как сначала проверяется нулевой элемент, он и будет наибольшим на данный момент
  for var i := 1 to m - 1 do
    for var j := 0 to k - 1 do
    begin
      if Z[i] > Amax[j] then 
      begin
        for var x := k - 1 downto j+1 do Amax[x] := Amax[x - 1];///Смещаем массив чтобы расположить элементы по порядку возрастания
        Amax[j] := Z[i];
        break;///Если текущий элемент больше данного Z[i], то не имеет смысла сравнивать его с остальными
      end;
    end;
  Print(Amax);
  
end.