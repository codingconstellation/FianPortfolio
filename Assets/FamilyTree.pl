/* Facts */
parent(john, mike).
parent(john, lisa).
parent(lisa, sarah).
parent(lisa, david).
parent(mike, emily).
parent(mike, alex).
parent(alex, julia).
parent(sarah, mark).
parent(sarah, enna).

male(john).
male(mike).
male(david).
male(alex).
male(mark).

female(lisa).
female(sarah).
female(emily).
female(emma). % Emma is included but not used in relationships
female(julia).
female(enna).

/* Rules */
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

siblings(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.

/* Initialization */
:- initialization(main).

main :-
    % Example queries for demonstration
    write('Running example queries...'), nl,

    % Query for fathers
    write('Fathers of Sarah:'), nl,
    (father(Father, sarah) -> write(Father), nl; write('None'), nl),

    % Query for mothers
    write('Mothers of Mark:'), nl,
    (mother(Mother, mark) -> write(Mother), nl; write('None'), nl),

    % Query for siblings
    write('Siblings of Sarah:'), nl,
    (siblings(sarah, Sibling) -> write(Sibling), nl; write('None'), nl),

    % Indicate end of execution
    write('Initialization complete. You can now query the facts and rules interactively.'), nl,
    halt.
