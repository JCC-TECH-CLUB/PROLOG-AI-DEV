% this program depicts family relashionships
/*
domains
	name=symbol
predicates
	parent(name,name)
	female(name)
	mother(name)
	father(name)
	haschild(name)
	sister(name,name)
	brother(name,name)
clauses
*/	
	male(henry).
	male(maurice).
	male(ezequiel).
	male(mauricio).

	female(alexandra).
	female(rosa).

	parent(ezequiel,henry).
	parent(mauricio,maurice).
	parent(mauricio,alexandra).
	parent(rosa,maurice).
	parent(rosa,alexandra).
	parent(rosa,henry).	
	
	mother(X,Y):- parent(X,Y),female(X).
	father(X,Y):- parent(X,Y),male(X).
	haschild(X):-parent(X,_).
	sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
	brother(X,Y):- parent(Z,X),parent(Z,Y),male(X),X\==Y.
