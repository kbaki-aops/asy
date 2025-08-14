import spgeo;

unitsize(2cm);

real r = 23;
pair A,B,C;
A = dir(60+r);
B = dir(120+r);
C = dir(240+r);

draw(unitcircle);
dot("$O$", O, SE);

//markangle(B,A,C, radius=19, Fill(paleyellow));
//markangle(O,B,A, radius=19, Fill(paleyellow));
//markangle(C,B,O, radius=21, Fill(palered));
//markangle(O,C,B, radius=21, Fill(palered));

dot("$A$", A, N);
dot("$B$", B, NW);
dot("$C$", C, S);
draw(A--B--C);//--cycle);

draw(O--A);//, StickIntervalMarker(1));
draw(O--B);//, StickIntervalMarker(1));
draw(O--C);//, StickIntervalMarker(1));
