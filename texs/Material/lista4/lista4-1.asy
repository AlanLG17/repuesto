if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="lista4-1";
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
real xmin = -1.2535139692934074, xmax = 8.728416679112101, ymin = -2.8675320711349337, ymax = 3.195112923908944; /* image dimensions */

/* draw figures */
/* dots and labels */
dot((0,0),dotstyle);
dot((0,1),dotstyle);
dot((1,1),dotstyle);
dot((1,0),dotstyle);
dot((1.5,0.5),dotstyle);
dot((3,0.5),dotstyle);
dot((3,1.2),dotstyle);
dot((3,-0.2),dotstyle);
dot((3.7,1.2),linewidth(4pt) + dotstyle);
dot((4.4,1.2),linewidth(4pt) + dotstyle);
dot((3.7,0.5),linewidth(4pt) + dotstyle);
dot((4.4,0.5),linewidth(4pt) + dotstyle);
dot((4.4,-0.2),linewidth(4pt) + dotstyle);
dot((3.7,-0.2),linewidth(4pt) + dotstyle);
dot((5,0.8),dotstyle);
dot((5,0.2),dotstyle);
dot((5.5,0.5),linewidth(4pt) + dotstyle);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
label("Figura 1", (0.5,1.7),N);
label("Figura 2", (4,1.7),N);
/* end of picture */

