import spgeo;

draw(unitcircle);

pair B = randdir(1);
pair A = randdir(2);
pair C = dir(degrees(A)+180);

draw(B--A--C);

label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
dot("$O$", O, -B);

labelarc(B, A);
//labelarc(A, C);
