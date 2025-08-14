import spgeo;

draw(unitcircle);

pair B = dir(-30);
pair A = B+2dir(60);
pair C = dir(150);
pair D = intersectionpoint(A--C, unitcircle);
pair F = midpoint(C--D);
pair G = dir(degrees(F));
pair H = dir(180+degrees(F));

dot("$A$", A, NE);
dot("$B$", B, SE);
dot("$C$", C, NW);
dot("$D$", D, N);
dot("$G$", G, N);
dot("$H$", H, S);
dot("$F$", F, dir(-30));
dot("$O$", O, SW);

draw(A--B--C--cycle);
draw(G--H);
draw(rightanglemark(A,B,C, 5));
