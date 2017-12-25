program pointers;

var
	p: integer;
	q: ^real;
	r: real;
	s, t: ^string;

begin
	r := 25;
	q := @r;
	writeln(q^);
	
	new(s);
	s^  := 'Some text';
	t := s;
	writeln(s^);
	writeln(t^);
	dispose(s);
	writeln(s^);
	writeln(t^);
end.
