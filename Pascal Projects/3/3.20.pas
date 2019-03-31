var
    a, x, x1, e, p: real;
    n: integer;

begin
    write('a = '); 
    readln(a);
    write('p = '); 
    readln(p);
    write('eps = '); 
    readln(e);
    n := 0;
    x1 := a; 
    repeat
        x := x1;
        x1 := ((p - 1) * x + a / exp(ln(x) * (p - 1))) / p; 
        n := n + 1;///счетчик n считает количество итераций
    until abs(x1 - x) < e; {>>>>> до тех пор, пока не выполнится условие |x[n+1] - x[n]| < e}
    writeln('x = ', x1:0:15); 
    Writeln('Количество итераций = ', n);
end.