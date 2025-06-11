import markers;
import olympiad;

unitsize(2cm);
pair O = (0,0);

string operator *(string s, int n) {
  string ss = "";
  for (int i: sequence(n)) {
    ss += s;
  }

  return ss;
}

path fourwinkle(real a, real b, real c) {
  return O--dir(a)--extension(dir(a), dir(a)+dir(b-(180-a)), E, E+dir(180-(360-a-b-c)))--E--cycle;
}
