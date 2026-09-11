named(t). named(w). named(o). named(f). named(u). named(r).

digits(y1). digits(y2). digits(y3).

assign(L,X):- not not assign(L,X), X=0..9, digits(L).
:- not 1<=#count{L,X:assign(L,X),X=0..9}<=1, digits(L).