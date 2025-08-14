import spgeo;

draw(unitcircle);

pair A = randdir(1);
pair B = randdir(2);
pair C = randdir(3);

draw(A--B--C--cycle);

label("$A$", A, A);
label("$B$", B, B);
label("$C$", C, C);

label("$"+(string)(int)(degrees(B)-degrees(A))+"^\circ$",
  dir((degrees(B)+degrees(A))/2),
  2dir((degrees(B)+degrees(A))/2));
label("$"+(string)(int)(degrees(C)-degrees(B))+"^\circ$",
  dir((degrees(C)+degrees(B))/2),
  2dir((degrees(C)+degrees(B))/2));
