
predicates
	nondeterm	contains(symbol,symbol).
	nondeterm	encloses(symbol,symbol).
	
clauses
	
	contains(b1,b2).
	contains(b1,b5).
	contains(b2,b3).
	contains(b2,b4).
	contains(b5,b6).
	contains(b6,b7).
	
	encloses(X,Y) :- contains(X,Y).
	encloses(X,Y) :- contains(X,Z),encloses(Z,Y).
		

goal
	encloses(b1,b6).
