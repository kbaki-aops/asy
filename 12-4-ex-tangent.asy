import spgeo;

pair P = dir(120);
real angle = 90;
pair A = P+dir(degrees(P)+(180-angle));
pair B = P+dir(degrees(P)-angle);
//pair Q = intersectionpoint(unitcircle, A--B);//+(1/2**5)*dir(45);//P+0.2(P-B);
//pair A = P+0.5dir(degrees(P-Q));
//pair B = Q-0.5dir(degrees(P-Q));
//pair C = A-0.5P;
//pair D = B-0.5P;
//pair Q = intersectionpoints(unitcircle, C--D)[0];
//pair R = intersectionpoints(unitcircle, C--D)[1];

//fill(arc(O, 1, degrees(Q), degrees(R))--cycle, color1);
//fill(arc(O, 1, degrees(R), 360+degrees(Q))--cycle, color2);

//draw(C--D);
draw(A--B);
draw(O--P);
//draw(-0.5Q--1.5Q);
draw(unitcircle);

//markangle(O,P,Q, radius=8);
//markangle(P,Q,O, radius=8);

//draw(O--P, stick);
//draw(O--Q, stick);
markrightangle(B,P,O, 8);

dot("$O$", O, SE);
dot("$P$", P, P);
dot("$A$", A, A);
dot("$B$", B, B);
//dot(Q);
//dot(R);
//dot("$Q$", Q, NE);
//label("$\ell$", B, B-A);
