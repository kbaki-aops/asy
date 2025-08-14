import spgeo;

draw(unitcircle);

pair A,B,C,B_,C_;
B = dir(30);
C = dir(-30);
B_ = dir(190);
C_ = dir(170);
A = intersectionpoint(B--B_, C--C_);

draw(B_--B--C--C_);

dot("$O$", O);
dot("$A$", A, S);
dot("$B$", B, NE);
dot("$C$", C, SE);

label("$12^\circ$", W, W);
label("$60^\circ$", E, E);
