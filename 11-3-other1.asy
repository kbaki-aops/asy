import spgeo;

pair A = E;
pair B = N;
path arc1 = arc(O, 1, degrees(A), degrees(B));
path arc2 = arc(A+B, 1, 180+degrees(A), 180+degrees(B));

picture tear;
filldraw(tear, arc1--arc2--cycle, color1);

picture quarter1;
filldraw(quarter1, O--A--arc1--B--cycle, color1);
//draw(quarter1, arc2);

picture corner1;
filldraw(corner1, arc2--O--cycle, color1);

picture quarter2;
filldraw(quarter2, A+B--B--arc2--A--cycle, color1);
//draw(quarter2, arc1);

picture corner2;
filldraw(corner2, arc1--A+B--cycle, color1);

picture square;
filldraw(square, unitsquare, color1);
//draw(square, arc2);
//draw(square, arc1);

//real nudge = 5/4;
//picture[] parts = {tear, quarter1, corner1, quarter2, corner2, square};
//for (int i: sequence(parts.length)) {
//  add(shift((i%3)*nudge, -(i#3)*nudge)*parts[i]);
//}

real nudge = 3/4;
add(tear);
label("$=$", nudge*E+0.5(N+E));
add(shift(2nudge*E)*quarter1);
label("$+$", 3nudge*E+0.5(N+E));
add(shift(4nudge*E)*quarter2);
label("$-$", 5nudge*E+0.5(N+E));
add(shift(6nudge*E)*square);
