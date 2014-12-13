% Predicat : Definition de la lettre correspondant a un nombre romain
% param 1 : La lettre
% param 2 : La valeur
chiffre(i, 1).
chiffre(v, 5).
chiffre(x, 10).
chiffre(l, 50).
chiffre(c, 100).
chiffre(d, 500).
chiffre(m, 1000).

% Regle : Conversion d'un nombre romain en ecriture normale
% param 1 : Un tableau contenant les caracteres romains
% param 2 : Le resultat
conversion(Romain, Normal) :- conversion(Romain, 0, Normal).

conversion([], X, X).
conversion([A], X, Normal) :-
	chiffre(A, AVal),
	Normal is X + AVal.
conversion([A, B | Queue], X, Normal) :-
	chiffre(A, AVal), chiffre(B, BVal),
	AVal < BVal,
	NewX is X + BVal - AVal,
	conversion(Queue, NewX, Normal).

conversion([A, B | Queue], X, Normal) :-
	chiffre(A, AVal), chiffre(B, BVal),
	AVal >= BVal,
	NewX is X + AVal,
	conversion([B | Queue], NewX, Normal).

% Regle : Conversion d'un nombre normal en ecriture romaine et affichage
% param 1 : le nombre a convertir
conversionNormal(0).
conversionNormal(N) :- N < 4, put("I"), M is N - 1, conversionNormal(M).
conversionNormal(N) :- N = 4, put("I"), put("V").
conversionNormal(N) :- N = 5, put("V").
conversionNormal(N) :- N < 9, put("V"), M is N - 5, conversionNormal(M).
conversionNormal(N) :- N = 9, put("I"), put("X").
conversionNormal(N) :- N < 40, put("X"), M is N - 10, conversionNormal(M).
conversionNormal(N) :- N < 50, put("X"), put("L"), M is N - 40, conversionNormal(M).
conversionNormal(N) :- N < 90, put("L"), M is N - 50, conversionNormal(M).
conversionNormal(N) :- N < 100, put("X"), put("C"), M is N - 90, conversionNormal(M).
conversionNormal(N) :- N < 400, put("C"), M is N - 100, conversionNormal(M).
conversionNormal(N) :- N < 500, put("C"), put("D"), M is N - 400, conversionNormal(M).
conversionNormal(N) :- N < 900, put("D"), put("D"), M is N - 500, conversionNormal(M).
conversionNormal(N) :- N < 1000, put("C"), put("M"), M is N - 900, conversionNormal(M).
conversionNormal(N) :- N < 4000, put("M"), M is N - 1000, conversionNormal(M).
