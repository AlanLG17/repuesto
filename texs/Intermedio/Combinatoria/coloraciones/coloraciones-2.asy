if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="coloraciones-2";
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

/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(5cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -4.971088291553408, xmax = 14.090705728380154, ymin = -4.674638075103188, ymax = 6.902770562770564; /* image dimensions */

/* draw figures */
draw((0,0)--(0,3), linewidth(2));
draw((0,3)--(1,3), linewidth(2));
draw((1,3)--(1,4), linewidth(2));
draw((1,4)--(4,4), linewidth(2));
draw((4,4)--(4,1), linewidth(2));
draw((4,1)--(3,1), linewidth(2));
draw((3,1)--(3,0), linewidth(2));
draw((0,0)--(3,0), linewidth(2));
draw((1,0)--(1,3), linewidth(2));
draw((2,4)--(2,0), linewidth(2));
draw((3,0)--(3,4), linewidth(2));
draw((1,3)--(4,3), linewidth(2));
draw((0,2)--(4,2), linewidth(2));
draw((0,1)--(3,1), linewidth(2));
draw((6,3)--(6,1), linewidth(2));
draw((6,1)--(7,1), linewidth(2));
draw((7,1)--(7,3), linewidth(2));
draw((7,3)--(6,3), linewidth(2));
draw((6,2)--(7,2), linewidth(2));
for(int i = 0; i < 4; ++i) {
filldraw ( (i,i)--(i+1,i)--(i+1,i+1)--(i,i+1)--cycle , black) ;}


filldraw ( (0,2)--(1,2)--(1,3)--(0,3)--cycle , black) ;
filldraw ( (1,3)--(2,3)--(2,4)--(1,4)--cycle , black) ;
filldraw ( (2,0)--(3,0)--(3,1)--(2,1)--cycle , black) ;
filldraw ( (3,1)--(4,1)--(4,2)--(3,2)--cycle , black) ;

/* dots and labels */
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
