import spgeo;

real sf = 1/8;

pair P = 17E*sf;
pair T = tangents(circle((point) O, 1), P)[1].B;
pair U = tangents(circle((point) O, 1), P)[0].B;

draw(unitcircle);
draw(T--P);//--U);
draw(O--P);//, stick(2));
draw(O--T);//, stick);
//draw(O--U, stick);
markrightangle(O,T,P, 6);
//markrightangle(O,U,P, 5);

dot("$O$", O, SW);
label("$P$", P, P);
label("$T$", T, T);
//label("$U$", U, U);

label("$8$", T--O);
label(underbrace(length(P), "$17$"), O--P);
