program types;

type
	MyNumber = real;
	digit = 0..9;
	latCaps = 'A'..'Z';
	rainbow = (red, orange, yellow, green, blue, indigo, violet);

var 
	x: MyNumber;
	y: digit;
	z: latCaps;
	a: rainbow;

begin
	x := 123.0;
	y := 1;
	z := 'Y';
	writeln(x);
	writeln(y);
	writeln(z);
	a := green;
	writeln(a);
	writeln(succ(green));
	writeln(pred(green));
	writeln(ord(green));
	writeln(succ(10));
	writeln(pred(10));
end.
