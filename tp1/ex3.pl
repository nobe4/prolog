sommeList([],0):- !.
sommeList([L|T], Somme) :- sommeList(T,S), Somme is S + L.

sommeImpaire([],0) :- !.
sommeImpaire([W,_|T],Somme) :- sommeImpaire(T,S), Somme is W + S.
sommeImpaire([W],Somme) :- Somme is W.

moyenne(L,M):- sommeList(L,S), length(L,Len), M is S / Len.

noccur(_, [], 0).
noccur(E,[E|T],X):- noccur(E, T, X2), X is X2 + 1 .
noccur(E,[Y|T],X):- E \= Y, noccur(E, T, X).

adjacent(X,Y,[Z|T]):- X \= Z, Y \= Z,  adjacent(X,Y,T).
adjacent(X,Y,[X,Y|_]).

prefix([],_).
prefix([H|T],[H|U]):- prefix(T,U).

suffix(S,S).
suffix(S,[_|T]) :- suffix(S,T).

double([T],[T,T]).
double([T|L],[T,T|X]):- double(L,X).
