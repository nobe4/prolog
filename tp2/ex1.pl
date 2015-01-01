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


convient-physiquement(X, Y):-femme(X, _, _, _), homme(Y, E, R, T), recherche(X,E, R, T).
convient-physiquement(X, Y):-homme(X, _, _, _), femme(Y, E, R, T), recherche(X,E, R, T).

meme_gout(X, Y):-gout(X, E, R, T), gout(Y, E, R, T).

couple(X, Y):-convient-physiquement(X, Y), convient-physiquement(Y, X), meme_gout(X, Y).
