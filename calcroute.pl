% 事実定義
arc(a, b, 2).
arc(a, c, 5).
arc(a, d, 6).
arc(b, c, 3).
arc(b, d, 1).
arc(d, c, 3).

% 規則定義
cost(X, Y, C) :- arc(X, Y, C).
cost(X, Y, C) :- arc(X, T, C1), cost(T, Y, C2), C is (C1 + C2).

