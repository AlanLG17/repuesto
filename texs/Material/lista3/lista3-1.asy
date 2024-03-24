if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lista3-1";
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
import graph; size(4.5cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -4.84, xmax = 14.72, ymin = -3.32, ymax = 8.56; /* image dimensions */


draw((0,0)--(4,0)--(6,3.464101615137755)--(4,6.9282032302755105)--(0,6.928203230275511)--(-2,3.464101615137758)--cycle, linewidth(0.7));
/* draw figures */
draw((0,0)--(4,0), linewidth(1));
draw((4,0)--(6,3.464101615137755), linewidth(1));
draw((6,3.464101615137755)--(4,6.9282032302755105), linewidth(1));
draw((4,6.9282032302755105)--(0,6.928203230275511), linewidth(1));
draw((0,6.928203230275511)--(-2,3.464101615137758), linewidth(1));
draw((-2,3.464101615137758)--(0,0), linewidth(1));
draw((-2,3.464101615137758)--(6,3.464101615137755), linewidth(1));
draw((4,0)--(4,6.9282032302755105), linewidth(1));
/* dots and labels */
dot((0,0),dotstyle);
dot((4,0),dotstyle);
dot((6,3.464101615137755),dotstyle);
dot((4,6.9282032302755105),dotstyle);
dot((0,6.928203230275511),dotstyle);
dot((-2,3.464101615137758),dotstyle);
dot((4,3.464101615137756),linewidth(4pt) + dotstyle);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
filldraw((0,0)--(4,0)--(4,3.464101615137756)--(-2,3.464101615137758)--cycle,lightred,red);
filldraw((4,3.464101615137756)--(4,6.9282032302755105)--(6,3.464101615137755)--cycle,lightcyan,blue);

/* end of picture */
