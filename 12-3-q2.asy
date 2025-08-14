import spgeo;

real angle = 35;

pair A = dir(angle);
pair B = dir(180-angle);
pair C = dir(180+angle);
pair D = dir(360-angle);
path quad = A--B--C--D--cycle;

draw(unitcircle);
draw(quad);

label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);
label("$D$", D, D);

// to show \angle A + \angle B = 180
//draw(D+1/4*(D-A)--A+1/4*(A-D), color1, parallel);
//draw(C+1/4*(C-B)--B+1/4*(B-C), color1, parallel);
//draw(A--B, color1);
//markangle(B,A,D, radius=8, color1);
//markangle(2, C,B,A, radius=8, color1);

// to show \angle B + \angle C = 180
//draw(A+1/4*(A-B)--B+1/4*(B-A), color2, parallel);
//draw(D+1/4*(D-C)--C+1/4*(C-D), color2, parallel);
//draw(B--C, color2);
//markangle(2, C,B,A, radius=8, color2);
//markangle(D,C,B, radius=8, color2);

// to show \angle A + \angle B + \angle C = 180
draw(A--B, parallel);
draw(C--B, parallel);
draw(D--C, parallel);
draw(D--A, parallel);
markangle(B,A,D, radius=8);
markangle(2, C,B,A, radius=8);
markangle(D,C,B, radius=8);
