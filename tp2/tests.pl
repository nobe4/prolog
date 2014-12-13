% Test pour l'exercice 3 dans le fichier ex3.pl

remplace(a, z, [a, b, r, a, c], L2).
> L2 = [z, b, r, z, c]
L2 = [z, b, r, a, c]
L2 = [a, b, r, z, c]
L2 = [a, b, r, a, c]

entier_liste(1789,R).
> R = [1, 7, 8, 9]

entier_liste(0110,R).
> R = [0, 1, 1, 0]

inverse([a,b,c],[c,b,a]).
> true

inverse([a,b,c],R).
> R = [c, b, a]

palindromeNb([1,2,1]).
> true

palindromeNb([1,2,2,1]).
> true

anagrame(algorithme,logarithme).
> true

solve([Z,E,R,O],[Z,E,R,O],[R,I,E,N]).
> Z = 4,
E = 8,
R = 9,
O = 1,
I = 7,
N = 2.

solve([0,L,O,G,I,C],[0,L,O,G,I,C],[P,R,O,L,O,G]).
> L = 9,
O = 0,
G = 4,
I = 5,
C = 2,
P = 1,
R = 8 .

conversion([v,i,i],X).
> X = 7 .

conversionNormal(101).
> CI.
