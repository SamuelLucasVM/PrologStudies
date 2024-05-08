% Escreva um programa Prolog que recebe 2 inteiros e gera uma lista contendo o intervalo
% decrescente dos valores entre eles. Caso a primeira entrada seja menor que a primeira, o programa 
% deverá retornar a mensagem: "Não existe!". 

geraLista(X,Y,R) :- X < Y, R = "Não existe!", !.
geraLista(Y,Y,[Y]).
geraLista(X,Y,R) :- 
    NewX is X - 1,
    geraLista(NewX, Y, NewR),
    R = [X|NewR].
