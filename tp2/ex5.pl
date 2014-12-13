explode(C,R):- atom_chars(C,R).
implode(L,R):- atomic_list_concat(L,R).

anagrame(X,Y):-
	explode(X,Xex),
	sort(Xex,Xsort),
	explode(Y, Yex),
	sort(Yex, Ysort),
	Xsort == Ysort.
% Bonus) On considère l'addition suivante : LOGIC + LOGIC = PROLOG où chaque lettre représente un chiffre différent (compris entre 0 et 9). On souhaite connaitre la valeur de chaque lettre, sachant que la première lettre de chaque mot représente un chiffre différent de 0.
% Vérifier que votre programme fonctionne aussi avec l’opération : ZERO + ZERO = RIEN
