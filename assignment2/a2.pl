item(coke).
item(hagelslag).
grabbed(robot, item(hagelslag)).
at_location(coke, table).

is_heavy(item(hagelslag)).
has_room(bin).
has_room(shelf).

is_full(X) :- is_heavy(item(X)).
is_empty(X) :- \+ is_heavy(item(X)).
should_be_stored_in_shelf(X) :- is_full(X).
should_be_discarded_in_bin(X) :- is_empty(X).

can_be_stored(X) :- has_room(shelf), grabbed(robot, item(X)).
can_be_discarded(X) :- has_room(bin), grabbed(robot, item(X)).