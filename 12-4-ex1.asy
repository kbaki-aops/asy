import spgeo;

pair A = 1.5randdir();
//pair P = tangent(A, O, 1);
//pair B = 2P-A;
pair B = 1.5randdir();
pair P = intersectionpoints(unitcircle, A--B)[0];
pair Q = intersectionpoints(unitcircle, A--B)[1];

fill(arc(O, 1, degrees(P), degrees(Q))--cycle, color1);
fill(arc(O, 1, degrees(Q), 360+degrees(P))--cycle, color2);

draw(unitcircle);
draw(A--B);

//filldraw(unitcircle, color1);

dot(P);
dot(Q);
