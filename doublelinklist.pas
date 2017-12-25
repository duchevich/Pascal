program doublelinklist;

type
	dListPtr = ^dList;
	dList = record
		data: integer;
		prev, next: dListPtr;
	end;
	
	Deque = record
		first, last: dListPtr;
	end;

procedure DequeInit(var deque: Deque);
begin

end;

procedure DequePushFront(var deque: Deque; n: integer);
begin

end;

procedure DequePushBack(var deque: Deque; n: integer);
begin

end;

function DequePopFront(var deque: Deque; n: integer): boolean;
begin

end;

function DequePopBack(var deque: Deque; n: integer): boolean;
begin

end;

function DequeEmpty(var deque: Deque): boolean;
begin

end;



