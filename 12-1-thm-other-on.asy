import spgeo;

draw(unitcircle);

pair A = W;
pair B = dir(60);
pair C = E;

markangle(O,A,B, radius=15);

draw(A--O, blue, StickIntervalMarker(1,1, blue));
draw(B--O, blue, StickIntervalMarker(1,1, blue));
draw(C--O, blue, StickIntervalMarker(1,1, blue));

draw(arc(O, 1, degrees(C), degrees(B)));
draw(A--B);
draw(B--C, blue);

label("$x$", A, 5.5dir(15));
label("$2x?$", C--B, 3.5dir(30));

dot("$A$", A, W);
dot("$B$", B, NE);
dot("$C$", C, E);
dot("$O$", O, S);
