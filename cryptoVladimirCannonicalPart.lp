asn(L,D):- not not asn(L,D), D = 1..9, L=t.
:- not 1<= #count{L,D: asn(L,D),D = 1..9} <= 1, L=t.

asn(L,D):- not not asn(L,D), D = 1..9, L=f.
:- not 1<= #count{L,D: asn(L,D),D = 1..9} <= 1, L=f.

asn(L,D):- not not asn(L,D), D = 0..9, L=w.
:- not 1<= #count{L,D: asn(L,D),D = 0..9} <= 1, L=w.

asn(L,D):- not not asn(L,D), D = 0..9, L=o.
:- not 1<= #count{L,D: asn(L,D),D = 0..9} <= 1, L=o.

asn(L,D):- not not asn(L,D), D = 0..9, L=u.
:- not 1<= #count{L,D: asn(L,D),D = 0..9} <= 1, L=u.

asn(L,D):- not not asn(L,D), D = 0..9, L=r.
:- not 1<= #count{L,D: asn(L,D),D = 0..9} <= 1, L=r.