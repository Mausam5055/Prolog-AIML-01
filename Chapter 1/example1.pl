% Facts
likes(john, blue).
likes(mary, green).
likes(sue, blue).



% Steps to Run This Program:
% Open the terminal.

% Start the Prolog interpreter:
% swipl

% Load the file into Prolog:
% ?- [example1].
% Run some queries to test the logic:

% Query 1: Does John like blue?
% ?- likes(john, blue).
% Output:true.

% Query 2: Does Mary like blue?
% ?- likes(mary, blue).
% Output:false.

% Query 3: Who likes blue?
% ?- likes(X, blue).
% Output:
% X = john ;
% X = sue.


% Why This is Easy:
% It uses facts only—no complex rules or recursion.
% It's just about querying whether something is true or finding matches for a fact.