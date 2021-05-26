# language: pt
# encoding: utf-8

@planets
Funcionalidade: GET

    @get_planets
Cenario: Get - Consulta Planetas
    Quando faco uma solicitacao GET para o servico planets
    E armazeno a quantidade de planetas
    E faco uma solicitacao GET para o servico planets com quantidade incorreta
    Entao o codigo de resposta HTTP deve ser igual 404
    E sera exibido a mensagem "Not found" 