import spgeo;

draw(unitcircle);

pair A,B,C;

A = W;
B = dir(180-2degrees(acos(3/5)));
C = E;

//draw(A--C, blue+1);

//draw(arc(O, 1, degrees(A), degrees(C)+360));

dot("$A$", A, W);
dot("$B$", B, N);
dot("$C$", C, E);
draw(rightanglemark(C,B,A, 5));

draw(A--B--C);
draw(A--C);

label("$6$", B--C);
label("$8$", B--A);
//label("$5$", A--O, blue);
//label("$5$", O--C, blue);
label("$10$", A--C);
//label("$180^\circ$", S, S);

//dot("$O$", O, S, blue);
