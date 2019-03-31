program metr2rusl;

var
  p, p1, versh, ar, saj, vers, versh1, ar1, saj1: integer;

begin
  write('Введите длину отрезка в метрах ');
  read(p);
  p1 := p * 100000;
  versh1 := p1 div 4445;
  versh := versh1 mod 16;
  ar1 := versh1 div 16;
  ar := ar1 mod 3;
  saj1 := ar1 div 3;
  saj:= saj1 mod 500;
  vers:= saj1 div 500;
  Writeln(p,' метров равны ',vers,' верст, ',saj,' сажень, ',ar,' аршин, ',versh,' вершков');
end.