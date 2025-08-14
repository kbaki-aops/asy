import spgeo;

int n = 2**7;

picture c1;
for (int i: sequence(n)) {
  filldraw(c1, O--arc(O, 1, i*360/n, (i+1)*360/n)--cycle, color1);
}

picture c2;
for (int i: sequence(n)) {
  filldraw(c2, i*2*sin(pi/n)*E--arc(i*2*sin(pi/n)*E, 1, 90-180/n, 90+180/n)--cycle, color1);
}

picture c3;
for (int i: sequence(n)) {
  if (i%2 == 0) {
    filldraw(c3, i*sin(pi/n)*E--arc(i*sin(pi/n)*E, 1, 90-180/n, 90+180/n)--cycle, color1);
  } else {
    filldraw(c3, (i*sin(pi/n),cos(pi/n))--arc((i*sin(pi/n),cos(pi/n)), 1, 270-180/n, 270+180/n)--cycle, color1);
  }
}

picture c4;
for (int i: sequence(n)) {
  if (i%2 == 0) {
    filldraw(c4, i/2*sin(2pi/n)*E--arc(i/2*sin(2pi/n)*E, 1, 90-360/n, 90)--cycle, color1);
  } else {
    filldraw(c4, ((i+1)/2*sin(2pi/n),cos(2pi/n))--arc(((i+1)/2*sin(2pi/n),cos(2pi/n)), 1, 270-360/n, 270)--cycle, color1);
  }
}

add(c1);
//label("$\Rightarrow$", 5/4*E);
//add(shift(6/4+sin(pi/n), -1/2)*c2);
add(shift(3E)*c3);
