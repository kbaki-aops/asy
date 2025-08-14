import spgeo;

pair A = randdir(1);
pair B = dir(degrees(A)+60);

fill(B--A--arc(O, 1, degrees(A), degrees(B))--cycle, color1);
draw(unitcircle);
draw(A--B);

label("$A$", A, A);
label("$B$", B, B);
label("$4$", B--A, -dir(mean(degrees(A),degrees(B))));
dot("$O$", O, S);
labelarc(A, B);
