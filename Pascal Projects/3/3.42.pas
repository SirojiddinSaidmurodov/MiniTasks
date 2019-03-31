program Shedule;
var
    chasov, minut, urok, peremena, BigPeremena, i, k,b: byte;

begin
    write('Начало уроков: '); readln(chasov, minut);
    write('Длительность урока: '); readln(urok);
    write('Длительность перемены: '); readln(peremena);
    write('Количество уроков: '); readln(k);
    write('После какого урока большая перемена? '); readln(b);
    write('Сколько минут длится большая перемена? '); readln(BigPeremena);
    writeln('РАСПИСАНИЕ УРОКОВ');
    for i := 1 to k do
    begin
        write(i:3, ' урок   ');
        chasov := chasov + minut div 60;
        minut := minut mod 60;
        write(chasov:2, ':', minut:2, ' - ');
        minut := minut + urok;
        chasov := chasov + minut div 60;
        minut := minut mod 60;
        writeln(chasov:2, ':', minut:2);
        if i=b then minut:= minut + BigPeremena else minut := minut + peremena;
    end;
end.