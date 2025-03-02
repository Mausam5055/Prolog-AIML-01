:- dynamic animal/1.

% imagine you define a rule for pets, but you want it to fail for certain cases:


% is_pet(X) :- 
%     animal(X),
%     X \= dog,  % Dogs are not allowed as pets
%     write(X), nl.


% ?- is_pet(X).

% Output:
% cat
% bird
% false.

% If X is dog, the condition X \= dog fails, and Prolog skips it

%fail is like negation
% Facts: Define some animals

animal(cat).
animal(dog).
animal(bird).
animal(fish).

% Rule: List all animals
list_animals :-
    animal(X),  %find an animal
    X \= dog,  % Dogs are not allowed as pets          
    write(X), nl,       % Print the animal
    fail.               % Force backtracking to find the next animal
list_animals.           % Ensures the query terminates after all    solutions

%after writing this code dog will not be printed in the terminal as
%it is not accepted as animal now 
