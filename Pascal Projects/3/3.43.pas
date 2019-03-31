program CurrentPriceOfTools;

var
    y, p, i: integer;
    s1, s2: real;

begin
    write('Введите количество лет ');
    readln(y);
    write('введите процент амортизации ');
    readln(p);
    for i := 1 to y do
    begin
        write('Введите цену оборудования за ', i,' год ');
        read(s2);
        s2 := (s1 + s2) * (1 - p / 100);
        writeln('Текущая стоимость оборудования ', s2);
        s1:=s2;
    end;
end.