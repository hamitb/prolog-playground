say_hi :-
  write('What is your fav char? '),
  get(X),
  format('The ascii is ~w', [X]),
  put(X), nl.