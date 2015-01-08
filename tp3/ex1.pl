% Regle : hanoi/5
% Usage : Effectue la resolution du probleme des tours d'hanoi
% param 1 : nombre de palets
% param 2 - 4 : nom des emplacements
% param 5 : Retour des deplacements

hanoi(1,A,B,_,[deplacer(A,B)]).
hanoi(N,A,B,C,Deplacement) :- 
    N > 1, 
    N1 is N-1, 
    hanoi(N1,A,C,B,D1), 
    hanoi(1,A,B,_,D2), 
    hanoi(N1,C,B,A,D3),
    append([D1,D2,D3], Deplacement).  
