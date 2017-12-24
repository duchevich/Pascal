program chars;

var
	c: char;
	n: integer;

begin
	c := #55;
	writeln(c);
	c := '7';
	writeln(c);
	c := '''';
	writeln(c);
	c := #55;
	write(c, #10);
	write('Hello'#10);
	write('Hello'^j);
	writeln(#55 = '7');
	writeln(#55 > '7');
	c := chr(55);
	writeln(c);
	n := ord('7');
	writeln(n);
end.
