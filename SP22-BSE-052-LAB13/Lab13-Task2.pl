% Knowledge base defining a family tree

parent(ahmed, sana).
parent(ahmed, ali).
parent(fatima, sana).
parent(fatima, ali).
parent(sana, hira).
parent(sana, bilal).

male(ahmed).
male(ali).
male(bilal).
female(fatima).
female(sana).
female(hira).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), sibling(X, Y).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).

% Query to find all pairs that share a grandparenthood relationship
grandparent_pairs(X, Y) :- grandparent(Z, X), grandparent(Z, Y), X \= Y.

% Query: ?- grandparent_pairs(X, Y).
