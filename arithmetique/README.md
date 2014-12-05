# Arithmétique

## Exercice 1
Ecrire les prédicats "pair" et "impair" (N est pair si N est divisible par 2)

``` pair(X):- 0 is (X mod 2). ```

``` impair(X):- 1 is (X mod 2). ```

## Exercice 2
Ecrire le prédicat `div2/2` : `div2(NN,N)` s'efface si N est égal à la moité de NN

``` div2(NN,N):-N is NN/2. ```

## Exercice 3 : PGCD
Définir le prédicat pgcd qui permet de calculer le plus grand commun diviseur en utilisant l'algorithme d'Euclide :
* ``` pgcd(a,b) = a if a = b ```
* ``` pgcd(a,b) = pgcd(a-b, b) if a>b ```
* ``` pgcd(a,b) = pgcs(a, b-a) if b<a ```


```prolog
pgcd(A, A, A).
pgcd(A, B, X):- A > B, C is A-B, pgcd(C, B, X).
pgcd(A, B, X):- A < B, C is B-A, pgcd(A, C, X).
```

