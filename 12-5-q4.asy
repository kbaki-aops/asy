import spgeo;

real FD = 60;
real DC = 80;
real FQD = 55;

pair A = dir(200);
pair F = dir(180-degrees(A));
pair D = dir(FD+degrees(F));
pair C = dir(DC+degrees(D));
pair Q = extension(C, F, D, D+dir(degrees(F-C)+FQD));
pair B = intersectionpoint(Q--Q+2(Q-D), unitcircle);
pair R = extension(F, A, D, B);
pair P = extension(B, R, C, C+dir(degrees(F-C)-third(FQD, angle(A,R,B))));

draw(unitcircle);
draw(arc(O, 1, degrees(A), degrees(F)), color1);
draw(D--R--F--C--P);

label("$A$", A, unit(SW));
label("$B$", B, unit(NW));
label("$C$", C, unit(C));
label("$D$", D, unit(D));
label("$F$", F, unit(F));
label("$P$", P, unit(NW));
label("$Q$", Q, middir(B,Q,F));
label("$55^\circ$", Q, 3middir(F,Q,D));
label("$R$", R, unit(R));

labelarc(F, D);
labelarc(D, C);
markangle(A,R,B);
markangle(B,P,C);

// iter=1
labelarc(C, B, false);
// iter=2
labelarc(B, A);
