import spgeo;

pair P = dir(120);
pair A = P+4/4*dir(degrees(P)+90);
pair B = P+4/4*dir(degrees(P)-90);

real angle = 132;
pair Q = dir(degrees(P)-angle);
pair R = -P;

draw(P--Q);
draw(unitcircle);
draw(A--B);

//iteration 0+
dot("$O$", O, SW);
label("$A$", A, unit(A-B));
label("$B$", B, unit(B-A));
label("$P$", P, unit(P-Q));
label("$Q$", Q, unit(Q-P));
labelarc(Q, P);

//iteration 1
//draw(P--R);
//markrightangle(R,P,B, 8);
//label("$R$", R, unit(R-P));

//iteration 2
label("$"+(string)angle(Q,P,B)+"^\circ$", P, 3middir(Q,P,B));
