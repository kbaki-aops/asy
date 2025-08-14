import spgeo;

real sf = 1/9;

path c = circle(O, sf*9);
pair A = sf*9N;
pair P = A+sf*12E;

pair B = intersectionpoint(P--O, c);
pair C = -B;

draw(c);
draw(C--P--A);
label("$A$", A, unit(A));
label("$P$", P, unit(P));
label("$B$", B, 1.5E);
label("$C$", C, unit(C));
dot("$O$", O, SE);

write(144/18);
write(length(P-B)/sf);
