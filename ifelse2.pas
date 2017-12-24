program ifelse;

var
	x, y: integer;

begin
	writeln('Enter your first positive number');
	read(x);
	writeln('Enter your second positive number');
	read(y);
	if (x > 0) and (y > 0) then begin
		writeln('Numbers is positive');
		writeln('Its good!');
	end
	else
		writeln('Numbers is not positive')
end.
