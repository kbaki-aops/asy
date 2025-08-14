import spgeo;

pair A, B, C, D, E, F;

A = (1,0);
B = (0,0);
C = (0,1);
D = (1,1);
E = C + dir(135);
F = extension(D,E,A,B);

draw(A--D--C--B--F--E--C);

dot("$A$", A, S);
dot("$B$", B, SW);
dot("$C$", C, SW);
dot("$D$", D, NE);
dot("$E$", E, NW);
dot("$F$", F, SE);

write(length(E-D)/length(D-F));
