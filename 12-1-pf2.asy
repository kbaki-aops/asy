import spgeo;

draw(unitcircle);

pair A = dir(250);
pair B = dir(160);
pair C = dir(100);

//markangle(O,A,B, radius=15, Fill(palered));
//markangle(A,B,O, radius=15, Fill(palered));
//markangle(2, C,A,O, radius=13.5, blue);
//markangle(2, O,C,A, radius=13.5, blue);

draw(B--A--C);
draw(O--A, blue, stick(blue));
draw(O--B, blue, stick(blue));
draw(O--C, blue, stick(blue));

//label("$x$", A, 5dir(-5+degrees((O-A + B-A))), red);
//label("$x$", B, 5dir(3+degrees((O-B + A-B))), red);
//label("$y$", A, 5dir(1+degrees((O-A + C-A))), blue);
//label("$y$", C, 5dir(-2+degrees((O-C + A-C))), blue);

label("$B$", B, B);
label("$A$", A, A);
label("$C$", C, C);
dot("$O$", O, -B);
