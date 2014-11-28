# Manger des fruits

### Connaissances

* Adam aime les pommes
* Clara aime les carottes
* Olivier aime les oranges
* Les pommes et les oranges sont des fruits
* Les carottes sont des légumes
* Ceux qui aiment les fruits sont en bonne santé

### Questions

1. Qui est en bonne santé
2. Qui aimes les pommes
3. Quels sont les fruits que connait le programme

### Instructions

```prolog
aime(adam, pommes).
aime(clara, carottes).
aime(olivier, oranges).
fruits(pommes).
fruits(oranges).
legumes(carottes).
bonnesante(X):-aime(X,Y), fruits(Y).
```
### Résultats

Requêtes|Résultats
--------|---------
`bonnesante(X).`|adam ; olivier
`aime(X, pommes).`|adam
`fruits(X).`|pommes, oranges
