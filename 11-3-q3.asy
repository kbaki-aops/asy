import spgeo;

pair A = E;
pair B = N;

draw(unitsquare);
filldraw(arc(O, 1, degrees(A), degrees(B))--arc(A+B, 1, 180+degrees(A), 180+degrees(B))--cycle, color1);
