import spgeo;

draw(unitcircle);

pair A = randdir(1);
//pair B = A;//randdir(2);
pair C = randdir(3);
pair D = randdir(4);
pair P = extension(A, A+dir(-90+degrees(A)), C, D);

draw(A--P);
draw(C--D--P);

label("$a$", P--A);
//label("$b$", P--A);
label("$b$", D--C);
label("$c$", D--P);
