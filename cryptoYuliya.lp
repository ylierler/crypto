named(t;w;o;f;u;r).

digits(L):-named(L).
digits(y1;y2;y3).

% all digits (named and hidden) are assigned exactly one value [0..9]
1{assign(L,X):X=0..9}1:-digits(L).

%all diff t w o f u r
L1=L2:-assign(L1,X),assign(L2,X),named(L1), named(L2).

%o+o=r+10*y1 
O+O=R+10*Y1:- assign(o,O), assign(r,R), assign(y1,Y1).

%w+w+y1=u+10*y2 
W+W+Y1=U+10*Y2:- assign(w,W), assign(u,U), assign(y2,Y2), assign(y1,Y1).

%t+t+y2=o+10*y3 
T+T+Y2=O+10*Y3:- assign(t,T), assign(o,O), assign(y3,Y3), assign(y2,Y2).

%f=y3
F=Y3:- assign(f,F), assign(y3,Y3).

%f!=0
F!=0:- assign(f,F).

% output values for named letters
asn(L,N):-named(L), assign(L,N).
#show asn/2.

