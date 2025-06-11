import spgeo;

unitsize(2cm);

real r = 17;
pair A,B,C;
A = dir(120+r);
B = dir(210+r);
C = dir(60+r);

draw(unitcircle);

markangle(C,B,A, radius=20, Fill(palered));
//markangle(O,B,C, radius=21, Fill(paleyellow));
//markangle(B,C,O, radius=21, Fill(paleyellow));
draw(arc(O, 1, degrees(C), degrees(A)), blue+1);


//quit();

//markangle(O,B,A, radius=23, heavygreen+1);

draw(B--C);
draw(O--A, white+3);
draw(O--A);
draw(O--B);
draw(O--C);
draw(A--B);

//markangle(B,A,O, radius=23, heavygreen+1);

//quit();

draw(O--A, StickIntervalMarker(1));
draw(O--B, StickIntervalMarker(1));
draw(O--C, StickIntervalMarker(1));

dot("$A$", A, NW);
dot("$B$", B, SW);
dot("$C$", C, NE);
dot("$O$", O, SE);
