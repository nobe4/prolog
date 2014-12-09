explode(C,R):- atom_chars(C,R).
implode(L,R):- atomic_list_concat(L,R).

1) Définir le prédicat anagramme(M1,M2), qui vérifie que M1 est bien un anagramme de M2.
?- anagramme(algorithme, logarithme).
true
Bonus) On considère l'addition suivante : LOGIC + LOGIC = PROLOG où chaque lettre représente un chiffre différent (compris entre 0 et 9). On souhaite connaitre la valeur de chaque lettre, sachant que la première lettre de chaque mot représente un chiffre différent de 0.
Résoudre ce problème en Prolog.
Vérifier que votre programme fonctionne aussi avec l’opération : ZERO + ZERO = RIEN
