import spgeo;

real sf = 1/6;

pair L = sqrt(2)*N;
pair K = L+2SE;
pair J = K+6E;
pair I = J+2NE;
pair H = I+6N;
pair G = H+2NW;
pair F = G+6W;
pair D = F+2SW;

path octagon = L--K--J--I--H--G--F--D--cycle;

picture left;
picture right;

draw(left, octagon);
draw(left, D--I);

draw(right, D--I, mediumgrey);
draw(right, octagon);
draw(right, D--D+2N, dotted);
draw(right, H--H+2N, dotted);
draw(right, F--F+2W, dotted);
draw(right, G--G+2E, dotted);
draw(right, rightanglemark(D+2N, extension(L, D, G, F), F+2W));
draw(right, rightanglemark(G+2E, extension(I, H, F, G), H+2N));
draw(right, extension(L, D, G, F)--I+sqrt(2)*N);

left = scale(sf)*left;
right = scale(sf)*right;

add(left);
label("$\Rightarrow$", (max(left).x, max(left).y/2));
Label l = "$\Rightarrow$";
add(shift(max(left).y+1/4)*right);

//write(#octagon);
