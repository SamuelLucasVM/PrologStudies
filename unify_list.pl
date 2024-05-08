% Dada uma lista de listas, escreva um programa Prolog que retorne uma lista única com todos os
% elementos das listas internas.

consolida([], []).
consolida([[]|T], R) :- consolida(T,R).
consolida([[H|T1]|T2], R) :- 
    NewList = [T1|T2],
    consolida(NewList, NewR),
    R = [H|NewR].
