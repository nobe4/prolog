% Predicat : change/2
% Usage : Liste les transition possibles : l -> r et r -> l
transition(r,l).
transition(l,r).

% Regle : deplace/3
% Usage : Effectue le deplacement d'un element
% param 1 : configuration de base
% param 2 : element a deplacer
% param 3 : configuration finale
% cas 1 : on deplace le loup
deplace([X,X,Chevre,Chou],loup,[Y,Y,Chevre,Chou]) :-
  transition(X,Y).
% cas 2 : on deplace la chevre
deplace([X,Loup,X,Chou],chevre,[Y,Loup,Y,Chou]) :-
  transition(X,Y).
% cas 3 : on deplace le chou
deplace([X,Loup,Chevre,X],chou,[Y,Loup,Chevre,Y]) :-
  transition(X,Y).
% cas 4 : on ne deplace rien
deplace([X,Loup,Chevre,C],rien,[Y,Loup,Chevre,C]) :-
  transition(X,Y).

% Regle : unEgal/3
% Usage : Verifie que deux elements sur trois sont identiques
unEgal(X,X,_).
unEgal(X,_,X).

% Regle : enSecurite/1
% Usage : Verifie que l'homme protege bien le chou et la chevre
enSecurite([Homme,Loup,Chevre,Chou]) :-
  unEgal(Homme,Chevre,Loup),
  unEgal(Homme,Chevre,Chou).

% Regle : solution/2
% Usage : Calcul les solutions du probleme
% param 1 : la configuration initiale
% param 2 : la liste des transitions
solution([l,l,l,l],[]).
solution(Config,[Transition|Reste]) :-
  deplace(Config,Transition,ProchaineConfig),
  enSecurite(ProchaineConfig),
  solution(ProchaineConfig,Reste).
