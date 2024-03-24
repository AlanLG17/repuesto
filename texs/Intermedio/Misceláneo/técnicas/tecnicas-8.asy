if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="tecnicas-8";
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
import graph; size(10cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -2.5574466610148305, xmax = 22.408702112987903, ymin = -2.3704528375768956, ymax = 12.793036295099617; /* image dimensions */
pen qqwwzz = rgb(0,0.4,0.6);

draw((3.844277215719534,8.894770300480635)--(0,8.894770300480637)--(0,10)--cycle, linewidth(0.8) + qqwwzz);
draw((3.844277215719534,8.894770300480635)--(3.8442772157195346,6.132076130015509)--(8.011712988527318,6.132076130015509)--cycle, linewidth(0.8) + qqwwzz);
draw((8.011712988527318,6.132076130015509)--(8.011712988527318,1.9060857768674797)--(12.270938919973053,1.9060857768674797)--cycle, linewidth(0.8) + qqwwzz);
draw((0.27076277757990097,8.894770300480637)--(0.27076277757990114,9.165533078060538)--(0,9.165533078060538)--(0,8.894770300480637)--cycle, linewidth(0.4) + blue);
draw((4.115039993299436,6.132076130015509)--(4.115039993299436,6.40283890759541)--(3.8442772157195346,6.40283890759541)--(3.8442772157195346,6.132076130015509)--cycle, linewidth(0.4) + blue);
draw((8.282475766107218,1.9060857768674797)--(8.282475766107218,2.1768485544473806)--(8.011712988527318,2.1768485544473806)--(8.011712988527318,1.9060857768674797)--cycle, linewidth(0.4) + blue);
draw((0.27076277757990097,1.9060857768674797)--(0.270762777579901,2.1768485544473806)--(0,2.1768485544473806)--(0,1.9060857768674797)--cycle, linewidth(0.4) + blue);
/* draw figures */
draw((3.844277215719534,8.894770300480635)--(0,8.894770300480637), linewidth(0.8) + qqwwzz);
draw((0,8.894770300480637)--(0,10), linewidth(0.8) + qqwwzz);
draw((0,10)--(3.844277215719534,8.894770300480635), linewidth(0.8) + qqwwzz);
draw((3.844277215719534,8.894770300480635)--(3.8442772157195346,6.132076130015509), linewidth(0.8) + qqwwzz);
draw((3.8442772157195346,6.132076130015509)--(8.011712988527318,6.132076130015509), linewidth(0.8) + qqwwzz);
draw((8.011712988527318,6.132076130015509)--(3.844277215719534,8.894770300480635), linewidth(0.8) + qqwwzz);
draw((8.011712988527318,6.132076130015509)--(8.011712988527318,1.9060857768674797), linewidth(0.8) + qqwwzz);
draw((8.011712988527318,1.9060857768674797)--(12.270938919973053,1.9060857768674797), linewidth(0.8) + qqwwzz);
draw((12.270938919973053,1.9060857768674797)--(8.011712988527318,6.132076130015509), linewidth(0.8) + qqwwzz);
draw((0,10)--(0,1.9060857768674797), linewidth(0.4));
draw((0,1.9060857768674797)--(12.270938919973053,1.9060857768674797), linewidth(0.4));
/* dots and labels */
dot((0,10),linewidth(1pt) + dotstyle);
dot((3.844277215719534,8.894770300480635),linewidth(1pt) + dotstyle);
dot((8.011712988527318,6.132076130015509),linewidth(1pt) + dotstyle);
dot((12.270938919973053,1.9060857768674797),linewidth(1pt) + dotstyle);
label("$x$", (1.5269948562044304,8.325678385641048), NE * labelscalefactor,qqwwzz);
label("$4$", (1.7822724510306343,9.75523291666779), NE * labelscalefactor,qqwwzz);
label("$y$", (5.432742057045349,5.568680361518046), NE * labelscalefactor,qqwwzz);
label("$5$", (6.1219915630761,7.713012158058159), NE * labelscalefactor,qqwwzz);
label("$z$", (9.874572207021295,1.305544527920441), NE * labelscalefactor,qqwwzz);
label("$6$", (10.308544118225843,4.190181349456545), NE * labelscalefactor,qqwwzz);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
