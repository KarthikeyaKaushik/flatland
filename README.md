# flatland
Simulating the population growth of the mythical 2D world of Flatland.


Flatland: A Romance of Many Dimensions is a satirical novella by the English schoolmaster Edwin Abbott Abbott. Written pseudonymously by "A Square", the book used the fictional two-dimensional world of Flatland to comment on the hierarchy of Victorian culture, but the novella's more enduring contribution is its examination of dimensions.

In Flatland Abbott describes a society rigidly divided into classes. Social ascent is the main aspiration of its inhabitants, apparently granted to everyone but strictly controlled by the top of the hierarchy. The only measure of social ascent is the number of sides a flatlander possesses. 

The growth of the population of Flatland is an interesting problem. 

1. The world started off as a group of isosceles triangles. The more acute its angle, the worse off on the social scale, the triangle is. We assume that Flatland started off with 100 inhabitants, all having an angle 20 degree.
2. Succeeding triangles gain 1 degree until they reach 60 degree. Of course, triangles die, and not all children increase in angle, some even decrease. Eventually, the population reaches a stage where is at least one equilateral triangle. Also, to maintain social order, the number of flatlanders possessing more acute angles is higher than those possessing higher angles/greater number of sides. ie., number of elite flatlanders < number of not-so-elite flatlanders.
3. Beyond the stage of triangles, things get really interesting. An equilateral triangle transforms into a square, a square into a regular pentagon, a pentagon into a hexagon and so on... But the fertility of these individuals reduces as they move up the social heirarchy. Also, the rate of ascent, ie., the jump in the number of sides increases in proportion to current social standing. ie., It is very rare for a 500 sided polygon to reproduce, but when reproduction does occur, the child has not 501 sides, but something much larger, say 700 sides. 
4. Highest in society is the priestly class, members of which have achieved so large a number of sides, that they resemble a circle for all practical purposes. 

The idea of this simulation is to calculate the number of generations required to get to a high priest possessing 2000 sides, considering random mutations, deaths, and variable ascent. Also, it is fun to play God. ;) 
