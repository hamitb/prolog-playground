male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

get_grandparent :-
  parent(X, carl),
  parent(X, charlie),
  format('~w ~s grandparent ~n', [X, "is the"]).

brother(bob, bill).

grandparent(X, Y) :-
  parent(Z, X),
  parent(Y, Z).

blushes(X) :- human(X).
human(derek).

stabs(tybalt, mercutio, sword).
hates(romeo, X) :- stabs(X, mercutio, sword).

cheat(ahmet).
cheat(mehmet).

get_low_grade(prof, X) :- cheat(X).

fucked_up(X) :- get_low_grade(Y, X).