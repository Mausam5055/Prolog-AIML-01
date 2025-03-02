%           --------- HOW TO WRITE A PROLOG FILE ------------

% 1.Create a new file:

% 2.Click on File > New File or press Ctrl+N.
% Save the file with a .pl extension (e.g., family.pl):

% 3.Click File > Save As, and name it family.pl.
% Write your Prolog code, for example:


% parent(john, mary).
% parent(mary, sue).
% ancestor(X, Y) :- parent(X, Y).
% ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% 5. Set Up the Terminal
% To run the Prolog program in the terminal:

% Open a terminal in VS Code:
% Click View > Terminal or press `Ctrl+``.

% 6. Start the SWI-Prolog Interpreter
% In the terminal, start SWI-Prolog by typing:
% swipl
% then,
% You will see the Prolog prompt:
% ?-

% 7. Load the Prolog File
% At the Prolog prompt, load your program using the consult syntax:

% prolog
% Copy code
% ?- [family].
% If the file loads successfully, you’ll see:
% true.

% 8. Run Queries
% Now you can run queries to test your program. For example:

% Query 1: Is john an ancestor of sue?
% ?- ancestor(john, sue).
% Output:
% true.

% Query 2: Find all ancestors of sue:
% ?- ancestor(X, sue).
% Output:
% X = mary ;
% X = john.

% 9. Exit Prolog
% When you're done, exit the Prolog interpreter by typing:


% ?- halt.