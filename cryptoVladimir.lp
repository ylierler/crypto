{asn(L,D) : D = 1..9} = 1 :- L=(t;f).

{asn(L,D) : D = 0..9} = 1 :- L=(w;o;u;r).

L1 = L2 :- asn(L1,D), asn(L2,D).

two(T*100+W*10+O) :- asn(t,T), asn(w,W), asn(o,O).

four(F*1000+O*100+U*10+R) :- asn(f,F), asn(o,O), asn(u,U),asn(r,R).

2*X = Y :- two(X), four(Y).

#show asn/2.

