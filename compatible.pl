% Escreva um programa que recebe dois inputs: uma lista de inteiros e um "número mestre", um inteiro entre 1 e 9. 

% Como retorno, imprima a lista, mas com todo número "compatível" com o número mestre substituído por -1. 
 
% Um número é "compatível" com o número mestre, se e somente se, ele é divísivel pelo número mestre OU o seu último dígito é igual ao número mestre.

% OBS: caso o número mestre seja inválido (<= 0 ou >= 10), a lista original deve ser retornada.

compatible(Num, N, Adequate) :- (Num mod N =:= 0 ; Num mod 10 =:= N), Adequate is -1, !.
compatible(Num, _, Adequate) :- Adequate is Num.

solve([], _, []).
solve([Num|Others], N, Res) :-
    compatible(Num, N, Adequate),
    solve(Others, N, RestRes),
    Res = [Adequate|RestRes].

main :- 
    read(Nums),
    read(N),
    
    (N >= 1, N =< 9 -> 
    	solve(Nums, N, Res),
        writeln(Res)
    ;
    	writeln(Nums)   	
    ).
    
