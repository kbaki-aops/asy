import spgeo;

pair X = dir(120);
pair P = X+4/4*dir(degrees(X)+90);
pair R = X+4/4*dir(degrees(X)-90);
pair Q = dir(20);
pair A = X;
pair B = intersectionpoint(Q--P, unitcircle);

//iter=0
draw(P--Q);
draw(unitcircle);
draw(P--R);
label("$P$", P, unit(P-Q));
label("$Q$", Q, unit(Q-P));
label("$\ell$", R, unit(R-P));

//iter=1
//label("$R$", R, unit(R-P));

//iter=2
//label("$R$", R, unit(R-P));
//label("$A$", A, A);
//label("$B$", B, SW);
