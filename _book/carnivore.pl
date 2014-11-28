herbivore(chevre).
carnivore(loup).
cruel(X) :- carnivore(X).
mangeHerbe(X) :- herbivore(X).
mangeHerbivore(Carnivore, Herbivore) :-
	herbivore(Herbivore),
	carnivore(Carnivore).
boisEau(Animal) :-
	herbivore(Animal);
	carnivore(Animal).
consomme(Animal) :-
	boisEau(Animal);
	mangeHerbe(Animal);
	mangeHerbivore(Animal,chevre).
