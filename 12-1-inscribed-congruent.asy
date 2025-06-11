import spgeo;

unitsize(2cm);

pair A,C;
A = dir(120);
C = dir(60);

draw(unitcircle);
pair[] BB = {dir(180), dir(270), dir(300)};
pen[] hues = {cmyk(red), cmyk(blue), cmyk(green)};

for (int i: sequence(BB.length)) {
  markangle(C,BB[i],A, radius=15);
  draw(A--BB[i]--C, hues[i]+1);
  dot("$B"+"'"*i+"$", BB[i], dir(BB[i]), hues[i]);
}

dot("$O$", O, E);
dot("$A$", A, NW);
dot("$C$", C, NE);
