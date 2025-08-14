import spgeo;

int x = 32;
int y = 84;

draw(unitcircle);

pair A = S;
pair B = dir(90+x);
pair C = dir(90-x);
pair D = dir(90+x+y);
pair E = dir(90-x-y);
pair F = intersectionpoint(A--B, C--D);
pair G = intersectionpoint(A--C, B--E);

draw(B--D--C--A--B--E--C);
draw(F--B, StickIntervalMarker(1,1, 5));
draw(F--D, StickIntervalMarker(1,1, 5));
draw(G--C, StickIntervalMarker(1,2, 5));
draw(G--E, StickIntervalMarker(1,2, 5));

dot("$A$", A, S);
dot("$B$", B, N);
dot("$C$", C, N);
dot("$D$", D, SW);
dot("$E$", E, SE);
dot("$F$", F, dir(165));
dot("$G$", G, dir(15));

label("$"+(string)y+"^\circ$", E--C, 5dir(15));
label("$"+(string)y+"^\circ$", B--D, 5dir(165));
label("$x$", A, 4N);
