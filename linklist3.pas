program linklist3;

type
	itemptr = ^item;
	item = record
		data: integer;
		next: itemptr;
	end;
	
var
	list, first, node: itemptr;

begin
	new(list);
	list^.next := nil;
	read(list^.data);
	first := list;
	while not SeekEof do
	begin
		new(node);
		read(node^.data);
		list^.next := node;
		list := list^.next;
	end;

	node := first;
	while node <> nil do
	begin
		writeln(node^.data);
		node := node^.next;
	end
end.
