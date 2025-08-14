import spgeo;

pair P = dir(120);
real angle = 40;

pair Q = dir(degrees(P)-angle);
pair A = P+0.5dir(degrees(P-Q));
pair B = Q-0.5dir(degrees(P-Q));

draw(A--B);
draw(O--P);
//draw(-0.5Q--1.5Q);
draw(unitcircle);

dot("$O$", O, SE);
dot("$P$", P, P);
dot("$Q$", Q, NE, color1);
label("$\ell$", B, B-A);

markangle(O,P,Q, radius=8);
//markangle(P,Q,O, radius=8);

//draw(O--P, stick);
//draw(O--Q, stick);
