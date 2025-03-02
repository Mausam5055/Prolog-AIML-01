% Facts: Define some fruits
fruit(apple).
fruit(banana).
fruit(orange).
fruit(grape).

% Rule: Check if a fruit exists
find_fruit :-
    fruit(X),         % Prolog matches a fruit fact
    write(X), nl,     % Print the fruit
    fail.             % Force Prolog to backtrack to find the next fruit            
find_fruit.           % Ensures the query ends gracefully after all fruits are found


% How It Works:
% Facts:
% fruit(apple), fruit(banana), etc., are the known fruits.

% Rule:
% find_fruit: Finds a fruit (fruit(X)), prints it (write(X)), and forces backtracking with fail.

% Backtracking:
% When fail is encountered, Prolog goes back and tries the next fruit fact in the database.

% End of Search:
% The second find_fruit clause ensures that the query ends after all fruits are printed.

% Query:
% ?- find_fruit.

% Output:
% apple
% banana
% orange
% grape
% false.

% Step-by-Step Explanation:
% First Match:
% Prolog starts with the first fact, fruit(apple).
% Prints apple.
% Encounter fail:

% Prolog hits fail and backtracks to find another fruit.
% Next Match:
% Prolog finds the next fact, fruit(banana).
% Prints banana.
% Continue Backtracking:

% Prolog continues this process for fruit(orange) and fruit(grape).
% No More Fruits:

% When there are no more fruits, Prolog terminates the query with false.
% Why Backtracking Is Useful
% Backtracking ensures that all solutions are explored automatically:

% You don’t need to write a loop; Prolog handles the search for you.
% You can use fail to force Prolog to backtrack and try all options.
% Key Takeaway:
% Backtracking in Prolog is Prolog's way of finding all possible solutions to a query.
% The fail predicate is a useful tool to force Prolog to backtrack