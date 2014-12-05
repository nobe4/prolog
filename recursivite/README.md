# Récursivité

## Exercice 1
La suite de Fibonacci :
* ``` fibonacci(1) = fibonacci(2) = 1 ```
* ``` fibonacci(N) = fibonacci(n-1) + fibonacci(n-2) ```


```
fibo(1,1).
fibo(2,1).
fibo(N,X):- N1 is N-1,
            fibo(N1, X1),
            N2 is N-2,
            fibo(N2, X2),
            X is X1 + X2.
```

Le prédicat Factorielle :
* ``` factorielle(0) =  1 ```
* ``` factorielle(N) = N * factorielle(n-1) ``` pour N > 0
*

```
facto(0,1).
facto(N,X):- N > 0,
             N1 is N-1
             facto(N1, X1),
             X is X1 * N.
```

## Consignes
Pour chacun des cas, définir les éléments suivants :
* Décomposer récursive en sous-problème
* Identifier les cas particuliers et les cas d'arrêts
* Chercher les modes d'utilisation
* Programmer et vérifier les modes d'utilisation (jeux d'essais complets)

## Exercice 2
Définir de manière récursive un prédicat définissant les nombres positifs entiers impairs.

## Exercice 3
Déterminer du k ième chiffre à partir de la droite d'un entier n > 0 :
* Le 3ième chiffre à partir de la droite de 8724 est 7
* Le 5ième chiffre à partir de la droite de 21327 est 2

Ecrire une fonction récursive chiffre(n, k) qui permet de retourner le k-ième chiffre à partir de la droite de n.
