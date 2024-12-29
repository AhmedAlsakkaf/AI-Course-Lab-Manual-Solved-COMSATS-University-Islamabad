% Rule for calculating resistance in series
series(R1, R2, Req) :-
    Req is R1 + R2.

% Rule for calculating resistance in parallel
parallel(R1, R2, Req) :-
    Req is (R1 * R2) / (R1 + R2).

% Equivalent resistance for the circuit
equivalent_resistance(Req) :-
    parallel(10, 40, R3),
    series(R3, 12, R4),
    parallel(R4, 30, Req).

% Query: ?- equivalent_resistance(Req).
