% TaskOfLab12, SP22-BSE-052

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
uncle(X, Y) :- male(X), sibling(X, Z), parent(Z, Y).

% Query: ?- uncle(ali, hira).
