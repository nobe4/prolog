# Arbre de résolution

### Connaissances
```prolog
ile(crozet, france, indien).
ile(georgie, ru, atlantique).
ile(francois, russie, arctique).
ile(ellesmere, canada, arctique).
hemisphere(indien, sud).
hemisphere(atlantique, sud).
hemisphere(arctique, nord).
possession(Pays, Hemisphere):-
ile(NomIle, Pays, Ocean),
hemisphere(Ocean, Hemisphere).
```
### Questions
1. ```possession(france, sud).```
2. ```possession(russie, sud).```
3. ```possession(X, nord).```

### Résolutions
* ```possession(france, sud).```
    * Lecture de 8
    * ```ile(NomIle, france, Ocean), hemisphere(Ocean, sud)```
        * Lecture de 1
        * ```NomIle = crozet```
        * ``` Ocean = indien```
            * Vérification
            * ```hemisphere(indien, sud).```
                * True

* ```possession(russie, sud).```
    * Lecture de 8
    * ```ile(NomIle, russie, Ocean), hemisphere(Ocean, sud)```
        * Lecture de 3
        * ```NomIle = francois```
        * ``` Ocean = arctique```
            * Vérification
            * ```hemisphere(arctique, sud).```
                * False

* ```possession(X, nord).```
    * Lecture de 8
    * ```ile(NomIle, france, Ocean), hemisphere(Ocean, sud)```
        1. Lecture de 1
            * ```NomIle = crozet```
            * ```Pays = france```
            * ``` Ocean = indien```
                * Vérification
                * ```hemisphere(indien, nord).```
                    * False
        2. Lecture de 2
            * ```NomIle = georgie```
            * ```Pays = ru```
            * ``` Ocean = atlantique```
                * Vérification
                * ```hemisphere(atlantique, nord).```
                    * False
        3. Lecture de 3
            * ```NomIle = francois```
            * ```Pays = russie```
            * ``` Ocean = arctique```
                * Vérification
                * ```hemisphere(arctique, nord).```
                    * True
                    * **Attention** : Prolog interrompt ses recherches à la première solution trouvé, ajouter `;` pour le forcer à continuer
        2. Lecture de 4
            * ```NomIle = ellesmere```
            * ```Pays = canada```
            * ``` Ocean = arctique```
                * Vérification
                * ```hemisphere(arctique, nord).```
                    * True
