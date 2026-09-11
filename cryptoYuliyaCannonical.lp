named(t). named(w). named(o). named(f). named(u). named(r).

digits(L):-named(L).
digits(y1). digits(y2). digits(y3).

assign(L,X):- not not assign(L,X), X=0..9, digits(L).
:- not #count{L,X:assign(L,X),X=0..9}=1, digits(L).


%all diff t w o f u r
:-not L1=L2, assign(L1,X),assign(L2,X),named(L1), named(L2).

%o+o=r+10*y1 
:- not O+O=R+10*Y1, assign(o,O), assign(r,R), assign(y1,Y1).

%w+w+y1=u+10*y2 
:- not W+W+Y1=U+10*Y2, assign(w,W), assign(u,U), assign(y2,Y2), assign(y1,Y1).

%t+t+y2=o+10*y3 
:- not T+T+Y2=O+10*Y3, assign(t,T), assign(o,O), assign(y3,Y3), assign(y2,Y2).

%f=y3
:- not F=Y3, assign(f,F), assign(y3,Y3).

%f!=0
:- not F!=0, assign(f,F).

% output values for named letters
asn(L,N):-named(L), assign(L,N).
#show asn/2.

