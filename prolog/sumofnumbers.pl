% Base case: If N is 0, the sum is 0
sum(0, 0).

% Recursive case: Sum of numbers from 1 to N is N + sum(N-1)
sum(N, Sum) :-       % sum of the numbers from 1 to N
    N > 0,           % N should be positive
    N1 is N - 1,     % Decrease N by 1
    sum(N1, Sum1),   % Recursively calculate sum(N-1)
    Sum is N + Sum1. % Add N to the result of sum(N-1)

