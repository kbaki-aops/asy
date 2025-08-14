import spgeo;

real R = 1;
real r = 1/3;
pair A = R*dir(30);
pair B = R*dir(330);

filldraw(arc(O, R-r, degrees(A), degrees(B))
       --arc(B, r, 180-degrees(A), -degrees(A))
       --arc(O, R+r, degrees(B), degrees(A))
       --arc(A, r, degrees(A), -180+degrees(A))
       --cycle, color1);
draw(arc(O, R, degrees(A), degrees(B)));

dot("$O$", O, W);
dot("$A$", A, B);
dot("$B$", B, A);

//draw((R+r)*dir(degrees(A))--O--(R+r)*dir(degrees(B)), dashed);
