import spgeo;

draw(unitcircle);

pair P = 2randdir();
pair T = tangent(P, O, 1);

draw(O--T--P);
draw(rightanglemark(O, T, P, 4));
dot("$O$", O, SW);
dot("$P$", P, P);
