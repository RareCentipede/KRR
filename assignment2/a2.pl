%1.1
item(coke).
item(hagelslag).
grabbed(robot, item(hagelslag)).
at_location(item(coke), table).

is_heavy(item(hagelslag)).
has_room(bin).
has_room(shelf).

is_full(item(X)) :- is_heavy(item(X)).
is_empty(item(coke)).
should_be_stored_in_shelf(item(X)) :- is_full(item(X)).
should_be_discarded_in_bin(item(X)) :- is_empty(item(X)).

can_be_stored(item(X)) :- has_room(shelf), grabbed(robot, item(X)).
can_be_discarded(item(X)) :- has_room(bin), grabbed(robot, item(X)).