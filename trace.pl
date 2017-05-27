warm_blooded(penguin, blue).
warm_blooded(human, red).

produce_milk(penguin).
produce_milk(human).

have_feathers(penguin).
have_hair(human).

mammal(X) :-
  warm_blooded(X, B),
  produce_milk(X),
  have_hair(X),
  format('Blood colour is ~w',[B]).