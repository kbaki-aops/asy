import spgeo;

real r = 2/2;
real d = 1/3;

path o1 = circle(O, r);
path o2 = circle(O, r+d);
path o3 = circle(O, r+2d);
for (path o: new path[] {o1, o2, o3}) {
  draw(o);
}

pair A = (r+2d)*dir(120);
pair D = (r+2d)*dir(360-degrees(A));
pair B = intersectionpoints(A--D, o1)[0];
pair C = intersectionpoints(A--D, o1)[1];

dot("$A$", A, A);
dot("$B$", B, B);
dot("$C$", C, C);
dot("$D$", D, D);
dot("$O$", O, SE);
draw(A--D);
