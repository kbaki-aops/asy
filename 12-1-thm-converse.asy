import spgeo;

draw(unitcircle);

pair A = dir(251);
pair B = dir(139);
pair C = dir(23);
pair D = dir(71);

draw(B--A--C);
draw(B--O--C);

draw(A--D);

draw(arc(O, 1, degrees(D), degrees(B)), red);
draw(arc(O, 1, degrees(C), degrees(D)), blue);

label("$x$", D--B, 4N, red);
label("$x$", O, 3N+0.5W, red);
label("$y$", C--D, 2NE, blue);
label("$y$", O, 3NE, blue);

dot("$A$", A, S);
dot("$B$", B, NW);
dot("$C$", C, NE);
dot("$D$", D, N);
dot("$O$", O, dir(210));

//label("$x+y$", A, 4dir(87.5));
//label("$2x+2y$", O, 4dir(102.5));
