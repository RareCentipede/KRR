%--------------------------2.1--------------------------- 
%Facts
item(coke). % coke is an item
item(hagelslag). % haglesla is an item
grabbed(robot, item(hagelslag)). % the robot grabbed the item hagelslag
at_location(item(coke), table). % the item coke in on the table

%Rules
is_full(item(X)) :- is_heavy(item(X)). % all heavy items are full
should_be_stored_in_shelf(item(X)) :- is_full(item(X)). % all full items should be stored in the shelf
should_be_discarded_in_bin(item(X)) :- is_empty(item(X)). % all empty items should be discarded in the bin
can_be_stored(item(X)) :- has_room(shelf), grabbed(robot, item(X)). % if the shelf has room and the robot has grabbed an item, the item can be discarded
can_be_discarded(item(X)) :- has_room(bin), grabbed(robot, item(X)). % if the bin has room and the robot has grabbed an item, the item can be discarded

%--------------------------2.2---------------------------
%Facts
is_heavy(item(hagelslag)). % the item hagelslag is heavy
is_empty(item(coke)). % the item coke is empty
has_room(shelf). % the shelf has room
has_room(bin). % the bin has room