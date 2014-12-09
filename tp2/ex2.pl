%% Puzzle logique

Trois personnes:  
  nationalités différentes
  sports différents
  
trois maisons : 
  couleurs distinctes 
  début/milieu/bout de la rue. 

maison verte : natation, 
anglais : maison blanche

maison verte avant maison espagnol
blanche avant maison football

tennisman habite au début de la rue

Nationalites : Anglais, Francais, Espagnol
Couleurs : Bleu, Blanc, Vert
Sports : Football, tenis, natation

Quel sport pratique le français ? 
Quelle est la nationalité de la personne qui habite la maison bleue ?

On choisit de représenter une solution par une liste de trois maisons : 
[maison(N1,C1,S1), maison(N2,C2,S2), maison(N3,C3,S3)], 
la première maison de la liste étant la première dans la rue. 
Le terme maison(N,C,S) représente une maison de nationalité N,
de couleur C et de sport. 
Pour appliquer la méthode du « generate and test », 
on veut que la solution du problème soit fournie 
par l’interpreteur Prolog comme réponse 
à la question trouver(Reponse), avec 




trouver(Reponse) :- 
  	inconnue(Tableau), 
	renseignements_sur(Tableau), 
	questions(Tableau, Reponse).

inconnue(Tableau):-.

une_maison(Tableau, Maison):-.
nationalite(Maison, N):-.
couleur(Maison, C):-.
sport (Maison, S):-.
precede(Maison1, Maison2, Tableau):-.
premiere(Tableau, Maison):-.
renseignements_sur(Tableau):-.
questions(Tableau, [Sport_Français, Nationalite_maison_bleue]):-.

couleur(vert).
couleur(blanc).
couleur(bleu).

nation(france).
nation(anglais).
nation(espagne).

sport(tennis).
sport(foot).
sport(natation).

contrainteMaison(vert,_,natation).
contrainteMaison(blanc,anglais,_).
contrainteMaison(bleu,_,_).

maison([C,N,S]):-
    couleur(C),
    nation(N),
    sport(S),
    contrainteMaison(C,N,S).

different([C1,N1,S1],[C2,N2,S2],[C3,N3,S3]):- 
    C1 \== C2, S1 \== S2, N1 \== N2,
    C1 \== C3, S1 \== S3, N1 \== N3,
    C2 \== C3, S2 \== S3, N2 \== N3.

tennisManDebut([_,_,tennis]).
maisonEqual([C1,N1,S1],[C1,N1,S1]).

precedent(M1,M2,_,M1,M2).
precedent(M1,_,M3,M1,M3).
precedent(_,M2,M3,M2,M3).

possibles(M1,M2,M3):-
    maison(M1), maison(M2), maison(M3),
    different(M1,M2,M3),
    tennisManDebut(M1),
    precedent(M1,M2,M3,[vert,_,_],[_,espagne,_]),
    precedent(M1,M2,M3,[blanc,_,_],[_,_,foot]).

resultat(R):-
    possibles(M1,M2,M3),
    append([M1],[M2|M3],R).
