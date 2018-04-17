%% male(X) : X is male.
male(taro).
male(jiro).
male(papa).
male(ji-ji).
male(jichan).

%% female(X) : X is female.
female(hanako).
female(mama).
female(ba-ba).
female(bachan).

%% parent(X,Y) : X is Y's parent.
parent(papa,taro).
parent(papa,jiro).
parent(papa,hanako).
parent(mama,taro).
parent(mama,jiro).
parent(mama,hanako).
parent(ji-ji,papa).
parent(ba-ba,papa).
parent(jichan,mama).
parent(bachan,mama).

gfather(X,Z):-parent(X,Y),parent(Y,Z),male(X).
gmother(X,Z):-parent(X,Y),parent(Y,Z),female(X).
brother(X,Y):-parent(Z,X),parent(Z,Y),male(Y).
%% sister(X,Y) : Y is X's sister.
sister(X,Y):-parent(Z,X),parent(Z,Y),female(Y).