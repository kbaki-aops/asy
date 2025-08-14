import spgeo;

path O1 = unitcircle;
path O2 = circle(W, 2/3);

pair A = intersectionpoints(O1, O2)[0];
pair B = intersectionpoints(O1, O2)[1];
pair C = W+2/3*dir(220);
pair D = dir(40);
pair P = intersectionpoint(A--B, C--D);
pair F = intersectionpoint(C--P, O1);
pair G = intersectionpoint(P--D, O2);

draw(O1);
draw(O2);
draw(A--B);
draw(C--D);

dot("$A$", A, 2N);
dot("$B$", B, 2S);
dot("$C$", C, SW);
dot("$D$", D, NE);
dot("$P$", P, SE);
dot("$F$", F, dir(150));
dot("$G$", G, dir(-30));
