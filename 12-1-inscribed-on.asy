import spgeo;

unitsize(2cm);

real r = 23;
pair A,B,C;
A = dir(120+r);
B = dir(240+r);
C = dir(60+r);

draw(unitcircle);
dot("$O$", O, SE);

markangle(C,B,A, radius=21, Fill(palered));
markangle(B,A,O, radius=21, Fill(palered));
markangle(A,C,O, radius=19, Fill(paleyellow));
markangle(O,A,C, radius=19, Fill(paleyellow));
draw(arc(O, 1, degrees(C), degrees(A)), blue+1);

dot("$A$", A, NW);
dot("$B$", B, S);
dot("$C$", C, N);
draw(A--B--C--cycle);

draw(O--A, StickIntervalMarker(1));
draw(O--B, StickIntervalMarker(1));
draw(O--C, StickIntervalMarker(1));
