program Prival;

var
  t1, t2, t3, v1, v2, v3, s0, s: real;

begin
  readln(t1, t2, t3, v1, v2, v3);
  s0 := (v1 * t1 + v2 * t2 + v3 * t3) / 2;
  if(v1 * t1 > s0) then write(s0 / v1) else
  if(v1 * t1 + v2 * t2 > s0) then write((s0 - v1 * t1) / v2) else
  if(v1 * t1 + v2 * t2 + v3 * t3 > s0) then write((s0 - v1 * t1 - v2 * t2) / v3);
end.