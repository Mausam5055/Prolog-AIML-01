% Let's walk through a basic example in Prolog using loops (recursion in Prolog). Prolog doesn't have traditional loops like in other programming languages (e.g., for or while), but it uses recursion to achieve similar results.

% Goal
% We'll write a simple Prolog program to sum the numbers from 1 to N.


% Create a New File:
% Open VS Code and create a new file named sum_numbers.pl.

% Write the Code:

% Here's the code to sum numbers from 1 to N:
% % Base case: Sum of numbers from 1 to 0 is 0
% sum(0, 0).

% % Recursive case: Sum of numbers from 1 to N is N + sum(N-1)
% sum(N, Sum) :-
%     N > 0,
%     N1 is N - 1,             % Decrease N by 1
%     sum(N1, Sum1),           % Recursively call sum(N-1)
%     Sum is N + Sum1.         % Add N to the result of sum(N-1)

% Explanation of Each Part:
% Base Case (sum(0, 0).):
% This is the simplest condition, which is the base case of the recursion. When N is 0, the sum is also 0.

% Recursive Case (sum(N, Sum) :- ...):
% This part defines the recursive case. It says that for any number N > 0, the sum can be found by adding N to the sum of numbers from N-1. This is done by calling the sum(N1, Sum1) rule recursively, where N1 = N - 1.

% N > 0 ensures that we don't hit an infinite recursion (we need to stop at N = 0).

% N1 is N - 1 calculates the next value of N (i.e., one less than N).

% sum(N1, Sum1) recursively calculates the sum for N1.
% Sum is N + Sum1 calculates the final sum by adding N to the result of sum(N-1).

% Running the Program:
% Load the Program in SWI-Prolog:
% Open a terminal in VS Code (or open the SWI-Prolog command line).

% In the terminal, type the following to load your Prolog file:
% ?- [sum_numbers].
% This will load the sum_numbers.pl file into Prolog.
% Query the Sum:

% You can now run a query to calculate the sum of numbers from 1 to N. For example:

% ?- sum(5, Sum).
% Prolog will respond with:
% Sum = 15.
% This is because the sum of numbers from 1 to 5 is 1 + 2 + 3 + 4 + 5 = 15.

% Recap:
% The program uses recursion (repeated function calls) to calculate the sum of numbers.

% The sum/2 predicate works by breaking down the problem into smaller sub-problems, with the base case stopping the recursion.

% The key idea is that Prolog doesn't use traditional loops but instead relies on recursive predicates.

% Let me know if you'd like further details or another example!