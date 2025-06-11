import spgeo;

unitsize(2cm);

real r = 17;
pair A,B,C;
A = dir(120+r);
B = dir(240+r);
C = dir(0+r);

draw(unitcircle);
dot("$O$", O, SE);

//markangle(C,B,A, radius=20, Fill(palered));
markangle(C,B,O, radius=21, Fill(paleyellow));
markangle(O,C,B, radius=21, Fill(paleyellow));
markangle(O,B,A, radius=19, Fill(palegreen));
markangle(B,A,O, radius=19, Fill(palegreen));
draw(arc(O, 1, degrees(C), degrees(A)), blue+1);

dot("$A$", A, NW);
dot("$B$", B, S);
dot("$C$", C, E);
draw(A--B--C);

//quit();

draw(O--A);
draw(O--B);
draw(O--C);

//quit();

draw(O--A, StickIntervalMarker(1));
draw(O--B, StickIntervalMarker(1));
draw(O--C, StickIntervalMarker(1));
