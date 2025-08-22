import spgeo;

pair B,C,D,A,P;

real r0 = 15;
real dr = 60;

pair B = dir(r0+dr);
pair A = dir(r0-dr);

//iter=0
P = W-dir(r0);
C = intersectionpoints(B--P, unitcircle)[0];
D = intersectionpoints(A--P, unitcircle)[1];

//iter=1
//pair P = W+dir(r0);
//pair C = intersectionpoint(P--3(P-B), unitcircle);
//pair D = intersectionpoint(P--3(P-A), unitcircle);

//iter=2
//P = 2W;
//A = dir(120);
//C = A;
//B = dir(240);
//D = B;

//iter=3
//P = N;
//A = dir(300);
//B = P+E;

draw(unitcircle);

//iter=0,1,2
markangle(D,P,C, radius=12, color1+em);
//iter=3
//markangle(A,P,B, radius=12, color1+em);

//iter=0,1
label("$B$", B, unit(B-P));
label("$A$", A, unit(A-P));
//iter=2
//label("$A$", A, A);
//label("$B$", B, B);
//dot("$C$", E, E);
//iter=3
//label("$A$", A, A);
//label("$B$", B, E);
//dot("$C$", W, W);

//iter=0
label("$C$", C, NW);
label("$D$", D, SW);
//iter=1
//label("$C$", C, unit(C-P));
//label("$D$", D, unit(D-P));

//iter=0,2
label("$P$", P, W);
//iter=1
//label("$P$", P, E);
//iter=3
//label("$P$", P, unit(P-A));

//iter=0,1
draw(B--P--C);
draw(D--P--A);

//iter=2,3
//draw(B--P--A);