% Escreva um programa em Prolog que recebe dois inteiros: primeiro, um número qualquer e depois um dígito. 
% O programa então deve retornar se o dígito é divisor do número, se o dígito é o último dígito do número ou as duas situações de uma vez só.

% Observação: Os dois números precisam ser positivos e diferentes de 0. O dígito deve ser um número entre 1 e 9.

div(Dig, Num) :- Num mod Dig =:= 0.
last_dig(Dig, Num) :- Num mod 10 =:= Dig.

solve(Num,Dig) :-
    div(Dig, Num),
	last_dig(Dig, Num),
    writeln("its both"), !.

solve(Num,Dig) :-
    div(Dig, Num),
    writeln("its divisor"), !.

solve(Num,Dig) :-
	last_dig(Dig, Num),
    writeln("its last digit"), !.

solve(_,_) :-
    writeln("its nothing").

main :-
    read(Num),
    read(Dig),
    
    Num > 0,
    Dig > 0,
    Dig < 10,
    
    solve(Num,Dig).
