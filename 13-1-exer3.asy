import spgeo;

draw(unitcircle);

pair B = S;
pair C = N;
pair A = S+sqrt(2)*W;
pair D = intersectionpoints(A--C, unitcircle)[0];

draw(A--B--C--cycle);

dot("$A$", A, SW);
dot("$B$", B, SE);
dot("$C$", C, N);
dot("$D$", D, E);
dot("$O$", O, SE);

label("$1$", D--A);
label("$2$", C--D);

draw(rightanglemark(A,B,C, 5));
