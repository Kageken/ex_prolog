%% father(X,Y) : X is Y's father.
father(papa,taro).
father(papa,jiro).
father(papa,hanako).
father(ji-ji,papa).
father(jichan,mama).

%% mother(X,Y) : X is Y's mother.
mother(mama,taro).
mother(mama,jiro).
mother(mama,hanako).
mother(ba-ba,papa).
mother(bachan,mama).

%% gfather(X,Y) : X is Y's grandfather.
gfather(X,Z):-father(X,Y),father(Y,Z).
gfather(X,Z):-father(X,Y),mother(Y,Z).

%% gmother(X,Y) : X is Y's grandmother.
gmother(X,Z):-mother(X,Y),father(Y,Z).
gmother(X,Z):-mother(X,Y),mother(Y,Z).

%% brother(X,Y) : Y is X's brother.
brother(X,Y):-father(Z,X),father(Z,Y).
brother(X,Y):-mother(Z,X),mother(Z,Y).