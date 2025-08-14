import spgeo;

draw(unitcircle);

pair P = 7/4*W;
pair A = tangent(P, O, 1, 2);
pair D = tangent(P, O, 1, 1);
pair B = dir(degrees(D)-180);
pair C = dir(-20);
pair X = intersectionpoint(A--C, B--D);

dot("$O$", O, W);
dot("$P$", P, W);
dot("$A$", A, NW);
dot("$B$", B, NE);
dot("$C$", C, SE);
dot("$D$", D, SW);
dot("$X$", X, 2E);

draw(P--A);
draw(P--D);
draw(A--C);
draw(B--D);

real between(path p, path q) {
  return degrees(dir(p))-degrees(dir(q));
}

label("$70^\circ$", N, N);
label("$80^\circ$", dir(15), E);

write(between(O--B, O--C));
