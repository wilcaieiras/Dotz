# Criar um projeto de automação com as ferramentas citadas (Cucumber + Ruby + Httparty).
- Enviar um GET para a API https://swapi.dev/api/films/ e armazenar o valor do campo “title” de cada elemento da estrutura “results” em variável e Validar o statuscode (Sucesso) da resposta da requisição.

- Enviar um GET para a API http://swapi.dev/api/planets/ armazenar o valor do campo “count”, enviar um novo GET para o mesmo endpoint passando um valor aleatório que seja superior ao armazenado. Validar o statuscode e a mensagem exibida.

## Pré-requisito

É necessário a instalação do Bundle:

```
gem install bundler
```

## Clonando o repositório

Clone o Repositório:

```
git clone https://github.com/wilcaieiras/Dotz.git
```

## Instalação das dependências

Após a clonagem do repositório digite:

```
bundle install
```

Isto fará a instalação das dependências necessárias para a execução dos testes.

## Execução dos Testes

Para executar os testes abra uma nova aba no terminal e digite:

```
cucumber
```

## Validações no Postman

As validações feitas no Postman estão na pasta Dotz\log