import spgeo;

draw(unitcircle);

pair A = dir(31);
pair C = dir(147);
pair B = dir(223);
pair D = dir(311);
pair P = intersectionpoint(A--B, C--D);

dot("$A$", A, NE);
dot("$B$", B, SW);
dot("$C$", C, NW);
dot("$D$", D, SE);
dot("$P$", P, 2S);

draw(A--B);
draw(C--D);

label("$8$", A--P);
label("$5$", B--P);
label("$10$", C--P);

write(6*length(P-A));
write(6*length(P-B));
write(6*length(P-C));
write(6*length(P-D));
