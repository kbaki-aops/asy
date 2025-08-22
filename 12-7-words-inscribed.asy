import spgeo;

real r0 = 45;
real dr = 45;
pair A = dir(r0+dr);
pair B = dir(r0+180);
pair C = dir(r0-dr);

draw(unitcircle);
draw(A--B--C);
markangle(C,B,A, radius=16, color1+em);