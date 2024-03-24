if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lista4-2";
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

size(8cm);
draw((0,0)--(3,0)--(2.5,2)--(-0.4,2)--cycle);
draw((0,0)--(0.3,2)--(1.8,0)--(2.5,2));
draw((-0.4,2)--(2.85,0.6)--(0,0));
filldraw((-0.4,2)--(0.3,2)--(0.26,1.72)--cycle,lightred);
filldraw((1.55,0.33)--(0.63,1.55)--(0.26,1.72)--(0,0)--cycle,lightyellow);
filldraw((1.55,0.33)--(1.8,0)--(1.94,0.41)--cycle,lightyellow);
filldraw((2.12,0.91)--(2.85,0.6)--(1.94,0.41)--cycle,lightyellow);
filldraw((2.12,0.91)--(0.63,1.55)--(0.3,2)--(2.5,2)--cycle,lightyellow);
label("8",(1.77,0.25));
label("10",(2.3,0.64));
label("79",(0.63,0.74));
label("72",(1.54,1.61));
label("?",(0.05,1.91));
label("D",(0,0),SW);
label("C",(3,0),SE);
label("B",(2.5,2),NE);
label("A",(-0.4,2),NW);

