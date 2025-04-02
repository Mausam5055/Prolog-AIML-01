# Prolog Basics

A comprehensive introduction to Prolog programming, designed for beginners and intermediate learners.

## 📚 Overview

This course covers the fundamental concepts of Prolog programming, from basic facts and rules to advanced topics like recursion and backtracking. Whether you're new to logic programming or looking to deepen your understanding, this repository provides hands-on examples and exercises to help you master Prolog.

## 🎯 Topics Covered

- Introduction to Prolog
- Facts and Rules
- Queries in Prolog
- Variables and Unification
- Lists in Prolog
- Recursion in Prolog
- Prolog's Backtracking Mechanism
- Advanced Topics (Cut, Negation)

## 🛠️ Prerequisites

- Basic programming knowledge (Python, C, or Java)
- Logical thinking mindset
- No prior Prolog experience required

## 🚀 Getting Started

### Installation

1. **Install SWI-Prolog**
   - Download from [SWI-Prolog website](https://www.swi-prolog.org/Download.html)
   - Start the interpreter by typing `swipl` in your terminal

2. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/prolog-basics.git
   cd prolog-basics
   ```

## 📁 Project Structure

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

## 💡 Code Examples

### 1. Basic Facts and Rules
```prolog
% Facts
likes(john, pizza).
likes(jane, pasta).
likes(john, pasta).

% Rules
loves(X, Y) :- likes(X, Y), likes(Y, X).

% Queries
% ?- likes(john, pizza).   % True
% ?- loves(john, jane).    % True
```

### 2. Working with Queries
```prolog
% Facts
father(john, jim).
father(jim, tom).

% Queries
% ?- father(john, X).  % Returns X = jim
% ?- father(jim, X).   % Returns X = tom
```

### 3. Lists and Recursion
```prolog
% List operations
member(X, [X|_]).  % Head of the list
member(X, [_|Tail]) :- member(X, Tail).  % Tail of the list

% Recursive factorial
factorial(0, 1).  % Base case
factorial(N, Result) :- N > 0, N1 is N - 1, factorial(N1, Result1), Result is N * Result1.
```

## 🎓 Exercises

Practice your Prolog skills with these exercises:

1. Define the "sibling" relationship using facts
2. Create a recursive "ancestor" rule
3. Implement a list length predicate
4. Write a recursive list reversal predicate
5. Create a GCD calculator

## 📝 License

This project is licensed under the MIT License - feel free to use, modify, and distribute the code while maintaining attribution.

---

Happy coding! 🚀
