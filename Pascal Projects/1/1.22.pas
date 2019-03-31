program SurfaceOfTriangle;

var
  x1, x2, x3, y1, y2, y3: real;

begin
  Write('x1=');
  readln(x1);
  Write('y1=');
  readln(y1);
  Write('x2=');
  readln(x2);
  Write('y2=');
  readln(y2);
  Write('x3=');
  readln(x3);
  Write('y3=');
  readln(y3);
  Writeln('S=', Abs(0.5 * ((x2 - x1) * (y3 - y1) - (x3 - x1) * (y2 - y1))));
end.