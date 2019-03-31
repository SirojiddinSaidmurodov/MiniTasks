program ControlWork;

type
  K = array[1..100] of integer;
  L = array[1..100] of integer;

var
  m: K;
  n: L;
  max: integer;
  maxind: integer;
  e:boolean;
  z:integer;
begin
  for var i := 1 to 20 do
  begin
    m[i] := Random(100);
    n[i] := Random(100);
  end;
  for var i := 1 to 20 do write(m[i], ' ');
  writeln('');
  for var i := 1 to 20 do write(n[i], ' ');
  
  max := m[1];
  maxind := 1;
    for var i := 2 to 20 do 
        if m[i] > max then
        begin
          max := m[i];
          maxind := i;
        end;
      writeln;
      writeln(max, ' и его индекс ', maxind);
      z:=0;
      repeat
      begin
      z:=z+1;
      if z>20 then break;
        if max = n[z] then e:=true else e:=false;
        end;
        until e=true;
        if e=true then writeln('В массиве L существует число равное максимальному из K') else writeln('В массиве L не существует число равное максимальному из K');
  write(m[maxind]);
end.