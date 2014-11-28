# Exercices d'introduction

## Exercice 1
Soit le fait `bidule(toto, X, pierre, Y).` Quels sont les noms des relations, leur arité, les noms des objets et les variables apparaissant dans ce fait ? Ce fait est-il clos ?

* Nom : bidule
* Arité : 4
* Objets : toto, pierre
* Variables : X, Y
* Ce fait n'est pas clos
*

## Exercice 2
Représenter à l'aide de faits les connaissances suivantes :
* 5 est impair
    * `impair(5).`
* 5 est supérieur à 3
    * `superieura3(5).`
* Snoopy est un chien
    * `chien('Snoopy').`
* Le cours de programmation logique a lieu le mercredi de 13:30 à 15:30, en grand amphi.
    * `cours('mercredi', '13:30', '15:30', 'grand amphi').`

## Exercice 3
Exprimer, quand c'est possible, les connaissances suivantes sous forme de clauses Prolog :
* Dominique est le père de Jeanne
* Tous les chiens sont des animaux
* Les chiens et les hommes sont des mammifères
* Le successeur d'un entier est un entier
* La relation `frere(X,Y)` X est le frère de Y est symétrique
