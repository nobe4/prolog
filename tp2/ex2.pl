%% Puzzle logique

Trois personnes:  
  nationalités différentes
  sports différents
  
trois maisons : 
  couleurs distinctes 
  début/milieu/bout de la rue. 

maison verte : natation, 
maison verte avant maison espagnol
anglais : maison blanche
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

maison(Tableau, Maison):-.
nationalite(Maison, N):-.
couleur(Maison, C):-.
sport (Maison, S):-.
precede(Maison1, Maison2, Tableau):-.
premiere(Tableau, Maison):-.
renseignements_sur(Tableau):-.
questions(Tableau, [Sport_Français, Nationalite_maison_bleue]):-.
