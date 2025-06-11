size(100);
pair O = (0,0);
pair P,A,B,C,D,F;
A = dir(110);
B = dir(100);
C = dir(70);
D = dir(0);
F = dir(310);

draw(circle(O, 1));
draw(C--F);
draw(B--D);
draw(A--F);

dot("$A$", A, W);
dot("$B$", B, SE);
dot("$C$", C, NE);
dot("$D$", D);
dot("$F$", F);

pair G = extension(D, B, F, A);
draw(A--G);
draw(B--G);
draw(C--G);

dot("$G$", G, NW);
