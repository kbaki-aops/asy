import markers;
import geometry;

usepackage("amsmath");
texpreamble("\newcommand{\arc}{\text{arc}\ }");

unitsize(2cm);

pair O = (0,0);
pen color1 = red;
pen color2 = blue;
pen randpen = RGB(floor(256*unitrand()), floor(256*unitrand()), floor(256*unitrand()));

dotted = linetype(new real[] {0,2});

marker stick(int n=1, pen p=currentpen) {
  return StickIntervalMarker(1, n, size=5, p);
}
marker stick = stick();

arrowbar parallel(pen p=currentpen, arrowhead arrowhead=SimpleHead) {
  return MidArrow(arrowhead);
}

arrowbar parallel = parallel();

real mean(real a, real b) {
  return (a+b)/2;
}

string operator *(string s, int n) {
  string ss = "";
  for (int i: sequence(n)) {
    ss += s;
  }

  return ss;
}

real randangle(int keyword window=90 ... real[] quadrants) {
  if (quadrants.length==0) {
    return 360*unitrand();
  }

  return map(new real(real q) { return 90*(q-1)+45-0.5window+window*unitrand(); }, quadrants)[rand(0,quadrants.length-1)];
}

pair randdir(int keyword window=90 ... real[] quadrants) {
  if (quadrants.length==0) {
    return dir(randangle(window=window));
  }

  return dir(randangle(window=window ... quadrants));
}

pair randdir2(... real[] quadrants) {
  return randdir(window=45 ... quadrants);
}

path fourwinkle(real a, real b, real c) {
  return O--dir(a)--extension(dir(a), dir(a)+dir(b-(180-a)), E, E+dir(180-(360-a-b-c)))--E--cycle;
}

void labelarc(pair a, pair b, Label L="$"+(string)round((degrees(b)-degrees(a))%360)+"^\circ$") {
  if (degrees(a) > degrees(b)) {
    label(L,
      dir(mean(degrees(a)-360, degrees(b))),
      dir(mean(degrees(a)-360, degrees(b)))
    );
  } else {
    label(L,
      dir(mean(degrees(a), degrees(b))),
      dir(mean(degrees(a), degrees(b)))
    );
  }
}

pair center(path c) {
  return midpoint(point(c, 0)--midpoint(c));
}

real radius(path c) {
  return length(center(c)-point(c, 0));
}

real tocm(picture p=currentpicture, real l) {
  return l*p.xunitsize/1cm;
}

pair tocm(picture p=currentpicture, pair xy) {
  return (tocm(p, xy.x), tocm(p, xy.y));
}

real[] tocm(picture p=currentpicture ... real[] ll) {
  return map(new real(real l) { return tocm(p, l); }, ll);
}

Label underbrace(picture p=currentpicture, real l, string s="") {
  return "$\underbrace{\hspace{"+(string)tocm(p, l)+"cm}}_{\textstyle\text{"+s+"}}$";
}

real angle(pair A, pair B, pair C) {
  return degrees(acos(dot(A-B, C-B)/(length(A-B)*length(C-B))));
}
