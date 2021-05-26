# language: pt
# encoding: utf-8

@films
Funcionalidade: GET

    @get_films
Cenario: Get - Consulta Filmes
    Quando faco uma solicitacao GET para o servico films
    Entao o codigo de resposta HTTP deve ser igual 200
    E terei todos os titulos armazenados