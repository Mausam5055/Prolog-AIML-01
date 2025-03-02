% Backtracking is Prolog's built-in mechanism for finding all possible solutions to a query. When Prolog encounters a failure or needs more solutions, it automatically "goes back" to a previous decision point and tries a different path.

% Decision Point: A place where multiple rules or facts can apply.

% Backtracking: If Prolog doesn't find a solution on one path, it automatically goes back to the last decision point to try an alternative.

% How Backtracking Works:
% Try the First Rule/Fact: Prolog starts with the first matching rule or fact for a query.

% Explore Consequences: It continues exploring until it finds a solution or reaches a dead end.

% Backtrack if Needed: If it reaches a dead end, it goes back to the last decision point and tries the next available option.

% Repeat Until Done: It keeps backtracking until all possibilities are exhausted.

% Simple Example: Family Relationships
% % Facts: defining parent-child relationships:

        % parent(john, mary).
        % parent(john, peter).
        % parent(susan, mary).
        % parent(susan, peter).
% % Rule: defining siblings
%      sibling(X, Y) :-
%      parent(P, X),
%      parent(P, Y),
%      X \= Y. % X and Y must not be the same person

% Query: Find All Siblings of mary
% If you run:
% ?- sibling(mary, Sibling).
% Step-by-Step Backtracking:

% First Match:
% Prolog starts with the first parent/2 fact: parent(john, mary).

% It checks for another child of john: finds peter.
% Returns Sibling = peter.

% Backtracking:
% Prolog backtracks to the next possible parent of mary: parent(susan, mary).

% It checks for another child of susan: finds peter again.
% Returns Sibling = peter.

% Exhaust Options:
% After trying all possible combinations, Prolog stops.
% Result:

% Sibling = peter ;
% Sibling = peter ;
% false.

% (You see peter twice because mary shares both parents with peter in this case.)