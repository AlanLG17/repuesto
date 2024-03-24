if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tecnicas-6";
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
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -1.5022238918106643, xmax = 13.19349361382421, ymin = -3.3374755822689712, ymax = 5.588144252441777; /* image dimensions */
pen qqwuqq = rgb(0,0.39215686274509803,0);

draw(arc((0,0),0.45078888054094707,0,18.43494882292201)--(0,0)--cycle, linewidth(2) + qqwuqq);
draw(arc((3,0),0.45078888054094707,0,26.56505117707799)--(3,0)--cycle, linewidth(2) + blue);
draw(arc((6,0),0.45078888054094707,0,45)--(6,0)--cycle, linewidth(2) + red);
/* draw figures */
draw((9,0)--(9,3), linewidth(0.8));
draw((9,3)--(0,3), linewidth(0.8));
draw((0,3)--(0,0), linewidth(0.8));
draw((0,0)--(9,0), linewidth(0.8));
draw((6,0)--(6,3), linewidth(0.4));
draw((3,0)--(3,3), linewidth(0.4));
draw((0,0)--(9,3), linewidth(0.8));
draw((3,0)--(9,3), linewidth(0.8));
draw((6,0)--(9,3), linewidth(0.8));
/* dots and labels */
label("$\alpha$", (0.8268519909842289,0.07349361382419352), NE * labelscalefactor,qqwuqq);
label("$\beta$", (3.71190082644629,0), NE * labelscalefactor,blue);
label("$\gamma$", (6.611975957926383,0.17867768595041444), NE * labelscalefactor,red);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
