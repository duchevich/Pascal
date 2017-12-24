program strings;

var
	a, b: string;
begin
	a := 'Hello, ';
	b := a + 'world!';
	writeln(b);
	writeln(length(b));
	writeln(LowerCase(b));
	writeln(UpCase(b));
	SetLength(b, 5);
	writeln(b);
end.
