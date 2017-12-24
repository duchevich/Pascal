program repeat1;

var
	year: integer;
	
begin
	repeat
		write('Please type in your birth year: ');
		readln(year);
	until (year > 1900) and (year < 2013);
	writeln('The year ', year, ' is accepted. Thank you!')
end.
