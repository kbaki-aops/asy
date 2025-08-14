import geometry;

unitsize(1cm);

circle ca = circle((point) W, 1);
circle cb = circle((point) (2/3E), W+dir(degrees(atan(8/15))), 2dir(degrees(atan(4/3))));
circle cc = circle((point) (2/3E), W+dir(degrees(atan(-8/15))), 2dir(degrees(atan(-4/3))));
circle cd = circle((point) origin, 2);

draw(ca);
draw(cb);
draw(cc);
draw(cd);

label("$A$", ca.C);
label("$B$", cb.C);
label("$C$", cc.C);
label("$D$", 2NW, NW);
