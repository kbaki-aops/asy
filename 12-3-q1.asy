import spgeo;

pair A = dir(105);
pair B = W;
pair C = E;
pair M = O;

label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
label("$M$", M, S);

//draw(unitcircle);
draw(A--B--C--cycle);
draw(A--M);
draw(M--B, stick);
draw(M--C, stick);
draw(M--A, stick);
