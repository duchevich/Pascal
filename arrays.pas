program arrays;

type
	ten = 1..10;
	array10 = array [ten] of real;
	array100 = array [1..100] of real;
	arrayChar = array [char] of integer; {256 elements}
	arrayBool = array [boolean] of integer; {2 elements}
	matrix5x5 = array[1..5, 1..5] of integer;
	matrix4x4 = array[1..4] of array [1..4] of integer;
var
	a, b: array100;
	c: array[1..100] of real;
	d: array10 = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
	e: matrix5x5 = ((1, 2, 3, 4, 5), (6, 7, 8, 9, 10), (11, 12, 13, 14, 15), (16, 17, 18, 19, 20),(21, 22, 23, 24, 25));
	
begin
	writeln(d[5]);
	writeln(e[1][5]);
	writeln(e[5, 5]);
end.
