program structures;

const
	maxUsers = 100;

type User = record
	id: integer;
	name: string;
	registered: boolean;
end;

type 
	usersArray = array [1..maxUsers] of User;

var 
	newUser: User;
	usersDB: usersArray;

begin
	newUser.id := 1;
	newUser.name := 'Dave';
	newUser.registered := false;
	writeln(newUser.id);
	writeln(newUser.name);
	writeln(newUser.registered);
	usersDB[1] := newUser;
	writeln(usersDB[1].name)
end.
