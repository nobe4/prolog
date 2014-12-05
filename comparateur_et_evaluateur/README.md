# Comparateur et évaluateur
Différence entre = et == : [Stack](http://stackoverflow.com/questions/8219555/what-is-the-difference-between-and-in-prolog)

* ``` x=1+1+1, Y is X ```
    * ` is ` est un évaluateur
* ``` 1+2 = 2+1 ```
    * Faux
        * ``` +(1,2) = +(2,1) ```
* ``` 1+2 == 2+1 ```
    * Faux
* ``` 1+2 =:= 2+1 ```
    * Vrai
        * Evalue et compare
* ``` 1+2 is 2+1 ```
    * Faux
        * Comparaison de `+(1,2)` à 3

* ``` 0 = (10 mod 5) ```
    * Faux
* ``` 0 == (10 mod 5) ```
    * Faux
        * Pas d'évaluation
* ``` 0 =:= (10 mod 5) ```
    * Vrai
* ``` 0 is (10 mod 5) ```
    * Vrai
