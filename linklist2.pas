program linklist2;

type
	itemptr = ^item;
	item = record
		data: integer;
		next: itemptr;
	end;
	
var
	list, node: itemptr;

begin
	list:= nil;
	while not SeekEof do
	begin
		new(node);
		read(node^.data);
		node^.next := list;
		list := node;
	end;
	node := list;
	while node <> nil do
	begin
		writeln(node^.data);
		node := node^.next;
	end
end.
