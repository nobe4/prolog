% Predicat : chiffre/2
% Usage : Definition de la lettre correspondant a un nombre romain
% param 1 : La lettre
% param 2 : La valeur
chiffre(i, 1).
chiffre(v, 5).
chiffre(x, 10).
chiffre(l, 50).
chiffre(c, 100).
chiffre(d, 500).
chiffre(m, 1000).

% Regle : conversion/2
% Usage : Conversion d'un nombre romain en ecriture normale
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

% Regle : conversionNormal/2
% Usage : Conversion d'un nombre normal en ecriture romaine et affichage
% param 1 : Le nombre a convertir
% param 2 : Le resultat
conversionNormal(N, _):- N < 0, !.
conversionNormal(0, []).
conversionNormal(N, [i|Roman])   :- N < 4, M is N - 1, conversionNormal(M, Roman).
conversionNormal(4, [i,v]).
conversionNormal(5, [v]).
conversionNormal(N, [v|Roman])   :- N < 9, M is N - 5, conversionNormal(M, Roman).
conversionNormal(9, [i,x]).
conversionNormal(N, [x|Roman])   :- N < 40, M is N - 10, conversionNormal(M, Roman).
conversionNormal(N, [x,l|Roman]) :- N < 50, M is N - 40, conversionNormal(M, Roman).
conversionNormal(N, [l|Roman])   :- N < 90, M is N - 50, conversionNormal(M, Roman).
conversionNormal(N, [x,c|Roman]) :- N < 100, M is N - 90, conversionNormal(M, Roman).
conversionNormal(N, [c|Roman])   :- N < 400, M is N - 100, conversionNormal(M, Roman).
conversionNormal(N, [c,d|Roman]) :- N < 500, M is N - 400, conversionNormal(M, Roman).
conversionNormal(N, [d,d|Roman]) :- N < 900, M is N - 500, conversionNormal(M, Roman).
conversionNormal(N, [c,m|Roman]) :- N < 1000, M is N - 900, conversionNormal(M, Roman).
conversionNormal(N, [m|Roman])   :- N < 4000, M is N - 1000, conversionNormal(M, Roman).
