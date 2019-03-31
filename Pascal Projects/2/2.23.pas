program YearOfGroup;

var
  a, b, group, year: integer;

begin
  read(group);
  read(year);
  a := group div 100;
  case a of
    1: write('исторический');
    2: write('экономический');
    3: write('юридический');
    4: write('математический');
    5: write('физический');
    6: write('химический');
    7: write('биологический');
    8: write('филологический');
    9: write('географический');
  else write('социологический');
  end;
  write(' факультет ');
  b :=((group div 10)-(group div 100)*10);
  if (year mod 10) = b then write(year) else
  if ((year - 1) mod 10) = b then write(year - 1) else
  if ((year - 2) mod 10) = b then write(year - 2) else
  if ((year - 3) mod 10) = b then write(year - 3) else
  if ((year - 4) mod 10) = b then write(year - 4) else
  if ((year - 5) mod 10) = b then write(year - 5) else
  if ((year - 6) mod 10) = b then write(year - 6) else
    writeln('невозможный год');
  
end.