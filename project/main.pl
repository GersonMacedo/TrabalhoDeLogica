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


pista("Petrolina", "Lagoa Grande", 53.2, "BR-122").
pista("Petrolina", "Rajada", 78.5, "BR-405").
pista("Rajada", "Dormentes", 49.9, "PE-630").
pista("Rajada", "Afrânio", 41.5, "BR-407").
pista("Afrânio", "Dormentes", 32.1, "Afranio Caboclo").
pista("Dormentes", "Lagoas", 45.2, "PE-635").
pista("Lagoas", "Santa Cruz", 32.7, "BR-122").
pista("Santa Cruz", "Santa Filomena", 39.8, "BR-122").
pista("Dormentes", "Santa Filomena", 38.3, "PE-630").
pista("Lagoa Grande", "Santa Maria da Boa Vista", 55.4, "BR-428").
pista("Santa Maria da Boa Vista", "Orocó", 36.7, "BR-428").
pista("Orocó", "Cabrobó", 38.7, "BR-428").
pista("Cabrobó", "Belém de São Francisco", 50.3, "BR-316").
pista("Belém de São Francisco", "Floresta", 46.1, "BR-316").
pista("Floresta", "Ibimirim", 102.0, "PE-360").
pista("Floresta", "Petrolândia", 65.7, "BR-316").
pista("Petrolândia", "Ibimirim", 76.7, "BR-110").
pista("Ibimirim", "Cruzeiro do Nordeste", 53.0, "BR-110").
pista("Cruzeiro do Nordeste", "Arco Verde", 25.9, "BR-232").
pista("Arco Verde", "Pesqueira", 42.5, "BR-232").
pista("Pesqueira", "Sanharó", 16.4, "BR-232").
pista("Sanharó", "Belo Jardim", 20.5, "BR-232").
pista("Belo Jardim", "Tacaimbó", 20.1, "BR-232").
pista("Belo Jardim", "São Caitano", 33.6, "BR-232").
pista("São Caitano", "Tacaimbó", 18.9, "BR-232").
pista("São Caitano", "Caruaru", 20.5, "BR-232").
pista("Tacaimbó", "Fazenda Nova", 23.1, "PE-144").
pista("Fazenda Nova", "Jataúba", 45.7, "PE-145").
pista("Fazenda Nova", "Cachoeira Seca", 24.1, "PE-145").
pista("Cachoeira Seca", "Toritama", 14.7, "PE-104").
pista("Cachoeira Seca", "Caruaru", 23.5, "PE-104").
pista("Caruaru", "Bezerros", 32.7, "BR-232").
pista("Bezerros", "Gravatá", 21.7, "BR-232").
pista("Bezerros", "Bonito", 31.6, "PE-103").
pista("Bonito", "Palmares", 43.9, "PE-103").
pista("Toritama", "Santa Cruz do Capibaribe", 20.1, "BR-104").
pista("Santa Cruz do Capibaribe", "Jataúba", 36.7, "PE-160").
pista("Pombos", "Vitoria de Santo Antão", 14.5, "BR-232").
pista("Pombos", "Gravatá", 23.2, "BR-232").
pista("Moreno", "Recife", 30, "PE-007").
pista("Moreno", "Jaboatão dos Guararapes", 26.8, "PE-007").
pista("Moreno", "Vitoria de Santo Antão", 23.5, "BR-232").
pista("Palmares", "Praia de Tamandaré", 68.3, "PE-096").
pista("Praia de Tamandaré", "Sirinhaém", 31, "PE-096").
pista("Sirinhaém", "Porto de Galinhas", 28.7, "PE-60").
pista("Sirinhaém", "Ipojuca", 27.6, "PE-60").
pista("Porto de Galinhas", "Ipojuca", 22.6, "PE-038").
pista("Ipojuca", "Cabo de Santo Agostinho", 18.4, "PE-60").
pista("Cabo de Santo Agostinho", "Jaboatão dos Guararapes", 21.2, "BR-101").
pista("Jaboatão dos Guararapes", "Recife", 15, "PE-008").
pista("Recife", "Olinda", 10, "Av. Cruz Cabugá").
pista("Recife", "Igarassu", 26.7, "BR-101").
pista("Igarassu", "Ilha de Itamaracá", 20.1, "PE-035").
pista("Igarassu", "Olinda", 23.9, "BR-101").

rota(A, B, D, R) :- pista(A, B, D, R).
rota(A, B, D, R) :- pista(B, A, D, R).

onibus("b0001", "Progresso").
onibus("b0002", "Progresso").
onibus("b0003", "Guanabara").
onibus("b0004", "Progresso").

horario("v0001","b0001", 6 * 60 , 6 * 60 + 46).
horario("v0002","b0001", 600, 696).
horario("v0003","b0002", 780, 916).
horario("v0004","b0002", 780, 916).
horario("v0005", "b0003", 350, 1300).
horario("v0006", "b0004", 420, 611).
horario("v0007", "b0001", 420, 1350).
horario("v0008", "b0002", 930, 1400).

viagem("Lagoa Grande", " Cabrobó", "v0002", 35.00).
viagem("Petrolina", "Lagoa Grande", "v0001", 5.00).
viagem("Lagoa Grande", "Recife", "v0007", 100.00).
viagem("Petrolina", "Arco Verde", "v0004", 67.00).
viagem("Petrolina", "Recife", "v0005", 114.00).
viagem("Petrolina", "Cabrobó", "v0007", 45.00).
viagem("Cabrobó", "Petrolina", "v0003", 50.50).
viagem("Recife", "Petrolina", "v0008", 120.00).
viagem("Recife", "Caruaru", "v0009", 77.00).
viagem("Recife", "Gravata", "v0010", 63.00).
viagem("Gravata", "Recife", "v0011", 65.00).
viagem("Arco Verde", "Recife", "v0006", 64.00).
viagem("Arco Verde", "Recife", "v0008", 64.00).
