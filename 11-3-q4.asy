import spgeo;

real side = 2;
real padding = 1/2;

pair A = side*dir(210)/sqrt(3);
pair B = side*dir(90)/sqrt(3);
pair C = side*dir(330)/sqrt(3);

path triangle = A--B--C--cycle;
path outline = arc(C, padding, -90, 30)--arc(B, padding, 30, 150)--arc(A, padding, 150, 270)--cycle;

draw(triangle^^outline);
draw(A+padding*dir(150)--A--A+padding*dir(270)
   ^^B+padding*dir(30)--B--B+padding*dir(150)
   ^^C+padding*dir(-90)--C--C+padding*dir(30), dotted);
