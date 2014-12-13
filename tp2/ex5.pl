% Regle : Decompose une chaine de caractere en tableau de caractere
% param 1 : Le mot a decomposer
% param 2 : Le tableau resultat
explode(C,R):- atom_chars(C,R).

% Regle : Merge un tableau en une chaine de caractere
% param 1 : Le tableau a merger
% param 2 : Le mot resultat
implode(L,R):- atomic_list_concat(L,R).

% Regle : Verifie si deux mots sont des anagrammes
% param 1 : Le premier mot
% param 2 : Le deuxieme mot
anagrame(X,Y):-
	explode(X,Xex),
	sort(Xex,Xsort),
	explode(Y, Yex),
	sort(Yex, Ysort),
	Xsort == Ysort.

% Trouve la solution d'un cryptogramme
% param 1 : Le premier mot additionne
% param 2 : Le deuxieme mot additionne
% param 3 : Le resultat
solve(Word1,Word2,Solution):-
	somme(Word1,Word2,Solution,0,0,[0,1,2,3,4,5,6,7,8,9],_).

somme([],[],[],C,C,Digits,Digits).
somme([D1|N1],[D2|N2],[D|N],RetenueDroite,RetenueGauche,Digs1,Digs):-
	somme(N1,N2,N,RetenueDroite,C2,Digs1,Digs2),
	sommeChiffres(D1,D2,C2,D,RetenueGauche,Digs2,Digs).

sommeChiffres(D1,D2,RetenueDroite,D,RetenueGauche,Digs1,Digs):-
	supprimer(D1,Digs1,Digs2),
	supprimer(D2,Digs2,Digs3),
	supprimer(D,Digs3,Digs),
	S is D1+D2+RetenueDroite,
	D is S mod 10,
	RetenueGauche is S // 10.

supprimer(A,L,L):- nonvar(A),!.
supprimer(A,[A|L],L).
supprimer(A,[B|L],[B|L1]):- supprimer(A,L,L1).
