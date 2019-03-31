program UniqueSymbols;

var
  M: array of integer;
  k: integer;
  USM: array of integer;///Unique Symbols Massive

function IsMatched(A: array of integer; b: integer): boolean;///Функция определения совпадения элемента с элементами заданной матрицы 
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
  Writeln('Введите k: ');
  Read(k);
  SetLength(M, k);
  Writeln('Введите массив ');
  for var i := 0 to k - 1 do Read(M[i]);
  SetLength(USM, 1);
  USM[0] := M[0];
  for var i := 1 to k - 1 do
  begin
    if not IsMatched(USM, M[i]) then ///Если в массиве уникальных символов нет данного элемента, добавляем его в массив
    begin
      SetLength(USM, USM.Length + 1);
      USM[USM.Length - 1] := M[i];
    end;
  end;
  Print(USM);
end.