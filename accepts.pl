% accepts predicate for PDAs.
% accepts(State, Tape, Stack) is True iff the given PDA would accept, 
% starting in the given State, the input on the Tape with the given Stack.

accepts(Q, [], []) :- accepting(Q).

accepts(Q, Tape, Stack) :-
    ([S | _] = Tape; S = epsilon),
    ([T | _] = Stack; T = epsilon),
    transition(Q, S, T, NewTop, NewQ),
    newTape(Tape, S, NewTape),
    newStack(Stack, T, NewTop, NewStack),
    accepts(NewQ, NewTape, NewStack).

newTape(Tape, epsilon, Tape).
newTape([Symbol | Rest], Symbol, Rest).

newStack(Stack, epsilon, epsilon, Stack).
newStack([Pop | Rest], Pop, epsilon, Rest).
newStack(Stack, epsilon, Push, [Push | Stack]).
newStack([Pop | Rest], Pop, Push, [Push | Rest]).

