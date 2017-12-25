program stack;

type
	LongItemPtr = ^LongItem;
	LongItem = record
		data: longint;
		next: LongItemPtr;
	end;

type
	StackLongInt = LongItemPtr;

procedure StackInit(var stack: StackLongInt);
begin
	stack := nil;
end;

procedure StackPush(var stack: StackLongInt; n: longint);
var
	tmp: LongItemPtr;
begin
	new(tmp);
	tmp^.data := n;
	tmp^.next := stack;
	stack := tmp;
end;

function StackPop(var stack: StackLongInt; var n: longint): boolean;
var
	tmp: LongItemPtr;
begin
	if  stack = nil then
	begin
		StackPop := false;
		exit
	end;
	n := stack^.data;
	tmp := stack;
	stack := stack^.next;
	dispose(tmp);
	StackPop := true;
end;

function StackEmpty(var stack: StackLongInt): boolean;
begin
	StackEmpty := stack = nil
end;

var
	s: StackLongInt;
	n: longint;

begin
	StackInit(s);
	while not eof do
	begin
		readln(n);
		StackPush(s, n);
	end;
	while StackPop(s, n) do
		writeln(n)
end.
