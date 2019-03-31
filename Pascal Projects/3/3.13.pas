program Epsilon;
var y, Eps, x:real;
begin
    x:=1;
    read(Eps);
    repeat
        begin
        y:=(sin(x)/x);
        x:=x*0.5;
        writeln(y);
        end;
    until (Abs(1-y)<=Eps);
end.