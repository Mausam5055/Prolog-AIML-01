---

# Prolog Basics

Welcome to the **Prolog Basics** course! This repository is designed to introduce you to the fundamentals of Prolog programming. If you're new to logic programming or want to deepen your understanding, this course will provide you with all the essential concepts and hands-on examples to get started.

## Table of Contents

1. [Course Overview](#course-overview)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Course Structure](#course-structure)
5. [Code Examples](#code-examples)
6. [Exercises](#exercises)
7. [License](#license)

---

## Course Overview

In this repository, we’ll cover the following topics:

- Introduction to Prolog
- Facts and Rules
- Queries in Prolog
- Variables and Unification
- Lists in Prolog
- Recursion in Prolog
- Prolog's Backtracking Mechanism
- Advanced Topics (e.g., Cut, Negation)

Each section contains code examples and exercises to help you learn and practice Prolog in a hands-on way.

---

## Prerequisites

Before starting this course, you should have:

- Basic programming knowledge (any language like Python, C, or Java)
- A logical mindset and an understanding of basic logic principles
- No prior Prolog experience is required!

---

## Installation

### 1. Install a Prolog interpreter

To run Prolog code, you'll need a Prolog interpreter. You can use **SWI-Prolog**, a popular and free implementation of Prolog.

- **SWI-Prolog**: [Download here](https://www.swi-prolog.org/Download.html)

After installation, you can start the interpreter by typing `swipl` in your terminal or command prompt.

### 2. Clone the repository

```bash
git clone https://github.com/yourusername/prolog-basics.git
```

### 3. Navigate to the project directory

```bash
cd prolog-basics
```

You can now open the Prolog files in your preferred text editor or directly in SWI-Prolog.

---

## Course Structure

The course is divided into various sections, each focusing on a different concept of Prolog programming. The structure is as follows:

```
prolog-basics/
│
├── 01_introduction/
│   └── intro.pl
├── 02_facts_and_rules/
│   └── facts_and_rules.pl
├── 03_queries/
│   └── queries.pl
├── 04_variables_unification/
│   └── variables_unification.pl
├── 05_lists/
│   └── lists.pl
├── 06_recursion/
│   └── recursion.pl
└── 07_advanced_topics/
    └── advanced_topics.pl
```

---

## Code Examples

Here are some basic examples to get you started with Prolog.

### 1. Introduction to Facts and Rules (intro.pl)

```prolog
% Facts
likes(john, pizza).
likes(jane, pasta).
likes(john, pasta).

% Rules
loves(X, Y) :- likes(X, Y), likes(Y, X).

% Queries
% ?- likes(john, pizza).   % True
% ?- loves(john, jane).    % True, because both like each other
```

#### Running the example:
1. Open the `intro.pl` file in SWI-Prolog.
2. Run a query by typing it into the Prolog prompt.

---

### 2. Working with Queries (queries.pl)

```prolog
% Facts
father(john, jim).
father(jim, tom).

% Queries
% ?- father(john, X).  % Returns X = jim
% ?- father(jim, X).   % Returns X = tom
```

#### Explanation:
Prolog can return variables based on facts and queries. In this case, `X` will be bound to the values that satisfy the query.

---

### 3. Variables and Unification (variables_unification.pl)

```prolog
% Facts
father(john, jim).
father(jim, tom).

% Queries
% ?- father(X, jim).   % Returns X = john
% ?- father(jim, X).   % Returns X = tom
```

#### Explanation:
Unification in Prolog means matching variables with facts in the database. It automatically "binds" values to variables to make the query true.

---

### 4. Lists in Prolog (lists.pl)

```prolog
% List facts
member(X, [X|_]).  % Head of the list
member(X, [_|Tail]) :- member(X, Tail).  % Tail of the list

% Queries
% ?- member(john, [jim, john, alice]).  % True
% ?- member(tom, [jim, john, alice]).   % False
```

#### Explanation:
In Prolog, lists are a fundamental data structure. The `member/2` predicate checks if an element is part of the list.

---

### 5. Recursion in Prolog (recursion.pl)

```prolog
% Factorial
factorial(0, 1).  % Base case
factorial(N, Result) :- N > 0, N1 is N - 1, factorial(N1, Result1), Result is N * Result1.

% Queries
% ?- factorial(5, X).  % X = 120
```

#### Explanation:
Recursion is commonly used in Prolog to break problems down into smaller subproblems, such as computing factorials.

---

## Exercises

Here are some exercises to test your understanding and practice Prolog:

1. **Write a Prolog fact to define the "sibling" relationship.** Use facts like `sibling(john, jane).`
2. **Create a rule for "ancestor" that works recursively.** Use facts like `father(john, jim).`
3. **Write a Prolog predicate that finds the length of a list.**
4. **Write a recursive predicate to reverse a list in Prolog.**
5. **Create a Prolog program that finds the greatest common divisor (GCD) of two numbers.**

---

## License

This repository is open-source and available under the MIT License. You can freely use, modify, and distribute the code, but please attribute it to the author.

---

Happy learning and logic programming! 🔍

---
