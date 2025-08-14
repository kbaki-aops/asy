import spgeo;

draw(unitcircle);

pair A = dir(260);//randdir(3);
pair B = dir(110);//randdir(2);
pair C = dir(45);//randdir(1);

draw(B--A--C);
draw(B--O--C);

label("$B$", B, B);
label("$A$", A, A);
label("$C$", C, C);
dot("$O$", O, S);

draw(arc(O, C, B), red+1);
