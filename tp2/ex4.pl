% Regle verifiant qu'une liste ne contient que des 0
% param 1 : La liste de recherche
queDesZeros([T]):- T is 0.
queDesZeros([T|L]):- T is 0, queDesZeros(L).

% Regle effectuant la convertion d'une liste de chiffres binaire en sa representation decimale
% param 1 : La liste de chiffres binaires
% param 2 : Le resultat decimal
valeurEntier([T], N):- N is T*1.
valeurEntier([T|L], N):- 
    valeurEntier(L, N1), 
    length(L, C), 
    pow(2,C,P), 
    T1 is T*P, 
    N is N1+T1.

% Regle effectuant la convertion d'un nombre decimale en sa representation binaire
% param 1 : Le nombre decimal
% param 2 : La liste resultat de chiffres binaires
valeurBinaire(0,[0]).
valeurBinaire(1,[1]).
valeurBinaire(T,L):- 
    T > 1, 
    B is T mod 2, 
    N is T // 2,
    valeurBinaire(N, Ls), 
    append(Ls,[B],L).
