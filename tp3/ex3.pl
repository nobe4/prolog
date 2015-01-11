% Regle : monnaieRec/3
% Usage : Trouve la piece de valeur maximale que l'on peut recevoir dans la liste
% param 1 : la valeur restante
% param 2 : les pieces possibles
% param 3 : la piece rendue
% Cas 1 : La valeur demandee est la piece actuelle
monnaie(Valeur,[Valeur|_],Valeur).

% Cas 1 : La valeur demandee est plus grande que la piece actuelle
monnaie(Valeur,[Piece|_],Rendu):- 
    Diff is Valeur - Piece,
    Diff >= 0,
    Rendu is Piece.

% Cas 1 : La valeur demandee est plus  que la piece actuelle
monnaie(Valeur,[Piece|L],Rendu):- 
    Diff is Valeur - Piece,
    Diff =< 0,
    monnaie(Valeur,L,Rendu).

% Regle : rend/3
% Usage : calcul les pieces a rendre
% param 1 : L'argent donne
% param 2 : Le prix de l'objet
% param 3 : la monnaie rendue
% Cas 1 : Le prix et l'argent sont identique : pas de rendu
rend(X,X,[]).

% Cas 2 : L'argent et le prix valent 0 : il n'y a plus rien a rendre
rend(Argent, Prix, []):- Argent =< 0, Prix =< 0.

% Cas 3 : On fait la difference entre l'argent et ce qu'il y a a rendre 
rend(Argent, Prix, Rendu):- 
    ArgentRound is (round(Argent * 100.0))/100.0, % correction des imprecision
    PrixRound is (round(Prix * 100.0))/100.0, % correction des imprecision
    Diff is ArgentRound - PrixRound, 
    % Liste des possibilites de rendu 
    monnaie(Diff,[50,20,10,5,2,1,0.5,0.2,0.1,0.05,0.02,0.01],Piece),  
    DiffArgent is ArgentRound - Piece,  
    rend(DiffArgent , PrixRound, ARendre),
    append([Piece], ARendre, Rendu).
