guide(Teacher,Student):-
		teaches(Teacher,Courseid),
		studies(STudent,Courseid).
		
mother(X,Y):- parent(X,Y),female(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.

father(X,Y):- parent(X,Y),male(X).
haschild(X):-parent(X,_).
brother(X,Y):- parent(Z,X),parent(Z,Y),male(X),X\==Y.
		