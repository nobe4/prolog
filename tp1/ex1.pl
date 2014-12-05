%% Predicats
% Titre : Definition du predicat homme
% Prédicat :homme/1
% Usage : homme(X) defini que X est un homme.
homme(simon).
homme(bruno).
homme(auguste).
homme(eric).
homme(christian).
homme(marcel).
homme(gerard).
homme(franck).
homme(charles).

% Titre : Definition du predicat femme
% Prédicat :femme/1
% Usage : femme(X) defini que X est une femme.
femme(marie).
femme(noemie).
femme(rolande).
femme(augustine).
femme(solange).
femme(christine).
femme(lea).
femme(gisele).
femme(monique).
femme(sonya).
femme(amandine).

% Titre : Definition du predicat conjoint
% Prédicat :conjoint/2
% Usage : conjoint(X,Y) defini que X est le conjoint de Y.
conjoint(marie, simon).
conjoint(noemie, bruno).
conjoint(rolande, auguste).
conjoint(solange, christian).
conjoint(christine, gerard).
conjoint(franck, lea).

% Titre : Definition du predicat enfant
% Prédicat :enfant/3
% Usage : enfant(X,Y,Z) defini que X est l'enfant de Y et de Z.
enfant(bruno, marie, simon).
enfant(rolande, marie, simon).
enfant(augustine, marie, simon).
enfant(eric, marie, simon).
enfant(christian, noemie, bruno).
enfant(marcel, noemie, bruno).
enfant(gerard, rolande, auguste).
enfant(franck, rolande, auguste).
enfant(gisele, solange, christian).
enfant(monique, christine, gerard).
enfant(sonya, christine, gerard).
enfant(amandine, christine, gerard).
enfant(charles, lea, franck).

%% Regles
% Titre : Definition du predicat parent
% Prédicat : parent/2
% Usage : parent(X,Y) defini que X est parent de Y.
parent(X,Y) :- enfant(Y,X,_).
parent(X,Y) :- enfant(Y,_,X).


% Titre : Definition du predicat grand_parent
% Prédicat : grand_parent/2
% Usage : grand_parent(X,Y) defini que X est grand-parent de Y.
grand_parent(X,Y) :- parent(X,T), parent(T,Y).

% Titre : Definition du predicat est_mere
% Prédicat : est_mere/1
% Usage : mere(X) defini que X est_mere.
est_mere(X) :- enfant(_,X,_), femme(X).


% Titre : Definition du predicat est_pere
% Prédicat : est_pere/1
% Usage : mere(X) defini que X est_pere.
est_pere(X) :- enfant(_,_,X), homme(X).


% Titre : Definition du predicat est_enfant
% Prédicat : est_enfant/2
% Usage : est_enfant(X,Y) defini que X est enfant de Y.
est_enfant(X,Y) :- parent(Y,X).


% Titre : Definition du predicat fille
% Prédicat : fille/2
% Usage : fille(X,Y) defini que X est la fille de Y.
fille(X,Y) :- femme(X), est_enfant(X,Y).

% Titre : Definition du predicat fils
% Prédicat : fils/2
% Usage : fils(X,Y) defini que X est le fils de Y.
fils(X,Y) :- homme(X), est_enfant(X,Y).

% Titre : Definition du predicat soeur
% Prédicat : soeur/2
% Usage : soeur(X,Y) defini que X est la soeur de Y.
soeur(X,Y) :- enfant(X,Z,T), enfant(Y,Z,T), X \== Y, femme(X) .

% Titre : Definition du predicat frere
% Prédicat : frere/2
% Usage : frere(X,Y) defini que X est le frere de Y.
frere(X,Y) :- enfant(X,Z,T), enfant(Y,Z,T), X \== Y, homme(X).

% Titre : Definition du predicat frere_ou_soeur
% Prédicat : frere_ou_soeur/2
% Usage : frere_ou_soeur(X,Y) defini que X est le frere ou la soeur de Y.
frere_ou_soeur(X,Y) :- soeur(X,Y).
frere_ou_soeur(X,Y) :- frere(X,Y).

% Titre : Definition du predicat oncle
% Prédicat : oncle/2
% Usage : oncle(X,Y) defini que X est l'oncle de Y.
oncle(X,Y) :- frere(X,Z), est_enfant(Y,Z).

% Titre : Definition du predicat tante
% Prédicat : tante/2
% Usage : tante(X,Y) defini que X est la tante de Y.
tante(X,Y) :- soeur(X,Z), est_enfant(Y,Z).

% Titre : Definition du predicat cousin
% Prédicat : cousin/2
% Usage : cousin(X,Y) defini que X est le cousin de Y.
cousin(X,Y) :- oncle(Z,X), est_enfant(Y,Z).
cousin(X,Y) :- tante(Z,X), est_enfant(Y,Z).

% Titre : Definition du predicat ancetre
% Prédicat : ancetre/2
% Usage : ancetre(X,Y) defini que X est le ancetre de Y.
ancetre(X,Y) :- parent(X,Y).
ancetre(X,Y) :- parent(X,Z), ancetre(Z,Y).
