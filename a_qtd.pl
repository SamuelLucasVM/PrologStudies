% Teobaldo é curioso precisa de sua ajuda para contar a quantidade de vogais "a" em uma lista de nomes de alunos de computação.

% Faça um programa que receba uma lista de nomes e retorne a quantidade de vogais "a".

% Para simplificar, assuma que os nomes serão escritos com letras minúsculas e sem acentuação.

% ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".

a_qtd_word([], 0).
a_qtd_word(['a'|Others], Qtd) :- a_qtd_word(Others, NewQtd), Qtd is NewQtd + 1.
a_qtd_word([_|Others], Qtd) :- a_qtd_word(Others,Qtd).
    

a_qtd([], 0).
a_qtd([Word|Others], Qtd) :- 
    atom_chars(Word, AtomWord),
    a_qtd_word(AtomWord, WordAQtd),
	a_qtd(Others, OtherQtd),
    Qtd is OtherQtd + WordAQtd.
    

main :- 
    read(Names),
    
    a_qtd(Names, Qtd),
    writeln(Qtd).
