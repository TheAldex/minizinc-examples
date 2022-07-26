%   RAFA
% +NADAL
%  -----
%  TENIS

include "alldifferent.mzn";

var 1..9: R; % !!
var 0..9: A;
var 0..9: F;
var 1..9: N; % !!
var 0..9: D;
var 0..9: L;
var 1..9: T; % !! 
var 0..9: E;
var 0..9: I;
var 0..9: S;

constraint                   1000 * R + 100 * A + 10 * F + A
               + 10000 * N + 1000 * A + 100 * D + 10 * A + L
  =              10000 * T + 1000 * E + 100 * N + 10 * I + S;

constraint alldifferent([R,A,F,N,D,L,T,E,I,S]);

solve satisfy;

output ["  ",           show(R),show(A),show(F),show(A),"\n",
        "+",    show(N),show(A),show(D),show(A),show(L),"\n",
        "------\n",
	" ",    show(T),show(E),show(N),show(I),show(S),"\n"];