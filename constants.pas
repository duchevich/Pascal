program constants;

const 
	message = 'Hello, world';
	count = 5;

var
	i: integer;

begin
	for i := 1 to count do
		writeln(message);
end.
