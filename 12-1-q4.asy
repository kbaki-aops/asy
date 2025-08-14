import spgeo;

draw(unitcircle);

pair A = dir(251);
pair B = dir(139);
pair C = dir(23);
pair D = dir(71);

draw(B--A--C);
//draw(B--O--C);

dot("$A$", A, S);
dot("$B$", B, NW);
dot("$C$", C, NE);
dot("$O$", O, dir(210));

//label("$x+y$", A, 4dir(87.5));
//label("$2x+2y$", O, 4dir(102.5));
