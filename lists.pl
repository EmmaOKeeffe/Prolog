myElem(X, [H|T]) :-
    X == H;
    myElem(X,T).

myHead(X, [H|_]) :-
    X == H.

myLast(X, [H|T]) :-
    T == [], X == H;
    myLast(X, T).

myTail(X, [_|X]).

myAppend([ ], L, L).
myAppend([H|T], L, [H|L3]) :- myAppend(T, L, L3).

myReverse([ ], [ ]).
myReverse([X|T], Y) :- myReverse(T, T1), myAppend(T1, [X], Y).

myDelete(X, [X|T], T).
myDelete(X, [Y|T], [Y|L]) :- myDelete(X, T, L).
