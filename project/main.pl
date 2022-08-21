cidade("Petrolina").
cidade("Rajada").
cidade("Lagoa Grande").
cidade("Santa Maria da Boa Vista").
cidade("Orocó").
cidade("Cabrobó").
cidade("Belém do São Francisco").
cidade("Floresta").
cidade("Ibimirim").
cidade("Cruzeiro do Nordeste").
cidade("Arco Verde").
cidade("Mata Cabra").
cidade("Pesqueira").
cidade("Sanharó").
cidade("Belo Jardim").
cidade("São Caitano").
cidade("Tacaimbó").
cidade("Fazenda Nova").
cidade("Cachoeira Seca").
cidade("Caruaru").
cidade("Toritama").
cidade("Santa cruz do Capibaribe").
cidade("Jataúba").
cidade("Bonito").
cidade("Palmares").
cidade("Praia de Tamandaré").
cidade("Sirinhaém").
cidade("Porto de Galinhas").
cidade("Ipojuca").
cidade("Cabo de Santo Agostinho").
cidade("Jaboatão dos Guararapes").
cidade("Recife").
cidade("Olinda").
cidade("Igarassu").
cidade("Ilha de Itamaracá").
cidade("Vitoria de Santo Antão").
cidade("Gravatá").
cidade("Bezerros").
cidade("Pombos").
cidade("Areias").
cidade("João Pessoa").
cidade("Afrânio").
cidade("Rajada").
cidade("Dormentes").
cidade("Santa Filomena").
cidade("Santa Cruz").
cidade("Lagoas").


rota("Petrolina", "Lagoa Grande", 53.2, "BR-122").
rota("Petrolina", "Rajada", 78.5, "BR-407").
rota("Rajada", "Dormentes", 49.9, "PE-630").
rota("Rajada", "Dormentes", 49.9, "PE-630").
rota("Rajada", "Afrânio", 41.5, "BR-407").
rota("Rajada", "Afrânio", 41.5, "BR-407").
rota("Afrânio", "Dormentes", 32.1, "Afrânio Caboclo").
rota("Dormentes", "Santa Filomena", 38.3, "PE-630").
rota("Santa Filomena", "Santa Cruz", 39.8, "BR-122").
rota("Dormentes", "Lagoas", 45.2, "PE-635").
rota("Santa Filomena", "Lagoas", 32.7, "BR-122").
rota("Lagoas", "Dormentes", 45.2, "PE-635").
rota("Lagoa Grande", "Santa Maria da Boa Vista", 55.4, "BR-428").
rota("Santa cruz", "Ouricuri", 53.4, "BR-1222").
rota("Lagoa Grande", "Lagoas", 76.2, "BR-122").
rota("Santa Maria da Boa Vista", "Orocó", 36.7, "BR-428").
rota("Orocó", "Cabrobó", 38.7, "BR-428").
rota("Cabrobó", "Belém de São Francisco", 50.3, "BR-316").
rota("Belém de São Francisco", "Floresta", 46.1, "BR-316").
rota("Floresta", "Ibimirim", 102.0, "PE-360").
rota("Ibimirim", "Cruzeiro do Nordeste", 53.0, "BR-110").
rota("Cruzeiro do Nordeste", "Arco Verde", 25.9, "BR-232").
rota("Arco Verde", "Pesqueira", 42.5, "BR-232").
rota("Pesqueira", "Sanharó", 16.4, "BR-232").
rota("Sanharó", "Belo Jardim", 20.5, "BR-232").
rota("Belo Jardim", "São Caitano", 33.6, "BR-232").
rota("São Caitano", "Bezerros", 45.7, "BR-232").
rota("Bezerros", "Gravatá", 21.7, "BR-232").
rota("Gravatá", "Pombos", 22.2, "BR-232").
rota("Pombos", "Moreno", 37.9, "BR-232").
rota("Pombos", "Recife", 61.5, "BR-232").
rota("Moreno", "Recife", 28.6, "PE-007").
rota("Recife", "Olinda", 9.7, "Av. Dom Hélder").


onibus("b0001", "Progresso").
onibus("b0002", "Progresso").
onibus("b0003", "Guanabara").
onibus("b004", "Progresso").


horario("v0001","b0001", 360, 406).
horario("v0002","b0001", 600, 696).
horario("v0003","b0002", 780, 916).
horario("v0004","b0002", 780, 916).
horario("v0005", "b0003", 410, 945).
horario("v0006", "b0004", 420, 611).
horario("v0007", "b0001", 420, 1000).

viagem("Lagoa Grande", " Cabrobó", "v0002", 35.00).
viagem("Petrolina", "Lagoa Grande", "v0001", 10.00).
viagem("Petrolina", "Arco Verde", "v0004", 67.00).
viagem("Petrolina", "Recife", "v0005", 124.00).
viagem("Petrolina, Cabrobó", "v0007", 45.00).
viagem("Cabrobó", "Petrolina", "v0003", 50.50).
viagem("Recife", "Petrolina", "v0008", 120.00).
viagem("Recife", "Caruaru", "v0009", 77.00).
viagem("Recife", "Gravata", "v0010", 63.00).
viagem("Gravata", "Recife", "v0011", 65.00).
viagem("Arco Verde", "Recife", "v0006", 64.00).
viagem("Lagoa Grande", "Recife", "v0007", 110.00).



