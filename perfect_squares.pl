% Um quadrado perfeito é um número que é o quadrado de um número inteiro. Por exemplo, 1, 4, 9, 16 e 25 são quadrados perfeitos, pois são 1^2, 2^2, 3^2, 4^2, 5^2, respectivamente.

% Desenvolva um programa para gerar os primeiros N quadrados perfeitos.

print_perfect_squares(N, N) :- Res is N^2, writeln(Res), !.
print_perfect_squares(Cur, N) :- Res is Cur^2, writeln(Res), NewCur is Cur+1, print_perfect_squares(NewCur,N).

print_perfect_squares(N) :- print_perfect_squares(1, N).
    
main :-
    read(N),
    
    print_perfect_squares(N).
