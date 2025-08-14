import spgeo;

path c = unitcircle;

picture p1;
picture p2;
picture p3;
picture p4;

picture[] pp = {p1,p2,p3,p4};

for (picture p: pp) draw(p, c);

draw(p1, randdir2(1)--randdir2(2,3)--randdir2(4));
draw(p2, randdir2(1)--randdir2(3)^^randdir2(2)--randdir2(4));
draw(p3, randdir2(2)--1.5randdir2(1)--randdir2(4));
draw(p4, randdir2(1)--randdir2(2)--randdir2(3)--randdir2(4)--cycle);

for (int i: sequence(2)) {
  for (int j: sequence(2)) {
    add(shift(2.5(i,2-j))*pp[2i+j]);
  }
}
