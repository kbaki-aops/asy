import spgeo;

draw(unitcircle);

pair B = dir(degrees(atan(4/7)));
pair A = dir(180-degrees(B));
pair C = dir(180+degrees(atan(8/-1)));
pair D = dir(360-degrees(C));
pair P = intersectionpoint(A--B, C--D);

draw(A--B);
draw(C--D);
label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
label("$D$", D, D);
dot("$O$", O, SE);

label("$6$", A--P);
label("$8$", B--P);
label("$4$", C--P);

draw(rightanglemark(C,P,A, 3));
