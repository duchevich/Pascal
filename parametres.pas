program parametres;

procedure Powers(x: real; var quad, cube, fouth, fifth: real);
begin
	quad := x * x;
	cube := x * x * x;
	fouth := x * x * x * x;
	fifth := x * x * x * x * x;
end;

var
	p, q, r, t: real;
begin
	Powers(17.5, p, q, r, t);
	writeln(p);
	writeln(q);
	writeln(r);
	writeln(t);
end.
