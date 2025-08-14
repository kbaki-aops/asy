import spgeo;

pair A = dir(37);
pair B = dir(131);
pair P = 0.9dir(283);
pair Q = 1.5dir(211);

picture left, right;

draw(left, unitcircle);

dot(left, "$A$", A, NE);
dot(left, "$B$", B, NW);
label(left, "$2x$", N, N);

add(right, left);

draw(left, A--P--B);
dot(left, "$P$", P, W);
label(left, "$x$", P, 4N);

draw(right, A--Q--B);
dot(right, "$Q$", Q, SW);
label(right, "$x$", Q, 4dir(52.5));

add(left);
add(shift(2.5E)*right);
