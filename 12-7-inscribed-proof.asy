import spgeo;

real r0 = 45;
real dr = 45;
pair A = dir(r0+dr);
pair B = dir(r0+180);
pair C = dir(r0-dr);

draw(unitcircle);
dot("$O$", O, NE);
draw(A--B--C);
draw(O--A, stick);
draw(O--B, stick);
draw(O--C, stick);
draw(arc(O, 1, degrees(A), degrees(C)), color1+em);

//iter=0
//markangle(C,B,A, radius=16, color1+em);

//iter=1
markangle(O,B,A, radius=18, color2+em);
markangle(B,A,O, radius=18, color2+em);
markangle(C,B,O, radius=14, color3+em);
markangle(O,C,B, radius=14, color3+em);