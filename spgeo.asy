import markers;
import geometry;

usepackage("amsmath");
texpreamble("\newcommand{\arc}{\text{arc}\ }");

unitsize(2cm);

pair O = (0,0);
pen em = linewidth(1);
pen color1 = red;
pen color2 = blue;
pen color3 = olive;
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

guide empathise(... pair[] pp) {
  if (pp.length > 1) {
    return pp[0]--empathise(...pp[1:]);
  } else {
    return pp[0];
  }
}

real operator cast(bool b) {
  return b ? 1 : 0;
}

int operator cast(bool b) {
  return b ? 1 : 0;
}

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

// todo: deprecate
// path fourwinkle(real a, real b, real c) {
//   return O--dir(a)--extension(dir(a), dir(a)+dir(b-(180-a)), E, E+dir(180-(360-a-b-c)))--E--cycle;
// }

pair middir(pair A, pair B, pair C) {
  return -dir(mean(degrees(B-A), degrees(B-C)));
}

real angle(pair A, pair B, pair C) {
  return degrees(acos(dot(A-B, C-B)/(length(A-B)*length(C-B))));
}

void labelarc(pair a, pair b, Label L="$"+(string)round((degrees(b)-degrees(a))%360)+"^\circ$", bool outside=true) {
  label(L,
    dir(mean(degrees(a)-360*(degrees(a)>degrees(b)), degrees(b))),
    (2*outside-1)*dir(mean(degrees(a)-360*(degrees(a)>degrees(b)), degrees(b)))
  );
}

void labelangle(pair A, pair B, pair C, Label L="$"+(string)(angle(A,B,C))+"^\circ$", real distance=3) {
  label(L, B, distance*middir(A,B,C));
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

// Returns the third angle of a triangle with angles `a` and `b`.
real third(real a, real b) {
  return 180-a-b;
}

//pair center(path c) {
//  return midpoint(point(c, 0)--midpoint(c));
//}
//
//real radius(path c) {
//  return length(center(c)-point(c, 0));
//}

//pair tangentpoint(pair P, path c, int which=0) {
//  return tangents(circle((point) center(c), radius(c)), P)[which].B;
//}