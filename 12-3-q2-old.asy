import spgeo;

draw(unitcircle);

int a = 11;
int b = 5;
int c = 4;
pair A = O;
pair B = (a-b)/a*E;
pair X = E;
pair C = (1/3, sqrt((a-c)^2-(1/3)^2))/a;
pair Y = dir(degrees(C));

draw(circle(B, b/a));
draw(circle(C, c/a));
draw(Y--A--X);
draw(B--C);

dot("$A$", A, SW);
dot("$B$", B, S);
dot("$C$", C, W);
label("$X$", X, X);
label("$Y$", Y, Y);
