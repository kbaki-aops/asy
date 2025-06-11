import spgeo;

unitsize(2cm);

draw(unitcircle);

pair A,B,C,D,D_;
A = dir(137);
B = dir(223);
C = dir(61);
D = 3/2*dir(317);
D_ = intersectionpoint(B--D, unitcircle);

markangle(C,D_,B, radius=10, Fill(palered));
markangle(C,D,B, radius=10, Fill(palered));

draw(A--B--D--C--cycle);
draw(C--D_, dotted+1);

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, NE);
dot("$D$", D, SE);
dot("$D'$", D_, S);
