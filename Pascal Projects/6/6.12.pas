program MaxWithoutMatchings;

var
  K, L: array of integer;
  m, n: integer;

function IsMatched(A: array of integer; b: integer): boolean;
begin
  for var i := 0 to A.Length - 1 do
    if A[i] = b then 
    begin
      Result := true;
      break;
    end
    else Result := false;
end;

begin
  Writeln('Введите m и n: ');
  Read(m, n);
  SetLength(K, m);
  SetLength(L, n);
  Print('Введите массив K');
  for var i := 0 to m - 1 do Read(K[i]);
  Print('Введите массив L');
  for var i := 0 to n - 1 do Read(L[i]);
  Print('Массив K', K);
  Print('Массив L', L);
  var max := K[0];
  for var i := 1 to m - 1 do
  begin
    if (K[i] > max) and not IsMatched(L, K[i]) then max := K[i];
  end;
  Writeln('Искомое значение: ', max);
end.