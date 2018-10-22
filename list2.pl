list_length([],0).
list_length([_|TAIL],N):- list_length(TAIL,N1),N is N1+1.

concatenation([],L,L).
concatenation([X1|L1],L2,[X1,L3]):-concatenation(L1,L2,L3).

union([X|Y],Z,W):-
	list_member(X,Z), union(Y,Z,W).
union([X|Y],Z,[X|W]):-
	\+ list_member(X,Z) , union(Y,Z,W).
union([],Z,Z).

list_member(X,[X|_]).	
list_member(X,[_|TAIL]):-
	list_member(X,TAIL).