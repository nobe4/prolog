f(0,2):- !.
f(1,2):- !.
f(N, X) :- N1 is N-1, f(N1,X1), X is 2*X1.

h(0, N, X):- X is N+1.
h(M, 0, X):- M1 is M-1, h(M1,1,X).
h(M, N, X):- M1 is M-1, N1 is N-1, h(M,N1,X1), h(M1, X1, X).

s(1,1).
s(N,X):- N2 is N*N, N1 is N-1, s(N1,X1), X is X1 + N2.

facto(0,1):- !.
facto(N,X):- N1 is N-1, facto(N1, X1), X is X1 * N.

c(N,K,X):-  K >= 0, N >= K,  facto(N,FN), facto(K,FK), NK is N-K, facto(NK,FNK), KFNK is FK * FNK, X is FN/KFNK.
