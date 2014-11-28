# Unification

* ``` pierre = marie ``` : Non
* ``` pierre = pierre ``` : Oui
* ``` X = jean ``` : Oui
* ``` X = hemisphere(indien, nord) ``` : Oui
* ``` jean = X ``` : Non
* ``` pierre = aime(marie, chocolat) ``` : Non
    * arité : 1 **vs** arité : 2
* ``` aime(marie, chocolat) = aime(pierre, nougatine) ``` : Non
* ``` aime(X, chocolat) = aime(pierre , chocolat) ``` : Oui
    * Sig = {(X, pierre)}
* ``` aime(X, chocolat) = aime(pierre, Y) ``` : Oui
    * Sig = {(X, pierre), (Y, chocolat)}
* ``` pere(X, marie) = pere(Therese, Y) ``` : Oui
    * Sig = {(X, Therese), (Y, marie)}
    * Therese est une variable
* ``` pere(paul, marie) = pere(Therese, Y) ``` : oui
    * Sig = {(Therese = paul), (Y = marie)}
* ``` X = pere(paul, marie) ``` : oui
    * Sig = { (X, pere(paul, marie))}
* ``` plus(S(X), Y, S(Z)) = plus(U, V, s(s(s(O)))) ```
    * S(X) = U
    * Y = V
    * S(Z) = S(S(S(O)))
    * Z = S(S(O))
        * Sig = {(X,S(U)), (Y,V), (Z,S(S(O)))}


