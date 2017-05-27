parent(albert, bob).
parent(albert, betsy).
parent(albert, bill).

parent(alice, bob).
parent(alice, betsy).
parent(alice, bill).

parent(bob, carl).
parent(bob, charlie).

related(X, Y) :-
  parent(X, Y).
  
related(X, Y) :-
  parent(X, Z),
  related(Z, Y).

count_to_ten(10) :-
  write(10), nl.

count_to_ten(X) :-
  write(X), nl,
  count_to_ten(Y).

count_to_five(Low, High) :-
  between(Low, High, Y),
  write(Y), nl.

min(A, B, Min) :-
  A < B -> Min is A ; Min is B.