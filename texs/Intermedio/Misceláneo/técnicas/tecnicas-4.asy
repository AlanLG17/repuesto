if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tecnicas-4";
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
import graph; size(6.5cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.1) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -3.171616439522652, xmax = 17.67767285771389, ymin = -2.3293680669626107, ymax = 10.333697211727069; /* image dimensions */

/* draw figures */
draw((1,0)--(1,8), linewidth(1));
draw((2,8)--(2,0), linewidth(1));
draw((3,0)--(3,8), linewidth(1));
draw((4,8)--(4,0), linewidth(1));
draw((5,0)--(5,8), linewidth(1));
draw((6,8)--(6,0), linewidth(1));
draw((7,0)--(7,8), linewidth(1));
draw((8,7)--(0,7), linewidth(1));
draw((0,6)--(8,6), linewidth(1));
draw((0,5)--(8,5), linewidth(1));
draw((8,4)--(0,4), linewidth(1));
draw((0,3)--(8,3), linewidth(1));
draw((8,2)--(0,2), linewidth(1));
draw((0,1)--(8,1), linewidth(1));
draw((1,8)--(8,8), linewidth(1));
draw((8,8)--(8,1), linewidth(1));
draw((7,0)--(0,0), linewidth(1));
draw((0,0)--(0,7), linewidth(1));
draw((10,3)--(10,5), linewidth(1));
draw((10,5)--(11,5), linewidth(1));
draw((11,5)--(11,3), linewidth(1));
draw((10,3)--(11,3), linewidth(1));
draw((10,4)--(11,4), linewidth(1));
/* dots and labels */
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
