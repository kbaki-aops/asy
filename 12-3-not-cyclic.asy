import spgeo;

picture fulfill(real stretch=1, pen p=currentpen, pen circlep=p) {
  picture pic;
  draw(pic, unitcircle, circlep);
  draw(pic, N--stretch*W--S--stretch*E--cycle, p);
  label(pic, "$A$", N, N, p);
  label(pic, "$B$", stretch*W, W, p);
  label(pic, "$C$", S, S, p);
  label(pic, "$D$", stretch*E, E, p);

  return pic;
}

real s1 = 1;
real s2 = 2;
picture p1 = fulfill(s1);
picture p2 = fulfill(s2, circlep=mediumgrey);

add(p1);
label("$\Rightarrow$", s1+0.5);
add(shift(s1+0.5+s2+0.5)*p2);

erase();

draw(N/8--W--S/8--E--cycle);
