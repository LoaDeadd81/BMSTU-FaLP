domains
  num = integer.

predicates
  factorial(num, num). 
  factorial(num, num, num).

  fibonacci(num, num).
  fibonacci(num, num, num, num).

clauses
  factorial(0, 1) :- !.
  factorial(N, Result) :-
    factorial(N, 1, Result).
  factorial(1, Result, Result) :- !.
  factorial(Number, Current, Result) :-
    Next = Number - 1,
    Multiplication = Number * Current,
    factorial(Next, Multiplication, Result).

  fibonacci(0, 1) :- !.
  fibonacci(1, 1) :- !.
  fibonacci(N, Result) :-
    T = N - 1,
    fibonacci(T, 1, 1, Result).
  fibonacci(0, _, Result, Result) :- !.
  fibonacci(N, Prev, Cur, Result) :-
    T = N - 1,
    NextPrev = Cur,
    NextCur = Prev + Cur,
    fibonacci(T, NextPrev, NextCur, Result).

goal
  %factorial(5, Result).
  %fibonacci(3, Result).