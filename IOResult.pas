program IOResult1;

var
	x, y: longint;

begin
	{$I-}
	read(x, y);
	if IOResult = 0 then
		writeln(x * y)
	else
		writeln('Is not a numbers')
end.
