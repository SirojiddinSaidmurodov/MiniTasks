program Les;
var
p,k,t:real;
n:integer;
begin
	read(p,k,t);
	repeat
	n:=n+1;///n—счетчик лет
	p:=p*(1+(k/100));///рост леса
	p:=p-t;///вырубка леса в плановом режиме
	until t>p;
	writeln('через ',n+1,' лет');///так как даже если план не выполнится, лес будет срублен
end.