% PDA for the language w w^R
% This machine is from lecture notes for Lecture 15

accepting(q3).

% transition(state, tape, top of stack, new top of stack, newState).

transition(q0, epsilon, epsilon, $, q1).
transition(q1, 0, epsilon, 0, q1).
transition(q1, 1, epsilon, 1, q1).
transition(q1, epsilon, epsilon, epsilon, q2).
transition(q2, 0, 0, epsilon, q2).
transition(q2, 1, 1, epsilon, q2).
transition(q2, epsilon, $, epsilon, q3).