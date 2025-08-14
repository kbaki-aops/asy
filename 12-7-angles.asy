import spgeo;

picture pic;

draw(pic, unitcircle);

pair A,A_,A__,A___,A____;
pair B,B_,B__,B___,B____;
pair P,P_,P__,P___,P____;

A = dir(30);
A_ = dir(180+30);
A__ = dir(180+20);
A___ = dir(180);
A____ = dir(180-10);

B = dir(-30);
B_ = dir(180-30);
B__ = dir(180-20);
B___ = A___;
B____ = dir(180+10);

P__ = intersectionpoint(A--A__, B--B__);
P___ = intersectionpoint(A--A___, B--B___);
P____ = extension(A, A____, B, B____);

dot(pic, "$A$", A, E);
dot(pic, "$B$", B, E);

draw(pic, A--P--B);
draw(pic, A_--P--B_, mediumgrey);
dot(pic, "$A'$", A_, W);
dot(pic, "$B'$", B_, W);

draw(pic, A--P__--B);
draw(pic, A__--P__--B__, mediumgrey);
dot(pic, "$A''$", A__, W);
dot(pic, "$B''$", B__, W);

draw(pic, A--P___--B);
draw(pic, A___--P___--B___, mediumgrey);
dot(pic, "$A'''$", A___, W);
dot(pic, "$B'''$", B___, W);

draw(pic, A--P____--B);
draw(pic, A____--P____--B____, mediumgrey);
dot(pic, "$A''''$", A____, W);
dot(pic, "$B''''$", B____, W);

add(pic);
