import spgeo;

pair X = 3/4*dir(120);
pair P = X+6/4*dir(degrees(X)+90);
pair R = intersectionpoints(P--(X+4/4*dir(degrees(X)-90)), unitcircle)[1];
pair Q = dir(-40);
pair A = intersectionpoints(R--P, unitcircle)[1];
pair B = intersectionpoint(Q--P, unitcircle);

draw(R--P--Q);
draw(unitcircle);

label("$P$", P, -middir(Q,P,R));
label("$Q$", Q, unit(Q-P));
label("$B$", B, SW);
label("$A$", A, NW);
label("$R$", R, R-P);