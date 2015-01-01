% Predicat : homme/4
% Usage : Definit un homme avec des caracteristiques
% param 1 : nom de l'homme
% param 2 : taille de l'homme
% param 3 : couleur des cheveux de l'homme
% param 4 : age de l'homme
homme(brice, grande, blonds, jeune).
homme(damien, grande, blonds, jeune).
homme(fernando, grande, blonds, jeune).
homme(roberto, moyenne, bruns, mur).
homme(manuel, moyenne, bruns, mur).
homme(ezequiel, moyenne, bruns, mur).
homme(arnold, petite, roux, vieux).
homme(claytonn, petite, roux, vieux).
homme(miles, petite, chatains, vieux).
homme(bruno, petite, chatains, vieux).

% Predicat : femme/4
% Usage : Definit une femme avec des caracteristiques
% param 1 : nom de la femme
% param 2 : taille de la femme
% param 3 : couleur des cheveux de la femme
% param 4 : age de la femme
femme(maia, grande, blonds, jeune).
femme(evelyn, grande, blonds, jeune).
femme(paloma, grande, blonds, jeune).
femme(kassandra, moyenne, bruns, mur).
femme(alayah, moyenne, bruns, mur).
femme(irene, moyenne, bruns, mur).
femme(claire, petite, roux, vieux).
femme(saniya, petite, roux, vieux).
femme(dania, petite, chatains, vieux).
femme(madyson, petite, chatins, vieux).

% Predicat : gout/4
% Usage : Definit des gout d'une personne
% param 1 : nom de la personne
% param 2 : gout musical
% param 3 : gout cinematographique
% param 4 : gout sportif
gout(brice, classique, aventure, tennis).
gout(damien, classique, aventure, tennis).
gout(fernando, classique, aventure, tennis).
gout(roberto, pop, science-fiction,  natation).
gout(manuel, pop, science-fiction, natation).
gout(ezequiel, pop, science-fiction, natation).
gout(arnold, jazz, policier, jogging).
gout(claytonn, jazz, policier, jogging).
gout(miles, jazz, policier, jogging).
gout(bruno, jazz, policier, jogging).
gout(maia, classique, aventure, tennis).
gout(evelyn, classique, aventure, tennis).
gout(paloma, classique, aventure, tennis).
gout(kassandra, pop, science-fiction,  natation).
gout(alayah, pop, science-fiction, natation).
gout(irene, pop, science-fiction, natation).
gout(claire, jazz, policier, jogging).
gout(saniya, jazz, policier, jogging).
gout(dania, jazz, policier, jogging).
gout(madyson, jazz, policier, jogging).

% Predicat : recherche/4
% Usage : Definit les recherches d'une personne
% param 1 : nom de la personne
% param 2 : taille recherchee
% param 3 : couleur de cheveux recherchee
% param 4 : age recherche
recherche(madyson, grande, blonds, jeune).
recherche(dania, grande, blonds, jeune).
recherche(saniya, grande, blonds, jeune).
recherche(claire, moyenne, bruns, mur).
recherche(irene, moyenne, bruns, mur).
recherche(alayah, moyenne, bruns, mur).
recherche(kassandra, petite, roux, vieux).
recherche(paloma, petite, roux, vieux).
recherche(evelyn, petite, chatins, vieux).
recherche(maia, petite, chatins, vieux).
recherche(bruno, grande, blonds, jeune).
recherche(miles, grande, blonds, jeune).
recherche(claytonn, grande, blonds, jeune).
recherche(arnold, moyenne, bruns, mur).
recherche(ezequiel, moyenne, bruns, mur).
recherche(manuel, moyenne, bruns, mur).
recherche(roberto, petite, roux, vieux).
recherche(fernando, petite, roux, vieux).
recherche(damien, petite, chatins, vieux).
recherche(brice, petite, chatins, vieux).

% Regle : convient_physiquement/2
% Usage : Recherche si deux personnes se conviennent physiquement
% param 1 : nom de la personne 1
% param 2 : nom de la personne 2
convient_physiquement(X, Y):-
  femme(X, _, _, _), 
  homme(Y, E, R, T), 
  recherche(X,E, R, T).
convient_physiquement(X, Y):-
  homme(X, _, _, _), 
  femme(Y, E, R, T), 
  recherche(X,E, R, T).

% Regle : meme_gout/2
% Usage : Recherche si deux personnes ont les memes gouts
% param 1 : nom de la personne 1
% param 2 : nom de la personne 2
meme_gout(X, Y):-
  gout(X, E, R, T), 
  gout(Y, E, R, T).
  
% Regle : couple/2
% Usage : Recherche si deux personnes peuvent etre en couple
% param 1 : nom de la personne 1
% param 2 : nom de la personne 2
couple(X, Y):-
  convient_physiquement(X, Y), 
  convient_physiquement(Y, X), 
  meme_gout(X, Y).
