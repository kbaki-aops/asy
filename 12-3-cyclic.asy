import spgeo;

// for proof
pair A = dir(46);
pair B = dir(157);
pair C = dir(226);
pair D = dir(292);

// for end-of-lesson problem
//pair A = dir(47);
//pair B = dir(168);
//pair C = dir(266);
//pair D = dir(322);
path q = A--B--C--D--cycle;

//draw(unitcircle);

// for proof
draw(arc(O, 1, degrees(B), degrees(D)), color1);
markangle(B,A,D, radius=8, color1);
draw(arc(O, 1, degrees(D)-360, degrees(B)), color2);
markangle(D,C,B, radius=8, color2);

draw(q);
label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
label("$D$", D, D);
