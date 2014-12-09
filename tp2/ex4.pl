queDesZeros([T]):- T is 0.
queDesZeros([T|L]):- T is 0, queDesZeros(L).

valeurEntier([T], N):- N is T*1.
valeurEntier([T|L], N):- valeurEntier(L, N1), length(L, C), pow(2,C,P), T1 is T*P, N is N1+T1.


valeurBinaire(1,[1]).
valeurBinaire(T,L):- T > 1, B is T mod 2, N is round(T/2) ,valeurBinaire(N, Ls), append(Ls,[B],L).
