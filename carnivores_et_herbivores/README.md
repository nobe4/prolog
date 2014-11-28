# Carnivores et Herbivores

### Connaissances

* La chèvre est un animal herbivore
* Le loup est un animal carnivore
* Un animal cruel est carnivore
* Un animal carnivore mange de la viande
* Un animal herbivore mange de l'herbe
* Un animal carnivore mange des animaux herbivore
* Les herbivores et les carnivores boivent de l'eau
* Un animal consomme ce qu'il boit ou ce qu'il mange

### Questions

1. Y a-t-il un animal cruel et que consomme t-il ?

### Instructions

```prolog
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
```
### Résultats
