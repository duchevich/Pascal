program queues;

type
	LongItemPtr = ^LongItem;
	LongItem = record
		data: longint;
		next: LongItemPtr;
	end;
	
type QueueLongInts = record
		first, last: LongItemPtr;
	end;

procedure QueueInit(var queue: QueueLongInts);
begin
	queue.first := nil;
	queue.last := nil
end;

procedure QueuePut(var queue: QueueLongInts; n: longint);
begin
	if queue.first = nil then
	begin
		new(queue.first);
		queue.last := queue.first
	end
	else
	begin
		new(queue.last^.next);
		queue.last := queue.last^.next
	end;
	queue.last^.data := n;
	queue.last^.next := nil
end;

function QueueGet(var queue: QueueLongInts; var n: longint): boolean;
var
	tmp: LongItemPtr;
begin
	if queue.first = nil then
	begin
		QueueGet := false;
		exit
	end;
	n := queue.first^.data;
	tmp := queue.first;
	queue.first := queue.first^.next;
	if queue.first = nil then
		queue.last := nil;
	dispose(tmp);
	QueueGet := true
end;

function QueueEmpty(var queue: QueueLongInts): boolean;
begin
	QueueEmpty := queue.first = nil
end;

var
	s: QueueLongInts;
	n: longint;

begin
	QueueInit(s);
	while not eof do
	begin
		readln(n);
		QueuePut(s, n);
	end;
	while QueueGet(s, n) do
		writeln(n)
end.
