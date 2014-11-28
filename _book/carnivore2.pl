herbivore(chevre).
carnivore(loup).
carnivore(X):-cruel(X).
manger(X, viande):-carnivore(X).
manger(X, herbe):-herbivore(X).
manger(X, Y):-carnivore(X), herbivore(Y).
boire(X, eau):-carnivore(X).
boire(X, eau):-herbivore(X).
consomme(X,Y):-boire(X,Y).
consomme(X,Y):-mange(X,Y).
