% PDA for the language 0^i 1^i (from Lecture 15 notes)

accepting(q0).
accepting(q3).

% transition(state, tape, top of stack, new top of stack, newState).

transition(q0, epsilon, epsilon, $, q1).
transition(q1, 0, epsilon, 0, q1).
transition(q1, 1, 0, epsilon, q2).
transition(q2, 1, 0, epsilon, q2).
transition(q2, epsilon, $, epsilon, q3).