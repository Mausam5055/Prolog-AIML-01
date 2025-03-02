% Prolog (short for "Programming in Logic") is a programming language designed for solving problems that involve logic and relationships. It’s widely used in areas like artificial intelligence, natural language processing, and database querying.

% Key Features of Prolog
% Declarative Language:

% Instead of telling the computer how to do something (step-by-step instructions), you tell it what is true (facts) and what rules to follow.
% Prolog figures out the "how" for you using logical reasoning.
% Works with Facts and Rules:

% You define facts (things that are true) and rules (logical relationships between facts).
% Then, you ask queries to get answers based on those facts and rules.
% What Does Prolog Do?
% Prolog helps answer questions by reasoning through facts and rules. It is great for problems that involve relationships and patterns, like:

% Who is related to whom in a family tree?
% How to solve a puzzle or a maze?
% How to make decisions based on conditions?
% How Prolog Works
% Define Facts:
% Write things that are always true, e.g.:


% parent(john, mary).  % John is Mary’s parent
% parent(mary, sue).   % Mary is Sue’s parent
% Define Rules:
% Write logic that builds relationships, e.g.:


% ancestor(X, Y) :- parent(X, Y).                  % If X is a parent of Y, X is an ancestor of Y
% ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y). % X is an ancestor if X is a parent of Z, and Z is an ancestor of Y
% Ask Questions (Queries): You can then ask questions, and Prolog will figure out the answer:


% ?- ancestor(john, sue).  % Is John an ancestor of Sue?
% Prolog says: true.

% Where Is Prolog Used?
% Artificial Intelligence (AI):
% Problem-solving, expert systems, and logical reasoning.
% Natural Language Processing:
% Understanding and generating human language.
% Knowledge Representation:
% Organizing and reasoning with knowledge in databases.
% Example in Easy Words
% Imagine you’re teaching a child about family relationships. You tell them:

% John is Mary’s parent.
% Mary is Sue’s parent.
% Then the child (Prolog) can figure out:

% John is Sue’s ancestor because Mary is in between.
% Prolog is like that smart child. You give it knowledge (facts and rules), and it figures out answers by reasoning logically.

