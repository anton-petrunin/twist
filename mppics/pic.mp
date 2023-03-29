input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";




beginfig(10) 
save u,p;
u:=1.4cm;
path p[];


z.o=origin;
z.x=(.6,.3)*u;
z.b=z.x+(1,0)*u rotated -90;

p1=z.b{(z.x-z.b) zscaled (0,-1)}..{(z.x-z.b) zscaled (0,1)}z.x..z.o;

z.y=point 0.2 of p1;

z.ss=2*z.x;
z.s=z.x+(unitvector(z.x-z.b) zscaled (0,-1))*u;

draw p1 pensemibold;
draw z.o--z.x dashed evenly;
drawarrow z.x--z.s;

draw circle(z.o,1*u);

labelarcsprof(z.ss, z.x, z.s, 10, 28, btex {\small $\tfrac\pi2-\beta$} etex);
label.lft(btex $0$ etex, z.o);
label.bot(btex $x$ etex, z.x);
label.top(btex $\sigma$ etex, point 1.5 of p1);
label.lrt(btex $\tilde\gamma(t_0)$ etex, z.y);
label.rt(btex $\tilde\gamma$ etex, point 0.55 of p1);
label.lrt(btex $\xi$ etex, z.s);
label(btex $\BB^q$ etex, z.o+(0,-.5)*u);

fill_angle(z.ss, z.x, z.s, 20);

dOt z.o,z.x,z.y;
endfig;


end
