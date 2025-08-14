import spgeo;

draw(unitcircle);

pair A = dir(251);
pair B = dir(101);
pair C = dir(37);

markangle(C,A,B, radius=10, Fill(palered));
markangle(C,O,B, radius=10, Fill(palered));

draw(B--A--C);
draw(B--O--C);

draw(arc(O, 1, degrees(C), degrees(B)), red+1);

dot("$A$", A, S);
dot("$B$", B, N);
dot("$C$", C, NE);
dot("$O$", O, S);
