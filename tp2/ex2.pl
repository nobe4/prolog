%% Puzzle logique
% Predicat couleur/1, defini les couleurs utilisees
couleur(vert). couleur(blanc). couleur(bleu).

% Predicat nation/1, defini les couleurs utilisees
nation(france). nation(anglais). nation(espagne).

% Predicat sport/1, defini les couleurs utilisees
sport(tennis). sport(foot). sport(natation).

% Predicat contrainteMaison/3
% Param 1 : couleur
% Param 2 : nation 
% Param 3 : sport 
% Usage : Les parametres specifies posent des contraintes sur les maisons
% 	  contrainteMaison(vert,_,natation) indique que vert ira forcement avec natation
contrainteMaison(vert,_,natation).
contrainteMaison(blanc,anglais,_).
contrainteMaison(bleu,_,_).

% Predicat verifieTennis/1
% Param 1 : [_,_,sport]
% Usage : Verifie que la maison a pour sport tennis
verifieTennis([_,_,tennis]).

% Predicat precedent/5
% Param 1 : Maison 1
% Param 2 : Maison 2
% Param 3 : Maison 3
% Param 4 : Maison a tester 1
% Param 5 : Maison a tester 2
% Usage : Verifie que la maison a tester 1 est avant la maison a tester 2 
%         dans les 3 choix suivats : M1 M2, M1 M3, M2 M3
precedent(M1,M2,_,M1,M2).
precedent(M1,_,M3,M1,M3).
precedent(_,M2,M3,M2,M3).


% Regle maison/1
% Param 1 : [couleur,nation,sport]
% Usage : Cree une maison et verifie les contraintes
maison([C,N,S]):-
    couleur(C),
    nation(N),
    sport(S),
    contrainteMaison(C,N,S).

% Regle different/3
% Param 1 : [couleur,nation,sport] pour la maison 1
% Param 2 : [couleur,nation,sport] pour la maison 2
% Param 3 : [couleur,nation,sport] pour la maison 3
% Usage : Verifie 2 a 2 que les maisons sont differentes
different([C1,N1,S1],[C2,N2,S2],[C3,N3,S3]):- 
    C1 \== C2, S1 \== S2, N1 \== N2,
    C1 \== C3, S1 \== S3, N1 \== N3,
    C2 \== C3, S2 \== S3, N2 \== N3.

% Regle possibles/3
% Param 1 : Maison 1
% Param 2 : Maison 2
% Param 3 : Maison 3
% Usage : Genere 3 maisons, verifie qu'elles sont differentes et verifie les contraintes. 
possibles(M1,M2,M3):-
    maison(M1), maison(M2), maison(M3),
    different(M1,M2,M3),
    verifieTennis(M1),
    precedent(M1,M2,M3,[vert,_,_],[_,espagne,_]),
    precedent(M1,M2,M3,[blanc,anglais,_],[_,_,foot]).

% Regle resultat/1
% Param 1 : resultat
% Usage : Genere la reponse a toutes les contraintes
resultat(R):-
    possibles(M1,M2,M3),
    append([M1],[M2|[M3]],R).
