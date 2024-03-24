if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tecnicas-5";
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

import graph; size(7cm);
pen dotstyle = black; /* point style */
real xmin = -3.8792536744460278, xmax = 45.532324858144285, ymin = -6.160303097545396, ymax = 23.850410244334466; /* image dimensions */

/* draw figures */
draw((2,18)--(6,18), linewidth(1.2));
draw((6,18)--(6,20), linewidth(1.2));
draw((6,20)--(2,20), linewidth(1.2));
draw((2,16)--(6,16), linewidth(1.2));
draw((2,14)--(6,14), linewidth(1.2));
draw((2,12)--(6,12), linewidth(1.2));
draw((2,10)--(6,10), linewidth(1.2));
draw((2,8)--(6,8), linewidth(1.2));
draw((2,6)--(6,6), linewidth(1.2));
draw((2,4)--(6,4), linewidth(1.2));
draw((2,2)--(6,2), linewidth(1.2));
draw((6,2)--(6,4), linewidth(1.2));
draw((6,6)--(6,8), linewidth(1.2));
draw((6,10)--(6,12), linewidth(1.2));
draw((6,14)--(6,16), linewidth(1.2));
draw((6,19)--(9,19), linewidth(1.2));
draw((6,15)--(9,15), linewidth(1.2));
draw((6,11)--(9,11), linewidth(1.2));
draw((6,7)--(9,7), linewidth(1.2));
draw((6,3)--(9,3), linewidth(1.2));
draw((9,3)--(12,3), linewidth(1.2));
draw((9,7)--(12,7), linewidth(1.2));
draw((9,11)--(12,11), linewidth(1.2));
draw((9,15)--(12,15), linewidth(1.2));
draw((9,19)--(12,19), linewidth(1.2));
draw((12,3)--(12,7), linewidth(1.2));
draw((12,11)--(12,15), linewidth(1.2));
draw((12,19)--(12,18), linewidth(0.8));
draw((12,18)--(18,18), linewidth(1.2));
draw((12,11)--(18,11), linewidth(1.2));
draw((12,4)--(18,4), linewidth(1.2));
draw((18,4)--(18,11), linewidth(1.2));
draw((18,18)--(18,16), linewidth(0.8));
draw((18,16)--(24,16), linewidth(1.2));
draw((18,6)--(24,6), linewidth(1.2));
draw((24,6)--(24,16), linewidth(1.2));
draw((24,11)--(30,11), linewidth(1.2));
/* dots and labels */
dot((2,2),dotstyle);
dot((2,4),dotstyle);
dot((2,6),dotstyle);
dot((2,8),dotstyle);
dot((2,10),dotstyle);
dot((2,12),dotstyle);
dot((2,14),dotstyle);
dot((2,16),dotstyle);
dot((2,18),dotstyle);
dot((2,20),dotstyle);
dot((9,19),dotstyle);
dot((9,15),dotstyle);
dot((9,11),dotstyle);
dot((9,7),dotstyle);
dot((9,3),dotstyle);
dot((30,11),linewidth(4pt) + dotstyle);
dot((15,11),linewidth(4pt) + dotstyle);
dot((15,18),linewidth(4pt) + dotstyle);
dot((15,4),linewidth(4pt) + dotstyle);
dot((21,6),linewidth(4pt) + dotstyle);
dot((21,16),linewidth(4pt) + dotstyle);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
