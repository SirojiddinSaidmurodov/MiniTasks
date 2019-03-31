program N3_4;
  uses crt;
var
   i,n,a,b,c,d,a1,b1,c1,d1,s:integer;
begin
  clrscr;
  writeln('введите количество прямоугольников (не меее двух)');
  readln(n);
  writeln('введите габариты первого прямоугольника (a<b),(c<d)');
  readln(a,b,c,d);
 
 for i:=1 to n-1 do begin
    writeln('введите следующий прямоугольник');
    readln(a1,b1,c1,d1);
    if (b<=a1) or (d<=c1) then writeln('прямоугольники не пересекаются')
         else begin
              if a<a1 then a:=a1;
              if b>b1 then b:=b1;
              if c<c1 then c:=c1;
              if d>d1 then d:=d1;
               s:=(b-a)*(d-c);
              writeln('площадь пересечения равна ',s);
             end;
 end;
end.