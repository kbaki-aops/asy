import spgeo;

draw(circle(W, 1));
draw(circle(E, 3/2));

pair O1 = W;
pair O2 = E;
path l = intersectionpoints(circle(W, 1), circle(E, 3/2))[0]--intersectionpoints(circle(W, 1), circle(E, 3/2))[1];
pair P = (2/3*point(l,0)+4/3*point(l,1))/2;
pair A = O1+dir(180+degrees(P-O1));
pair B = O1+dir(degrees(P-O1));
pair C = O2+3/2*dir(180+degrees(P-O2));
pair D = O2+3/2*dir(degrees(P-O2));

dot("$O_1$", O1, SW);
dot("$O_2$", O2, SE);
dot("$A$", A, W);
dot("$B$", B, SE);
dot("$C$", C, E);
dot("$D$", D, SW);
dot("$P$", P, NE);

label("$\ell$", point(l, 0)+N/2, W);

draw(point(l,0)+N/2--point(l,1)+S/2);
draw(A--B);
draw(C--D);
