import spgeo;

pair P = dir(120);
path l = (P+3/2*dir(degrees(P)+90))--(P+3/2*dir(degrees(P)-90));
path m = empathise(N, E, S);

picture main(path line, transform t=identity, pen p=currentpen, bool clip=false) {
  picture pic;
  draw(pic, unitcircle);
  draw(pic, clip ? empathise(...intersectionpoints(t*line, unitcircle)) : t*line, p);
  return pic;
}

add(main(l, color1+em));
//add(main(l, shift(-1/2*dir(degrees(P))), color1+em));
//add(main(l, shift(-1/2*dir(degrees(P))), color1+em, true));