usepackage("amssymb");
unitsize(1cm);

pair O = (0,0);

label(rotate(-90)*"$\blacksquare\vdash\vDash\vdash\vDash\vdash\vDash\vdash\vDash$");
for (int i: sequence(9))
  label("$\therefore$", N+1/2*E+1/2*(i,1/2*sin(i*pi/2)));
