# Atelier sur les animations 2D

*De la formule v = d / t aux fonctions easing*

Prérequis : 
- Comprendre que le processus d'affichage d'un jeu tourne au sein d'une boucle infinie. Et que  traitement et l'affichage sont souvent séparés.
- Comporendre la notion de delta time

Objectif de l'atelier : 
- Trouver de l'utilité dans la formule de vitesse
- À quoi servent des fonctions easing.
- Rôle principal des fonctions easing : faire des animations douces

refs : http://robertpenner.com/easing/


(brouillons) : 
```txt
v = d / t
position à partir d'une vitesse constante : d = v * t

Animer un camion en ligne droite (pdv programmeur):  x = vitesse (v) * temps écoulé (t)

La formule de la vitesse est très pratique dans l'écriture de mini-jeux par exemple.

Mais pour faire des animations avec beaucoup de constantes, on va plutôt se servir de fonctions dites "easing".

Ex : sur notre fenêtre graphique, animer un camion pour aller d'un point initial (x_i) à un point final (x_f) en 2.5 secondes, toujours en ligne droite.


-- Annexe démonstration qui ne sera pas expliquée --
x = v * t + x0

Seule v est inconnue.
on sait que  v = d / t
soit d'un pdv programmeur v = changement / durée
On a trouvé v.

donc x = changement/durée * temps parcourus + x0
ou plus simplement : x = changement * temps / durée + x0

Création d'une fonction easing :

function linear(time, begin, change, duration) {
	return change * time / duration + begin;
}
-- fin annexe --

```
