%{asn(L,D) : D = 1..9} = 1 :- L=(t;f).

asn(L,D):- not not asn(L,D), D = 1..9, L=t.
:- not #count{L,D: asn(L,D),D = 1..9} = 1, L=t.

asn(L,D):- not not asn(L,D), D = 1..9, L=f.
:- not #count{L,D: asn(L,D),D = 1..9} = 1, L=f.

asn(L,D):- not not asn(L,D), D = 0..9, L=w.
:- not #count{L,D: asn(L,D),D = 0..9} = 1, L=w.

asn(L,D):- not not asn(L,D), D = 0..9, L=o.
:- not #count{L,D: asn(L,D),D = 0..9} = 1, L=o.

asn(L,D):- not not asn(L,D), D = 0..9, L=u.
:- not #count{L,D: asn(L,D),D = 0..9} = 1, L=u.

asn(L,D):- not not asn(L,D), D = 0..9, L=r.
:- not #count{L,D: asn(L,D),D = 0..9} = 1, L=r.

:- not L1 = L2,  asn(L1,D), asn(L2,D).

two(T*100+W*10+O) :- asn(t,T), asn(w,W), asn(o,O).

four(F*1000+O*100+U*10+R) :- asn(f,F), asn(o,O), asn(u,U),asn(r,R).

:- not 2*X = Y, two(X), four(Y).

#show asn/2.

