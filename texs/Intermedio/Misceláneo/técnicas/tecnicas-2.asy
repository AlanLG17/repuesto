if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tecnicas-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

defaultpen(fontsize(10pt));
size(8cm); // set a reasonable default
usepackage("amsmath");
usepackage("amssymb");
settings.tex="pdflatex";
settings.outformat="pdf";
// Replacement for olympiad+cse5 which is not standard
import geometry;
// recalibrate fill and filldraw for conics
void filldraw(picture pic = currentpicture, conic g, pen fillpen=defaultpen, pen drawpen=defaultpen)
{ filldraw(pic, (path) g, fillpen, drawpen); }
void fill(picture pic = currentpicture, conic g, pen p=defaultpen)
{ filldraw(pic, (path) g, p); }
// some geometry
pair foot(pair P, pair A, pair B) { return foot(triangle(A,B,P).VC); }
pair centroid(pair A, pair B, pair C) { return (A+B+C)/3; }
// cse5 abbreviations
path CP(pair P, pair A) { return circle(P, abs(A-P)); }
path CR(pair P, real r) { return circle(P, r); }
pair IP(path p, path q) { return intersectionpoints(p,q)[0]; }
pair OP(path p, path q) { return intersectionpoints(p,q)[1]; }
path Line(pair A, pair B, real a=0.6, real b=a) { return (a*(A-B)+A)--(b*(B-A)+B); }
// cse5 more useful functions
picture CC() {
picture p=rotate(0)*currentpicture;
currentpicture.erase();
return p;
}
pair MP(Label s, pair A, pair B = plain.S, pen p = defaultpen) {
Label L = s;
L.s = "$"+s.s+"$";
label(L, A, B, p);
return A;
}
pair Drawing(Label s = "", pair A, pair B = plain.S, pen p = defaultpen) {
dot(MP(s, A, B, p), p);
return A;
}
path Drawing(path g, pen p = defaultpen, arrowbar ar = None) {
draw(g, p, ar);
return g;
}

import graph;
unitsize(0.8cm);

real radius = 2;
pair center = (0, 0);

// Dibuja el círculo
draw(Circle(center, radius),white);

// Números que deseas colocar
string[] numeros = {"1", "0", "0", "0", "1", "0"};

// Ángulo inicial
real startAngle = 0;

for (int i = 0; i < 6; ++i) {
real endAngle = startAngle + 60; // Divide el círculo en 6 partes iguales (360 grados / 6)
pair labelPosition = center + radius/2*dir(startAngle + 30); // Coloca el número en el centro del sector

// Dibuja el sector
filldraw(center--arc(center, radius, startAngle, endAngle)--cycle, gray(0.9));

// Coloca el número en el sector
label(numeros[i], labelPosition);

// Actualiza el ángulo inicial para el siguiente sector
startAngle = endAngle;
}

// Ajusta la vista
real margin = 0.5;
limits((-radius-margin,-radius-margin),(radius+margin,radius+margin), Crop);
