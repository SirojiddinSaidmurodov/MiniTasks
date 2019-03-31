program Planirovka;

var
  a, b, p, q, r, s: real;

begin
  read(a, b, p, q, r, s);
  if ((p + r < a) and (q < b) and (s < b)) or 
    ((p + r < b) and (q < a) and (s < a)) or
    ((q + s < a) and (p < b) and (r < b)) or 
    ((q + s < b) and (p < a) and (r < a)) or
    ((q + r < a) and (p < b) and (s < b)) or 
    ((q + r < b) and (p < a) and (s < a)) or
    ((p + s < a) and (q < b) and (r < b)) or 
    ((p + s < b) and (q < a) and (r < a))then
    writeln('Можно') else writeln('Нельзя');        
end.