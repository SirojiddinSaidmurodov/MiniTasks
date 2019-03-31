var
    n, x, i: integer;
    r1, r2: real;

begin
    writeln('Введите числа n и x: ');readln(n, x);
    r1 := 1;r2 := 1;
    for i := 1 to n do 
    begin
        r1 := r1 * exp(ln(x));
        r2 := r2 * ln(x) * exp(ln(x));
    end;
    writeln('Результат первого выражения: ', r1, '  Результат второго выражения: ', r2);
end.