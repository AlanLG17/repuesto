if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tecnicas-7";
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
import graph; size(7cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -2.1538661547763653, xmax = 9.288627123027853, ymin = -2.1122751207997044, ymax = 4.83746006019793; /* image dimensions */


draw((0,0)--(4,0)--(2,3.4641016151377544)--cycle, linewidth(0.4));
draw((4,0)--(5,1.7320508075688776)--(3,1.7320508075688776)--cycle, linewidth(0.4));
draw((4,0)--(5,0)--(4.5,0.8660254037844386)--cycle, linewidth(0.4));
draw((4,0)--(2,1.1547005383792517)--(4,1.1547005383792515)--(4.5,0.2886751345948129)--cycle, linewidth(0.4));
/* draw figures */
draw((0,0)--(4,0), linewidth(0.4));
draw((4,0)--(2,3.4641016151377544), linewidth(0.4));
draw((2,3.4641016151377544)--(0,0), linewidth(0.4));
draw((4,0)--(5,1.7320508075688776), linewidth(0.4));
draw((5,1.7320508075688776)--(3,1.7320508075688776), linewidth(0.4));
draw((3,1.7320508075688776)--(4,0), linewidth(0.4));
draw((4,0)--(5,0), linewidth(0.4));
draw((5,0)--(4.5,0.8660254037844386), linewidth(0.4));
draw((4.5,0.8660254037844386)--(4,0), linewidth(0.4));
draw((4,0)--(2,1.1547005383792517), linewidth(0.4));
draw((2,1.1547005383792517)--(4,1.1547005383792515), linewidth(0.4));
draw((4,1.1547005383792515)--(4.5,0.2886751345948129), linewidth(0.4));
draw((4.5,0.2886751345948129)--(4,0), linewidth(0.4));
/* dots and labels */
dot((0,0),linewidth(4pt) + dotstyle);
label("$A$", (-0.04788579689828875,-0.263692362217842), NE * labelscalefactor);
dot((4,0),dotstyle);
label("$B$", (3.941776992192956,-0.263692362217842), NE * labelscalefactor);
dot((2,3.4641016151377544),linewidth(4pt) + dotstyle);
label("$D$", (1.9410956522087837,3.608971518102389), NE * labelscalefactor);
dot((5,1.7320508075688776),linewidth(4pt) + dotstyle);
label("$F$", (5.041566734640396,1.8305881047831287), NE * labelscalefactor);
dot((3,1.7320508075688776),dotstyle);
label("$E$", (3.0525852855333238,1.8539878865373296), NE * labelscalefactor);
dot((5,0),linewidth(4pt) + dotstyle);
label("$C$", (4.947967607623593,-0.2519924713407416), NE * labelscalefactor);
dot((4.5,0.8660254037844386),dotstyle);
label("$G$", (4.643770444818982,0.8828969437379968), NE * labelscalefactor);
dot((2,1.1547005383792517),linewidth(4pt) + dotstyle);
label("$P$", (2.0463946701026874,1.245593560928109), NE * labelscalefactor);
dot((4,1.1547005383792515),linewidth(4pt) + dotstyle);
label("$Q$", (4.04707601008686,1.245593560928109), NE * labelscalefactor);
dot((4.5,0.2886751345948129),linewidth(4pt) + dotstyle);
label("$R$", (4.561871208679279,0.18090349111197304), NE * labelscalefactor);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
filldraw ( (2,1.1547005383792517)--(4,1.1547005383792515)--(4.5,0.2886751345948129)--(4,0)--cycle , lightgrey ) ;
/* end of picture */
