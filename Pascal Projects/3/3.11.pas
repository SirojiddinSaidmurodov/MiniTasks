program Miles2km;

var
  i, j, k: real;

begin
  writeln('Введите до какого значения километров создавать таблицу:');
  read(k);
  write('мили':10);
  writeln('км':10);
  i := 0;///счетчик для миль
  j := 0;///счетчик для километров
  repeat
    begin
      if ((i + 1) * 1.609344) > (j + 1) then{сравниваем следующие целые значения километров и миль}
      begin
        j := j + 1;
        write(j * 0.6213711920:10:4);
        writeln(j:10:4);
      end else
      begin
        i := i + 1;
        write(i:10:4);
        writeln((i * 1.609344):10:4);
      end;
    end;
  until j = k;
  
end.