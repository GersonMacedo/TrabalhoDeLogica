 # Regras

 ## Funções auxiliares

```pl
contem([X | _], X).
contem([_ | V], X) :- contem(V, X).

trajeto(A, B, _, T, D) :- rota(A, B, D, R), T = [A, R, D, B].
trajeto(A, B, U, T, D) :- rota(A, C, D1, R), C \= B, not(contem(U, C)), trajeto(C, B, [C | U], T1, D2), T = [A, R, D1 | T1], D is D1 + D2.
 
imprimeTrajeto(T, D) :-
    format("____________________________________ ~nDistancia Total: ~w~nRota: ", [D]),
    writeln(T).

imprimeTrajetos(A, B) :- forall(trajeto(A, B, [A], T, D), imprimeTrajeto(T, D)).

menorTrajeto(A, B, M) :- findall(D, trajeto(A, B, [A], _, D), V), sort(V, [M|_]).

imprimeMenorTrajeto(A, B) :- 
    menorTrajeto(A, B, D),
    forall(trajeto(A, B, [A], T, D), imprimeTrajeto(T, D)).
```

 ## Determina todas as rotas possiveis de A até B saindo depois das H horas

```pl
todasRotas(A, B, H, R, PT, HS, HC) :- viagem(A, B, I, PT), horario(I, _, HS, HC), H =< HS, R = [A, I, B].
todasRotas(A, B, H, R, PT, HS, HC) :- viagem(A, C, I, P1), horario(I, _, HS, HC1), H =< HS, todasRotas(C, B, HC1, R2, P2, _, HC), PT is P1 + P2, R = [A, I | R2].

imprimeRota(HorarioS, HorarioC, Preco, Rota) :- 
    HS is HorarioS // 60,
   	MS is mod(HorarioS ,60),
    HC is HorarioC // 60,
    MC is mod(HorarioC ,60),
	format('____________________________________ ~n~w~w:~w hrs~n~w~w:~w hrs~n~w~w~nRota: ',[
		'Saida: ', HS,MS, 
        'Chegada: ', HC,MC,
        'Preço: R$ ', Preco
    ]),
    writeln(Rota).

imprimeRotas(A, B, H, M) :-
    T is H * 60 + M,
    forall(
    	todasRotas(A, B, T, R, PT, HorarioS, HorarioC),
    	imprimeRota(HorarioS, HorarioC, PT, R)
    ).
```

 ## Determina o menor tempo de chegada em B saindo de A depois das H horas

 ```pl
menorTempo(A, B, H, C) :- findall(HC, todasRotas(A, B, H, _, _, _, HC), V), sort(V, [C|_]).

imprimeMenorTempo(A, B, H, M) :-
    T is H * 60 + M,
    menorTempo(A, B, T, C),
    forall(
    	todasRotas(A, B, T, R, PT, HorarioS, C),
    	imprimeRota(HorarioS, C, PT, R)
    ).
```

 ## Determina o menor preço para uma viagem de A até B saindo depois das H horas.
 
 ```pl
menorPreco(A, B, H, P) :- findall(PT, todasRotas(A, B, H, _, PT, _, _), V), sort(V, [P|_]).

imprimeMenorPreco(A, B, H, M) :-
    T is H * 60 + M,
    menorPreco(A, B, T, P),
    forall(
    	todasRotas(A, B, T, R, P, HorarioS, HorarioC),
    	imprimeRota(HorarioS, HorarioC, P, R)
    ).
```

 ## Consulta em relação a cidade e empresa

 ```pl
suaCidade(City):- nl,
  	forall(
        (
        	viagem(City,Cidade,IdViagem,Preco),
       		horario(IdViagem,IdOnibus,HorarioS,HorarioC),
       		onibus(IdOnibus, NomeTransp),
           	HS is HorarioS // 60,
        	MS is mod(HorarioS ,60),
           	HC is HorarioC // 60,
        	MC is mod(HorarioC ,60)
        )
        ,  format('~w~w~n~w~w:~w hrs~n~w~w:~w hrs~n~w~w~n~w~w~n____________________________________ ~n',
                  ['Destino: ', Cidade,
                   'Saida: ', HS,MS, 
                   'Chegada: ', HC,MC,
                   'Empresa: ', NomeTransp,
                   'Preço: R$ ', Preco])).

viagensEmpresa(Empresa):- nl,
  	forall(
        (
        	viagem(De,Para,IdViagem,Preco),
       		horario(IdViagem,IdOnibus,HorarioS,HorarioC),
       		onibus(IdOnibus, Empresa),
           	HS is HorarioS // 60,
        	MS is mod(HorarioS ,60),
           	HC is HorarioC // 60,
        	MC is mod(HorarioC ,60)
        )
        ,  (format('~w~w~n~w~w~n~w~w~n~w~w:~w hrs~n~w~w:~w hrs~n~w~w~n____________________________________ ~n',
                  ['Onibus: ', IdOnibus,
                   'De: ', De,
                   'Para: ', Para,
                   'Saida: ', HS,MS, 
                   'Chegada: ', HC,MC,
                   'Preço: R$ ', Preco]))).
```