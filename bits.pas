program bits;

procedure ToBin(dec: integer);
var 
	a, b, c, i: longint;
begin
	c := 1;
	for i := 1 to 15 do
	begin
		a := dec mod 2;
		b := b + a * c;
		c := c * 10;
		dec := dec div 2;
	end;
	writeln(b)
end;

var
	x, y, z: integer;

begin
	x := 42;
	y := 166;
	z := not x;
	writeln(z);
	z := x and y;
	writeln(z);
	z := x or y;
	writeln(z);
	z := x xor y;
	writeln(z);
end.
