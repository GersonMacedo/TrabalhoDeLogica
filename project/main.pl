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
onibus("b0002", "viação Progresso").
onibus("b0003", "Cruzeiro").
onibus("b0004", "Progresso").
onibus("b0005", "Pernambucana").
onibus("b0006", "Cruzeiro").
onibus("b0007", "Pernambucana").
onibus("b0008", "Pernambucana").
onibus("b0009", "Progresso").
onibus("b0010", "viação Progresso").
onibus("b0011", "viação Progresso").
onibus("b0012", "Progresso").
onibus("b0013", "Pernambucana").
onibus("b0014", "Cruzeiro").
onibus("b0015", "Cruzeiro").
onibus("b0016", "Progresso").
onibus("b0017", "viação Progresso").
onibus("b0018", "Progresso").

horario("v0001", "b0001", 6 * 60 , 6 * 60 + 46).
horario("v0001", "b0009", 720, 764).
horario("v0002", "b0001", 600, 696).
horario("v0003", "b0002", 780, 916).
horario("v0004", "b0002", 780, 916).
horario("v0005", "b0003", 350, 1300).
horario("v0006", "b0004", 420, 611).
horario("v0007", "b0001", 420, 1350).
horario("v0007", "b0010", 210, 1240).
horario("v0008", "b0002", 930, 1400).
horario("v0009", "b0005", 630, 801).
horario("v0009", "b0015", 1000, 1171).
horario("v0010", "b0006", 831, 901).
horario("v0011", "b0007", 600, 729).
horario("v0012", "b0008", 600, 728).
horario("v0013", "b0008", 750, 814).
horario("v0014", "b0009", 800, 945).
horario("v0015", "b0011", 1200, 1285).
horario("v0015", "b0012", 400, 496).
horario("v0015", "b0013", 700, 796).
horario("v0016", "b0014", 700, 796).
horario("v0016", "b0016", 800,877).
horario("v0017", "b0017", 800, 1000).
horario("v0017", "b0018", 900, 1100).


viagem("Lagoa Grande", " Cabrobó", "v0002", 35.00).
viagem("Petrolina", "Lagoa Grande", "v0001", 5.00).
viagem("Lagoa Grande", "Cabrobó", "v0014", 15.00).
viagem("Lagoa Grande", "Recife", "v0007", 100.00).
viagem("Petrolina", "Arco Verde", "v0004", 67.00).
viagem("Petrolina", "Recife", "v0005", 114.00).
viagem("Petrolina", "Cabrobó", "v0014", 45.00).
viagem("Cabrobó", "Petrolina", "v0003", 50.50).
viagem("Recife", "Petrolina", "v0008", 120.00).
viagem("Recife", "Caruaru", "v0009", 77.00).
viagem("Recife", "Gravata", "v0010", 63.00).
viagem("Gravata", "Recife", "v0011", 65.00).
viagem("Arco Verde", "Recife", "v0006", 64.00).
viagem("Arco Verde", "Recife", "v0008", 64.00).
viagem("Arco Verde", "Pombos", "v0009", 35.00).
viagem("Pombos", "Recife", "v0010", 39.99).
viagem("Petrolina", "Santa Cruz", "v0011", 60.0).
viagem("Petrolina", "Dormentes", "v0012", 45.0).
viagem("Dormentes", "Santa Cruz", "v0013", 23.0).
viagem("Gravatá", "Tacaimbó", "v0015", 50.0).
viagem("Toritama", "Bonito", "v0016", 55.00).
viagem("Bezerros", "Praia de Tamandaré","v0017", 88.0).