program SameLmnts;

var
  K: array of integer;
  S: array[,] of integer;
  n, m: integer;

begin
  Write('Введите длину массива ');
  Readln(n);
  SetLength(K, n);
  Write('Введите количество одинаковых элементов ');
  Readln(m);
  SetLength(S, m, 2);
  for var i := 0 to n - 1 do K[i] := Random(m);
  Print(K);
  for var i := 0 to m - 1 do S[i, 0] := i;///Массив S нужен для счета символов
  for var i := 0 to n - 1 do
    for var j := 0 to m - 1 do if K[i] = S[j, 0] then S[j, 1] += 1;///Если символы равны, то счет+1
  Writeln;
  for var i := 0 to m - 1 do 
  begin
    Print(S[i, 0]);
    Println(S[i, 1]);
  end;
end.