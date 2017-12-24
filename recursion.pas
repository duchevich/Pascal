program recursion;

function DoReverseNumber(n, m: longint): longint;
begin
	if n = 0 then
		DoReverseNumber := m
	else
		DoReverseNumber := DoReverseNumber(n div 10, m * 10 + n mod 10)
end;

function ReverseNumber(n: longint): longint;
begin
	ReverseNumber := DoReverseNumber(n, 0)
end;

var
	n, m: longint;
	
begin
	n := 12345;
	m := 12345;
	writeln(ReverseNumber(n));
	writeln(DoReverseNumber(n, m))
end.
