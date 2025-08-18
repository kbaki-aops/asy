import spgeo;

real sf = 0.5;

real d = 140;
real fd = 70;

circle c = circle((point) O, 1*sf);

pair C = sf*S;
pair D = sf*dir(d);
pair F = sf*dir(d-fd);
pair A = intersectionpoint(tangents(c, D)[0], tangents(c, C)[0]);
pair B = intersectionpoint(line(C, F), line(A, D));

draw(c);
label("$A$", A, unit(A-C));
label("$B$", B, unit(B-C));
label("$C$", C, C);
label("$D$", D, D);
label("$F$", F, unit(F-A));

draw(C--A--B--F--cycle);

write(angle(F,B,D));
write(angle(F,O,D));
write(angle(C,O,F));
