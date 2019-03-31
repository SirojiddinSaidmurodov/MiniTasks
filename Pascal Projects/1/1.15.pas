program square;

var
  x1, x2, x3, x4, xc, y1, y2, y3, y4, yc, yl, xl: real;

begin
  Writeln('Введите x1 и y1');
  Read(x1, y1);
  Writeln('Введите x3 и y3');
  Read(x3, y3);
  xc := (x1 + x3) / 2;///найдем середины диагоналей
  yc := (y1 + y3) / 2;
  xl := Abs(x1 - xc);///найдем расстояние по осям Ox и Oy от точки пересечения до известной точки
  yl := Abs(y1 - yc);
  x2 := xc + yl;
  y2 := yc + xl;
  x4 := xc - yl;
  y4 := yc - xl;
  Writeln('x2: ', x2);
  Writeln('y2: ', y2);
  Writeln('x4: ', x4);
  Writeln('y4: ', y4);
end.