import spgeo;

real c = 8;

draw(circle(O, sqrt(73)/c));
pair A = sqrt(73)/c*N;
pair D = sqrt(73)/c*S;
pair P = intersectionpoints(circle(A, 18/c), circle(D, 16/c))[1];
pair B = intersectionpoints(A--P, circle(O, sqrt(73)/c))[1];
pair C = intersectionpoints(D--P, circle(O, sqrt(73)/c))[1];

draw(A--P--D);
dot("$A$", A, N);
dot("$B$", B, NE);
dot("$C$", C, SE);
dot("$D$", D, S);
dot("$P$", P);

label("$10$", A--B);
label("$8$", P--B);
label("$7$", C--D);

markangle("$60^\circ$", B,P,C, radius=12);
