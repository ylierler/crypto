d1(X,Y,X-Y+n) :- X = 1..n, Y = 1..n.
d2(X,Y,X+Y-1) :- X = 1..n, Y = 1..n.
:- Z = 1..n*2-1, not { q(X,Y) : d1(X,Y,Z) } 1.
:- Z = 1..n*2-1, not { q(X,Y) : d2(X,Y,Z) } 1.