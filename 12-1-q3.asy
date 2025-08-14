import spgeo;

draw(unitcircle);

pair A = dir(251);
pair B = dir(139);
pair C = dir(23);
pair D = dir(71);

//markangle(A,B,O, radius=15, Fill(palered));
//markangle(O,A,B, radius=15, Fill(palered));
//markangle(2, O,C,A, radius=17.5, blue);
//markangle(2, C,A,O, radius=17.5, blue);

draw(B--A--C);
//draw(B--O--C);
draw(A--O, StickIntervalMarker(1,1));
draw(B--O, StickIntervalMarker(1,1));
draw(C--O, StickIntervalMarker(1,1));
draw(O--D);

dot("$A$", A, S);
dot("$B$", B, NW);
dot("$C$", C, NE);
dot("$D$", D, N);
dot("$O$", O, dir(210));

label("$x$", A, 4dir(87.5), red);
label("$x$", B, 4dir(300), red);
label("$y$", A, 5dir(57.5), blue);
label("$y$", C, 5dir(217.5), blue);
label("$2x$", O, 4dir(102.5), red);
label("$2y$", O, 4dir(47.5), blue);
